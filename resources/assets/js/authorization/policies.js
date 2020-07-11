export default {
    modify(user, model){
        return user.id === model.user_id;
    },

    accept(user, question){
        //return "hello";
        return user.id === question.user_id;
    },

    delete(user, answer){
        return user.id === model.user_id;
    }
}