<template>
     <div class="row mb-5">
        <div class="col-md-12">                            
            <div class="d-flex align-items-center">
                <h1>{{ title }}</h1>
                <div class="ml-auto">
                    <a href="/questions" class="btn btn-outline-secondary">Back to all Questions</a>
                </div>
            </div>   

            <hr>

            <div class="media">
            
            <vote :model="question" name="question"></vote>
            
                <div class="media-body">
                    <div v-html="questionBody" class="mb-3"></div>
                    <div class="row">
                        <div class="col-4"></div>
                        <div class="col-4"></div>
                        <div class="col-4">
                            <user-info :model="question" label="Asked"></user-info>
                        </div>
                    </div>
                </div>
            </div>                
        </div>
    </div>
</template>

<script>
export default {
    
    props: ['question'],

    data(){
        return {
            title:  this.question.title,
            questionBody:  this.question.body
        }
    }
}
</script>