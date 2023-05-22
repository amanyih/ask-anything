import 'package:equatable/equatable.dart';

class Password extends Equatable{
  final String password;

  Password(this.password) {
    if (password.isEmpty) {
      throw Exception('Password can not be empty');
    }
    if (password.length < 8) {
      throw Exception('Password must be at least 8 characters');
    }
  }

  @override
  List<Object?> get props => [password];
}