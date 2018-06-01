Vue.component('todo-item', {
  props: ['todo'],
  template: '<li>{{ todo.text }}</li>'
})


var app = new Vue({
  el: '#app',
  data: {
    message: 'Bem vindo',
    profile: {
    	label_profile: 'Perfil',
    	label_tasks: 'Tarefas',
    	label_logout: 'Sair'
    },
    messages: {
    	label: 'Mensagens',
    	label_new_message: 'Nova mensagem',
    	label_inbox: 'Inbox',
    	label_trash: 'Lixeira'
    },
    settings: {
    	label: 'Configurações',
    	label_logout: 'Sair'
    }
  }
})