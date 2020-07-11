<template>
    <div class="row mt-4">
        <div class="col-md-12">
            <div class="card">
                <div class="card-body">
                    <div class="card-title">
                        <h3>Your Answer</h3>
                    </div>
                    <hr>
                    <form @submit.prevent="create">
                        <div class="form-group">
                            <textarea class="form-control" rows="7" name="body" v-model="body"></textarea>
                        </div>
                        <div class="form-group">
                            <button type="submit" class="btn btn-lg btn-outline-primary" :disabled="isValid">Submit</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</template>

<script>
export default {
    props: ['questionid'],

    data(){
        return {
            signedIn: window.Auth.signedIn,
            body: ""
        }
    },

    computed: {
        isValid(){
            return !this.signedIn || this.body.length < 15; 
        }
    },

    methods: {
        create(){
            axios.post('/questions/'+this.questionid+'/answers', {
                body: this.body
            })
            .then((res) => {
                this.$toast.success(res.data.message, "Success", {
                    timeout: 2000,
                    position: 'bottomLeft'
                });
                this.body = ''
                this.$emit('addToParent', res.data.answer)
            })
            .catch((error) => {
                console.log(error)
                this.$toast.warning(error.response.data.errors.body, 'warning', {
                    timeout: 2000,
                })
            })
        }
    }
}
</script>