// To parse this JSON data, do
//
//     final kelasSiswa = kelasSiswaFromJson(jsonString);

import 'dart:convert';

List<KelasSiswa> kelasSiswaFromJson(String str) =>
    List<KelasSiswa>.from(json.decode(str).map((x) => KelasSiswa.fromJson(x)));

String kelasSiswaToJson(List<KelasSiswa> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class KelasSiswa {
  int id;
  int userId;
  int kelasId;
  DateTime createdAt;
  DateTime updatedAt;
  dynamic deletedAt;
  int tasId;
  int nis;
  Users users;

  KelasSiswa({
    required this.id,
    required this.userId,
    required this.kelasId,
    required this.createdAt,
    required this.updatedAt,
    required this.deletedAt,
    required this.tasId,
    required this.nis,
    required this.users,
  });

  factory KelasSiswa.fromJson(Map<String, dynamic> json) => KelasSiswa(
        id: json["id"],
        userId: json["user_id"],
        kelasId: json["kelas_id"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        deletedAt: json["deleted_at"],
        tasId: json["tas_id"],
        nis: json["nis"],
        users: Users.fromJson(json["users"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "user_id": userId,
        "kelas_id": kelasId,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "deleted_at": deletedAt,
        "tas_id": tasId,
        "nis": nis,
        "users": users.toJson(),
      };

  static List<KelasSiswa> fromJsonList(List list) {
    if (list.length == 0) {
      return [];
    }
    return list.map((item) => KelasSiswa.fromJson(item)).toList();
  }

  String userAsString() {
    return '${this.users.name} -- ${this.nis}';
  }
}

class Users {
  int id;
  String username;
  String name;
  String email;
  int role;
  int subRole;
  int tatib;
  String ket;
  int nis;
  String status;
  dynamic nip;
  dynamic createdAt;
  DateTime updatedAt;
  dynamic deletedAt;

  Users({
    required this.id,
    required this.username,
    required this.name,
    required this.email,
    required this.role,
    required this.subRole,
    required this.tatib,
    required this.ket,
    required this.nis,
    required this.status,
    required this.nip,
    required this.createdAt,
    required this.updatedAt,
    required this.deletedAt,
  });

  factory Users.fromJson(Map<String, dynamic> json) => Users(
        id: json["id"],
        username: json["username"],
        name: json["name"],
        email: json["email"],
        role: json["role"],
        subRole: json["subRole"],
        tatib: json["tatib"],
        ket: json["ket"],
        nis: json["nis"],
        status: json["status"],
        nip: json["nip"],
        createdAt: json["created_at"],
        updatedAt: DateTime.parse(json["updated_at"]),
        deletedAt: json["deleted_at"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "username": username,
        "name": name,
        "email": email,
        "role": role,
        "subRole": subRole,
        "tatib": tatib,
        "ket": ket,
        "nis": nis,
        "status": status,
        "nip": nip,
        "created_at": createdAt,
        "updated_at": updatedAt.toIso8601String(),
        "deleted_at": deletedAt,
      };
}
