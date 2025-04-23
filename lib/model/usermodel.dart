class UserModel {
  final int? id;
  final String username;
  final String fullname;
  final String email;
  final String password;
  final String phone;
  final String address;
  final DateTime? birthDate;
  final String? gender;

  UserModel({
    this.id,
    required this.username,
    required this.fullname,
    required this.email,
    required this.password,
    required this.phone,
    required this.address,
    this.birthDate,
    this.gender,
  });

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'username': username,
      'fullname': fullname,
      'email': email,
      'password': password,
      'phone': phone,
      'address': address,
      'birth_date': birthDate?.toIso8601String(),
      'gender': gender,
    };
  }

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      id: json['id'],
      username: json['username'],
      fullname: json['fullname'],
      email: json['email'],
      password: json['password'],
      phone: json['phone'],
      address: json['address'],
      birthDate: json['birth_date'] != null
          ? DateTime.parse(json['birth_date'])
          : null,
      gender: json['gender'],
    );
  }
}
