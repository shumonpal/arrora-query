<template>
    <div v-if="canAccepted">
        <a title="Mark this answer as best answer" 
            :class="classes"
            @click.prevent="acceptAnswer">
            <i class="fas fa-check fa-2x"></i>                                    
        </a>
        
    </div>

    <div v-else>
        
        <a v-if="isBest" title="The question owner accepted this answer as best answer"
            :class="classes" @click.prevent="bestAnswer"
            >
            <i class="fas fa-check fa-2x"></i>                                    
        </a>
    </div>
</template>

<script>

import EventBus  from "../event-bus";

export default {
    props: ['answer', 'question'],

    data(){
        return{
            is_best: this.answer.is_best,
            url: '/answers/' + this.answer.id + '/accept',
            id: this.answer.id
        }
    },

    computed: {
        canAccepted(){
            return this.authorize('accept', this.question);
        }, 

        isBest(){
            return !this.canAccepted && this.is_best;
        },

        classes(){
            return [
                'mt-2',
                this.is_best ? 'vote-accepted' : ''
            ];
        }
    },

    created(){
        EventBus.$on('accepted', (id) => {
            this.is_best = (id == this.id)
        });
    },

    methods: {
        acceptAnswer () {
            axios.post(this.url)
            .then(response => {
                this.$toast.success(response.data.message, 'Success!', {timeout:2000})
                this.is_best = true;
                EventBus.$emit('accepted', this.id);
            })
            .catch(error => {
                this.$toast.error('Something went to be wrong', 'Warning!', {timeout:3000})
            });
        }, 

        bestAnswer () {
            alert('bestAnswer');
        }
    }
    
}
</script>