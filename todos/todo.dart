class Todo {
  String title;
  String? description;
  var isCompleted = false;

  Todo(this.title, [this.description]);

  void toggleCompleted() => isCompleted = !isCompleted;

  void displayTodo() => print(''' 
      Title: $title
      Description: ${description ?? 'N/A'}
      Completed: ${isCompleted ? 'Yes' : 'No'}
    ''');
}
