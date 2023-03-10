import 'package:json_annotation/json_annotation.dart';

part 'todo_model.g.dart';

enum Priority {
  high,
  medium,
  low
}

@JsonSerializable()
class TodoModel {
  TodoModel({
    required this.title,
    required this.description,
    required this.dueTime,
    required this.priority,
  });
  String title;
  String description;
  String dueTime;
  Priority priority;

  factory TodoModel.fromJson(Map<String, dynamic> json) => _$TodoModelFromJson(json);

  Map<String, dynamic> toJson() => _$TodoModelToJson(this);
}