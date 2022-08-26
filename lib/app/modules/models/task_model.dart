// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Task {
  String? task;
  String? group;
  String? status;
  String? date;
  String? user;
  Task({
    this.task,
    this.group,
    this.status,
    this.date,
    this.user,
  });

  Task copyWith({
    String? task,
    String? group,
    String? status,
    String? date,
    String? user,
  }) {
    return Task(
      task: task ?? this.task,
      group: group ?? this.group,
      status: status ?? this.status,
      date: date ?? this.date,
      user: user ?? this.user,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'task': task,
      'group': group,
      'status': status,
      'date': date,
      'user': user,
    };
  }

  factory Task.fromMap(Map<String, dynamic> map) {
    return Task(
      task: map['task'] != null ? map['task'] as String : null,
      group: map['group'] != null ? map['group'] as String : null,
      status: map['status'] != null ? map['status'] as String : null,
      date: map['date'] != null ? map['date'] as String : null,
      user: map['user'] != null ? map['user'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Task.fromJson(String source) => Task.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Task(task: $task, group: $group, status: $status, date: $date, user: $user)';
  }

  @override
  bool operator ==(covariant Task other) {
    if (identical(this, other)) return true;
  
    return 
      other.task == task &&
      other.group == group &&
      other.status == status &&
      other.date == date &&
      other.user == user;
  }

  @override
  int get hashCode {
    return task.hashCode ^
      group.hashCode ^
      status.hashCode ^
      date.hashCode ^
      user.hashCode;
  }
}
