part of 'login_bloc.dart';

@immutable
abstract class LoginEvent {}

class LoginInitialEvent implements LoginEvent {
  final String? email;
  final String? password;
  final bool? remember;
  LoginInitialEvent({this.email, this.password, this.remember});
}
