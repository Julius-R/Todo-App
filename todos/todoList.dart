import 'dart:math';

import '../helpers.dart';
import 'todo.dart';

class TodoList {
  List<Todo> todos = [];

  void createTodo() {
    var title = getUserInput(msg: 'Please enter a title', field: 'Title');
    var response = getUserInput(
        msg: 'Would you like to add a description? (y/n)', field: 'Response');
    if (response == 'y') {
      var description =
          getUserInput(msg: 'Please enter a description', field: 'Description');
      todos.add(Todo(title, description));
    } else {
      todos.add(Todo(title));
    }
  }

  void editTodo({required editType}) {
    var todo = this.selectTodo();
    switch (editType) {
      case 'delete':
        this.todos.remove(todo);
        break;
      case 'toggleCompleted':
        todo.toggleCompleted();
        break;
    }
  }

  Todo selectTodo() {
    this.todos.asMap().forEach((key, value) {
      print('[${key + 1}]:');
      value.displayTodo();
    });
    var choice = getUserInput(
        msg: 'Please choose item to edit', field: 'Response', valType: 'int');

    return this.todos.elementAt(choice - 1);
  }

  void displayTodos() {
    for (final todo in todos) {
      todo.displayTodo();
    }
  }
}
