import 'dart:convert';

class SignupModel {
  final String? nickname;
  final String? email;
  final String? phone;
  final String? password;
  SignupModel({
    this.nickname,
    this.email,
    this.phone,
    this.password,
  });

  SignupModel copyWith({
    String? nickname,
    String? email,
    String? phone,
    String? password,
  }) {
    return SignupModel(
      nickname: nickname ?? this.nickname,
      email: email ?? this.email,
      phone: phone ?? this.phone,
      password: password ?? this.password,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'nickname': nickname,
      'email': email,
      'phone': phone,
      'password': password,
    };
  }

  factory SignupModel.fromMap(Map<String, dynamic> map) {
    return SignupModel(
      nickname: map['nickname'],
      email: map['email'],
      phone: map['phone'],
      password: map['password'],
    );
  }

  String toJson() => json.encode(toMap());

  factory SignupModel.fromJson(String source) =>
      SignupModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'SignupModel(nickname: $nickname, email: $email, phone: $phone, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is SignupModel &&
        other.nickname == nickname &&
        other.email == email &&
        other.phone == phone &&
        other.password == password;
  }

  @override
  int get hashCode {
    return nickname.hashCode ^
        email.hashCode ^
        phone.hashCode ^
        password.hashCode;
  }
}
