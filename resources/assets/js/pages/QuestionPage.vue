<template>
    <div class="col-md-9">
        <question :question="question"></question>
        <answers v-if="question.answers_count > 0" :question="question"></answers>
    </div>
</template>

<script>
import Question from "../components/Question.vue";
import Answers from "../components/Answers.vue";

export default {

    props:['question'],

    components: {
        Question,
        Answers
    }
}
</script>