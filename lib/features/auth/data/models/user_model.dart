import '../../domain/entities/user.dart';

class UserModel extends User {
  const UserModel({required super.id, required super.name});

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      UserModel(id: json["id"] as int, name: json['name']);

  Map<String, dynamic> toJson() {
    return {"id": id, "name": name};
  }
}
