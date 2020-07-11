<template>
    <div class="media post">
        <div class="d-flex flex-column counters">
            <div class="vote">
                <strong>{{ votes_count }}</strong> vote(s)
            </div>                            
            <div class="status" :class="answerStatus">
                <strong>{{ answers_count }}</strong> answer(s)
            </div>                            
            <div class="view">
                {{ views }} view(s)
            </div>                            
        </div>

        <div class="media-body">
            <div  v-if="editing">
                <form @submit.prevent="update">
                    <div class="form-group">
                        <input class="form-control"   v-model="title">
                        
                        <div class="text-danger" v-if="invalid">
                            <strong v-html="errorHtml"></strong>
                        </div>
                    </div>
                    <div class="form-group">
                        <textarea class="form-control" :class="{isinvalid: invalid}" rows="7" v-model="question_body"></textarea>
                        
                        <div class="text-danger" v-if="invalid">
                            <strong v-html="errorHtml"></strong>
                        </div>
                    </div>
                    
                    <div class="form-group">
                        <button type="submit" class="btn btn-lg btn-outline-primary" :disabled="isInvalid">Update</button>
                        <button type="button" @click="cancel" class="btn btn-lg btn-outline-primary">Cancel</button>
                    </div>
                </form>
            </div> 

            <div  v-else>
                <div class="d-flex align-items-center">
                    <h3 class="mt-0"><a :href="url">{{ title }}</a></h3>                
                </div>
                <p class="lead">
                    Asked by 
                    <a :href="user_url">{{ user_name }}</a> 
                    <small class="text-muted">{{ created_date }}</small>
                    <span class="ml-auto pull-right">
                        <a v-if="authorize('modify', question)" @click="edit" class="btn btn-sm btn-outline-info">Edit</a>
                        <a v-if="authorize('modify', question) && question.answers_count < 1" @click.prevent="destroy" class="btn btn-sm btn-outline-danger" >Delete</a>
                    </span>
                </p>
                <div class="excerpt">{{ question_body }}</div>
            </div>            

        </div> 
                              
    </div>
</template>

<script>
export default {
    
    props: ['question'],

    data(){
        return {
            votes_count: this.question.votes_count,
            answers_count: this.question.answers_count,
            status: this.question.status,
            views: this.question.views,
            url: this.question.url,
            title: this.question.title,
            user_url: this.question.user.url,
            user_name: this.question.user.name,
            created_date: this.question.created_date,
            question_body: this.question.excerpt,
            id: this.question.id,

            editing: false,
            beforeEditCache: '',
            invalid: false,
        }

    },

    computed: {
        answerStatus(){
            return this.status;
        },
        isInvalid(){
            return this.title.length < 8 || this.question_body.length < 15
        },

        endpoint(){
            return '/questions/'+this.id;
        },
    },

    methods:{

        edit(){
            //alert("edit")
            this.beforeEditCache = {
                title: this.title,
                question_body: this.question_body,
            };
            this.editing = true;
            this.invalid = false;
            this.errorHtml = '';
        },

        cancel(){
            this.title = this.beforeEditCache.title
            this.question_body = this.beforeEditCache.question_body
            this.editing = false;
        },
        
        update(){
            axios.patch(this.endpoint, {
                body: this.question_body,
                title: this.title
            })
            .then((res) => {
                this.$toast.success("response.data.message", 'Success!', {timeout:3000})
                this.editing = false;
            })
            .catch(error => {
                this.invalid = true;
                //this.errorHtml = error.response.data.errors.body;
                console.log(error)
            });
        },

        destroy(){
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
                        
                        axios.delete(this.endpoint)
                            .then(response => {
                                this.$emit('deleted')
                                $(this.$el).fadeOut(500, () => {
                                    this.$toast.success(response.data.message, 'Success!', {timeout:3000})
                                });
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
        }

    }
}
</script>