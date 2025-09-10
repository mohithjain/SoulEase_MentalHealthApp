import 'dart:convert';

class ToDo {
  String name;
  String title;
  String description;

  ToDo({
    required this.name,
    required this.title,
    required this.description,
  });

  // Convert a ToDo instance to a Map
  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'title': title,
      'description': description,
    };
  }

  // Create a ToDo instance from a Map
  factory ToDo.fromJson(Map<String, dynamic> json) {
    return ToDo(
      name: json['name'],
      title: json['title'],
      description: json['description'],
    );
  }

  // Convert a ToDo instance to a JSON string
  String toJsonString() {
    return jsonEncode(toJson());
  }

  // Create a ToDo instance from a JSON string
  factory ToDo.fromJsonString(String jsonString) {
    return ToDo.fromJson(jsonDecode(jsonString));
  }
}
