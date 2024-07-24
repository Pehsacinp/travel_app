part of 'register_bloc.dart';

@immutable
abstract class RegisterEvent {}

class RegisterInitialEvent implements RegisterEvent {
  final String? firstName;
  final String? lastName;
  final String? email;
  final String? password;
  RegisterInitialEvent(
      {this.firstName, this.lastName, this.email, this.password});
}
