import 'package:meta/meta.dart';

part 'forgot_password_event.dart';
part 'forgot_password_state.dart';
/*
class ForgotPasswordBloc
    extends Bloc<ForgotPasswordEvent, ForgotPasswordState> {
  ForgotPasswordBloc() : super(ForgotPasswordInitial()) {
    late LoginRepositoryImpl repo;

    on<ForgotPasswordEvent>((event, emit) {
      emit(ForgotPasswordLoading());
    });

    on<ForgotPasswordInitialEvent>((event, emit) async {
      repo = LoginRepositoryImpl();
      final x = await repo.forgotPassword(email: event.email);
      x.fold((l) {
        emit(ForgotPasswordError(l.message));
      }, (r) {
        emit(ForgotPasswordSuccess(r));
      });
    });
  }
}
*/