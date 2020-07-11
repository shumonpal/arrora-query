
import Policies from './policies';

export default {
    install(Vue, options){
        Vue.prototype.authorize = function (polices, model) {
            if (! window.Auth.signedIn ){
                 return false;
            }
        
            if(typeof polices == 'string' && typeof model == 'object'){
                const user = window.Auth.user;
        
                return Policies[polices](user, model);
                
            }
        };


    }
}


