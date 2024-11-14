class TodoModel {
  List<Todos>? todosList;
  int? total;
  int? skip;
  int? limit;

  TodoModel(Map<String, dynamic> json) {
    total = json["total"];
    skip = json["skip"];
    limit = json["limit"];

    todosList = [];
    if (json["todos"] != null) {
      json["todos"].forEach((mapObject) {
        Todos data = Todos(mapObject);
        todosList!.add(data);
      });
    }
  }
}

class Todos {
  int? id;
  String? todo;
  bool? completed;
  int? userId;
  Todos(Map<String, dynamic> json) {
    id = json["id"];
    todo = json["todo"];
    completed = json["completed"];
    userId = json["userId"];
  }
}
