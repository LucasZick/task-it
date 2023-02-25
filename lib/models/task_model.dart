class Task {
  int id;
  String name;
  String group;
  bool done;

  Task(this.id, this.name, this.group, this.done);

  void changeStatus() {
    done = !done;
  }

  void changeName(newName) {
    name = newName;
  }
}
