var app = app || {};

(function () {
  'use strict';
  
  var Todo = Backbone.Model.extend({
    defaults: {
      title: '',
      completed: false
    },
    toggle: function() {
      if (this.get('completed'))
        this.save('completed', false);
      else
        this.save('completed', true);
    },
    validate: function(attrs) {
      if (!attrs.title) {
        return "Please provide the title!";
      }
    }
  });

  app.Todo = Todo;
}())

  
