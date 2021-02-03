part of "models.dart";

enum TodoListSettings { edit_color, delete }
class TaskObject {
  String date;
  String task;
  String description;
  bool completed;
  List<dynamic> tags;

  TaskObject({String task, String date, List tags, String description, bool completed}) {
    this.task = task ?? "";
    this.date = date ?? "";
    this.completed = completed;
    this.tags = tags ?? [];
    this.description = this.description ?? "";
  }

  void setComplete(bool value) {
    completed = value;
  }

  isCompleted() => completed;
}
