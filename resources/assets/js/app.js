
/**
 * First we will load all of this project's JavaScript dependencies which
 * includes Vue and other libraries. It is a great starting point when
 * building robust, powerful web applications using Vue and Laravel.
 */

require('./bootstrap');
require('./fontawesome');

window.Vue = require('vue');

import VueIziToast from 'vue-izitoast';
import 'izitoast/dist/css/iziToast.css';
import Authorize from './authorization/authorize';

Vue.use(VueIziToast);
Vue.use(Authorize);

/**
 * Next, we will create a fresh Vue application instance and attach it to
 * the page. Then, you may begin adding components to this application
 * or customize the JavaScript scaffolding to fit your unique needs.
 */

Vue.component('user-info', require('./components/Userinfo.vue'));
Vue.component('vote', require('./components/Vote.vue'));

Vue.component('questions', require('./components/Questions.vue'));
Vue.component('create-question', require('./components/CreateQuestion.vue'));
Vue.component('sidebar', require('./components/Sidebar.vue'));
Vue.component('question-page', require('./pages/QuestionPage.vue'));
// Vue.component('answers', require('./components/Answers.vue'));
// Vue.component('question', require('./components/Question.vue'));


const app = new Vue({
    el: '#app'
});
