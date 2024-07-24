part of 'register_bloc.dart';

@immutable
abstract class RegisterState {}

class RegisterInitial extends RegisterState {}

class RegisterLoading extends RegisterState {}

class RegisterDone extends RegisterState {
  final bool success;
  final String message;
  RegisterDone({required this.message, required this.success});
}

class RegisterError extends RegisterState {
  final String errorMessage;
  RegisterError({required this.errorMessage});
}
