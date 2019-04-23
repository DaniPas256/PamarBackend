
/**
 * First we will load all of this project's JavaScript dependencies which
 * include Vue and Vue Resource. This gives a great starting point for
 * building robust, powerful web applications using Vue and Laravel.
 */

import axios from 'axios';

import fileBrowser from './components/FileBrowser.vue';
import dropZone from './components/Dropzone.vue';
import gallery_image from './components/gallery_image.vue'
import tabs from './components/tabs.vue'
import InputList from './components/InputList.vue'

require('./bootstrap');

require('../../vendor/talvbansal/media-manager/js/media-manager');
/**
 * Next, we will create a fresh Vue application instance and attach it to
 * the page. Then, you may begin adding components to this application
 * or customize the JavaScript scaffolding to fit your unique needs.
 */

// Vue.component('file-browser', require('./components/FileBrowser.vue'));

const global = new Vue({ data: { loading: false } })
// make a plugin to add it to Vue
const GlobalPlugin = {
    install(Vue) {
        Vue.prototype.$global = global
    }
}

Vue.use(GlobalPlugin)

const app = new Vue({
    el: '#app',
    components: {
        'file-browser': fileBrowser,
        'drop-zone': dropZone,
        tabs,
        InputList,
        'gallery-image': gallery_image
    },
    created: function () {
        axios.get(window.location.origin + '/translates').then(response => {
            this.languages = response.data;
        })
    },
    data: {
        showMediaManager: false,
        languages: []
    }
});
