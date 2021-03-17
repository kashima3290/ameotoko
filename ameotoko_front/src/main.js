import { createApp } from 'vue'
import App from './App.vue'
const app = createApp(App)

// import BootstrapVue from 'bootstrap-vue'
// app.use(BootstrapVue)
import 'bootstrap/dist/css/bootstrap.css'
import 'bootstrap-vue/dist/bootstrap-vue.css'

app.mount('#app')
