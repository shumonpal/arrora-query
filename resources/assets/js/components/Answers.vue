<template>
    <div>
        <div class="row">
            <div class="col-md-12">
                <div class="mt-4" v-cloak>
                    <h2>{{ title }}</h2>

                    <hr>
                    <answer @deleted="remove(index)" v-for="(answer, index) in answers" :answer="answer" :key="answer.id"></answer>                  
                    
                    <div v-if="nextUrl" class="text-center mt-3">
                        <button @click="fatch(nextUrl)" class="btn btn-outline-secondary">Load more answers</button>
                    </div>
                    
                </div>
            </div>
        </div>
        <create-answer :questionid="question.id" @addToParent="add"></create-answer>
    </div>
</template>

<script>
import Answer from "./Answer.vue";
import CreateAnswer from "./CreateAnswer.vue";

export default {
    props:['question'],

    components:{ Answer, CreateAnswer },

    data(){
        return{
            count: this.question.answers_count,
            questionId: this.question.id,
            answers: [],
            nextUrl: null
        }
    },

    created(){
        this.fatch('/questions/'+this.questionId+'/answers')
    },

    methods:{
        fatch(url){
            axios.get(url)
            .then(({data})=>{
                this.answers.push(...data.data);
                this.nextUrl = data.next_page_url;
            })
        },
         remove(index){
            this.answers.splice(index, 1);
            this.count--;
            this.$toast.success("The answer has been deleted", 'Success!', {timeout:3000})
                       
         },
         add(answer){
             this.answers.push(answer);
             this.count++;
         }
    },

    computed: {
        title(){
            return this.count+""+ (this.count < 1 ? ' Answer' : ' Answers');
        },

       
    }

    

}
</script>