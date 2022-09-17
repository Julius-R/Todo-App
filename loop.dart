import 'helpers.dart';
import 'todos/todoList.dart';

class Loop {
  bool continueLoop = true;
  TodoList todoList;
  final options = {
    1: 'Add Todo',
    2: 'View Todo',
    3: 'Delete Todo',
    4: 'Mark Todo Complete',
    5: 'Exit'
  };

  Loop(this.todoList);

  void start() {
    while (this.continueLoop) {
      var number = selectOption();
      switch (number) {
        case 1:
          this.todoList.createTodo();
          break;
        case 2:
          this.todoList.displayTodos();
          break;
        case 3:
          this.todoList.editTodo(editType: 'toggleCompleted');
          break;
        case 4:
          this.stop();
      }
    }
  }

  int selectOption() {
    var response = getUserInput(msg: '''
    Please Select From the Following Options:
    [1] Add Todo [2] View Todos [3] Mark Todo Complete [4] Exit
''', field: 'Response', valType: 'int');

    return response;
  }

  void stop() {
    this.continueLoop = false;
  }
}
