
<template>
    <div class="media post">
        <vote :model="answer" name="answer"></vote>
        
        <div class="media-body">
            <form v-if="editing" @submit.prevent="update">
                <div class="form-group">
                    <textarea class="form-control" :class="{isinvalid: invalid}" rows="7" v-model="bodyHtml"></textarea>
                    
                    <div class="text-danger" v-if="invalid">
                        <strong v-html="errorHtml"></strong>
                    </div>
                </div>
                <div class="form-group">
                    <button type="submit" class="btn btn-lg btn-outline-primary" :disabled="isInvalid">Update</button>
                    <button type="button" @click="cancel" class="btn btn-lg btn-outline-primary">Cancel</button>
                </div>
            </form>
            <div v-else>
                <div  class="mb-2" v-html="bodyHtml"></div>
                <div class="row">
                    <div class="col-4">
                        <div class="ml-auto">
                            <a v-if="authorize('modify', answer)" @click="edit" class="btn btn-sm btn-outline-info">Edit</a>
                            <a v-if="authorize('modify', answer)" class="btn btn-sm btn-outline-danger" @click.prevent="destroy" >Delete</a>
                        </div>
                    </div>
                    <div class="col-4"></div>
                    <div class="col-4">
                        <user-info :model="answer" label="Asked"></user-info>
                    </div>
                </div> 
            </div>                           
        </div>
    </div>
</template>

<script>

export default {
    props: ['answer'],

    data() {
        return {
            editing: false,
            body: this.answer.body,
            bodyHtml: this.answer.body_html,
            beforeEditCache: null,
            invalid: false,
            id: this.answer.id,
            questionId: this.answer.question_id
        }
    },

    computed: {
        isInvalid () {
            return this.bodyHtml.length < 10;
        },

        endpointUpdate(){
            return '/questions/'+this.questionId+'/answers/'+this.id
        }
    },

    methods:{
        edit(){
            this.beforeEditCache = this.bodyHtml;
            this.invalid = false;
            this.errorHtml = '';

            this.editing = true
        },

        cancel(){
            this.bodyHtml = this.beforeEditCache;
            this.editing = false
        },

        update(){
            axios.patch(this.endpointUpdate, {
                body: this.bodyHtml,
            })
            .then(response => {
                this.editing = false;
                this.body = response.data.body_html;
            })
            .catch(error => {
                this.invalid = true;
                this.errorHtml = error.response.data.errors.body;
            });
        },

        destroy(){
            //var url = event.currentTarget.href;

            this.$toast.question('Are you sure about that?', 'Worning', {
                timeout: 20000,
                close: false,
                overlay: true,
                displayMode: 'once',
                id: 'question',
                zindex: 999,
                position: 'center',
                buttons: [
                    ['<button><b>YES</b></button>', (instance, toast) => {
                        
                        axios.delete(this.endpointUpdate)
                            .then(response => {
                                this.$emit('deleted')
                                // $(this.$el).fadeOut(500, () => {
                                //     this.$toast.success(response.data.message, 'Success!', {timeout:3000})
                                // });
                            })
                            .catch(error => {
                                this.$toast.error(error.response.data.errors.body, 'Warning!', {timeout:3000})
                            });

                        instance.hide({ transitionOut: 'fadeOut' }, toast, 'button');                        
            
                    }, true],
                    ['<button>NO</button>', function (instance, toast) {
            
                        instance.hide({ transitionOut: 'fadeOut' }, toast, 'button');
            
                    }],
                ],
            });

            
        },
    },

    
}
</script>