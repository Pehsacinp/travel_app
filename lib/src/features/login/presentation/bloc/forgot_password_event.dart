part of 'forgot_password_bloc.dart';

@immutable
abstract class ForgotPasswordEvent {}

class ForgotPasswordInitialEvent extends ForgotPasswordEvent {
  final String email;

  ForgotPasswordInitialEvent({required this.email});
}
