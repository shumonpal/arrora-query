<template>
    <div class="card">
        <div class="card-header">
            <div class="d-flex align-items-center">
                <h2>Ask Question</h2>
            </div>
            
        </div>

        <div class="card-body">
            <form @click.prevent="create">
                <div class="form-group">
                    <label for="question-title">Question Title</label>
                    <input type="text" name="title" v-model="title" id="question-title" class="form-control">
                    <div class="invalid-feedback">
                        <strong></strong>
                    </div>
                </div>
                <div class="form-group">
                    <label for="question-body">Explain you question</label>
                    <textarea name="body" id="question-body" rows="10" v-model="body" class="form-control"></textarea>
                    <div class="invalid-feedback">
                        <strong></strong>
                    </div>
                </div>
                <div class="form-group">
                    <button type="submit" class="btn btn-outline-primary btn-lg">Submit</button>
                </div>
            </form>
        </div>
    </div>
</template>

<script>
export default {
    methods: {        
        create(){
            axios.post('/questions', {
                title: this.title,
                body: this.body,
            })
            .then(response => {
                this.$toast.success(response.data.message, 'Success!', {timeout:3000})
            })
            .catch(error => {
                this.$toast.error(error.response.data.errors.body, 'Warning!', {timeout:3000})
            });
        }
    }
}
</script>