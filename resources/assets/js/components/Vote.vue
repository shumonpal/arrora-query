<template>
    <div class="d-fex flex-column vote-controls">
        <a @click="vote(1)" :title="title('up')" class="vote-up" :class="classes">
            <i class="fas fa-caret-up fa-3x"></i>
        </a>
        

        <span class="votes-count">{{ vote_count }}</span>

        <a @click="vote(-1)" :title="title('down')" class="vote-down" >
            <i class="fas fa-caret-down fa-3x"></i>
        </a>
        
            <favorite v-if="name === 'question'" :question="model"></favorite>
            <accept v-else :answer="model" :question="model.question" ></accept>
    </div>
</template>

<script>
    import Favorite from "./Favorite.vue";
    import Accept  from "./Accept.vue";
export default {
    props: ['name', 'model'],

    data(){
        return {
            signedIn: window.Auth.signedIn,
            vote_count: this.model.votes_count
        }        
    },

    components: {
        Favorite,
        Accept
    },

    computed: {
        classes(){
            return this.signedIn ? '' : 'off'
        },

        endpoint(){
            return '/'+this.name+'s/'+this.model.id+'/vote'
        }

    },

    methods: {
        title(type){
            let titles = {
                up: "This " + type+ " vote is useful",
                down: "This " + type+ " vote is not useful",
            }
           return titles[type]
        },

        vote(vote){
            if (! this.signedIn) {
                this.$toast.warning('Please login to vote', "Warning", {
                    timeout: 2000,
                    position: 'bottomLeft'
                });
            }
            axios.post(this.endpoint, {vote})
            .then((res) => {

                this.$toast.success(res.data.message, "Success", {
                    timeout: 2000,
                    position: 'bottomLeft'
                });
                this.vote_count = res.data.vote_count
            });
            
        },

    }
}
</script>