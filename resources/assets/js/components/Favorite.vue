<template>
    <a title="Click to mark as favorite question (Click again to undo)" 
        @click.prevent="tuggleFavorite"
        :class="classes" >
        <i class="fas fa-star fa-2x"></i>
        <span class="favorites-count">{{ favoriteCount }}</span>
    </a>
</template>

<script>
export default {
    props: ['question'],

    data(){
        return {
            id: this.question.id,
            isFavorite: this.question.is_favorited,
            favoriteCount: this.question.favorites_count,
            signedIn: window.Auth.signedIn,
        }
    },

    computed: {
        classes(){
            return [
                'favorite', 'mt-2',
                ! this.signedIn ? 'off' : ( this.isFavorite ? 'favorited' : '' )
            ]
        }, 
        
        
    },

    methods: {
        
        tuggleFavorite(){
            if (! this.signedIn) {
                this.$toast.error('Please sign in to do this action', 'Warning!', {timeout:3000}); 
                return;               
            }
            var url = '/questions/' + this.id + '/favorites';
            this.isFavorite ? this.destroy(url) : this.create(url);
            //alert(url)
        },

        create(url) {
            axios.post(url).then( response => {
                this.favoriteCount++;
                this.isFavorite = true;
                this.$toast.success('You favorite this question', 'Success!', {timeout:3000});
            }).catch();
        },

        destroy(url) {
            axios.delete(url).then( error => {
                this.favoriteCount--;
                this.isFavorite = false;
                this.$toast.success('You unfavorite this question', 'Success!', {timeout:3000});

            }).catch();
        }
    },
}
</script>