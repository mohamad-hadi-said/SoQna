// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'auth_bloc.dart';

abstract class AuthEvent extends Equatable {
  const AuthEvent();

  @override
  List<Object?> get props => [];
}

class GetUserEvent extends AuthEvent {}

class LogoutEvent extends AuthEvent {}

class IsAuthorizedEvent extends AuthEvent {}

class SignInEvent extends AuthEvent {
  final String username;
  final String password;

  const SignInEvent({
    required this.username,
    required this.password,
  });

  @override
  List<Object?> get props => [username, password];
}

class SignUpEvent extends AuthEvent {
  final String username;
  final String password;
  final String email;
  final String firstName;
  final String lastName;

  const SignUpEvent({
    required this.username,
    required this.password,
    required this.email,
    required this.firstName,
    required this.lastName  });

  @override
  List<Object> get props {
    return [
      username,
      password,
      email,
      firstName,
      lastName,
    ];
  }
}

class UpdateUserEvent extends AuthEvent {
  final int id;
  final String password;
  final String? username;
  final String? email;
  final String? firstName;
  final String? lastName;

  const UpdateUserEvent(
      {required this.id,
      required this.password,
      this.username,
      this.email,
      this.firstName,
      this.lastName});

  @override
  List<Object> get props {
    return [id, password];
  }
}
