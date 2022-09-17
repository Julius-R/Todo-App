import 'loop.dart';
import './todos/todoList.dart';

void main() {
  TodoList todoList = TodoList();
  var game = Loop(todoList);
  game.start();
  todoList = game.todoList;
}
