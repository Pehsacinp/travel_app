import 'package:meta/meta.dart';

part 'login_event.dart';
part 'login_state.dart';
/*
class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginInitial()) {
    late LoginRepositoryImpl repo;

    on<LoginEvent>((event, emit) {
      emit(LoginLoading());
    });

    on<LoginInitialEvent>((event, emit) async {
      repo = LoginRepositoryImpl();
      final x = await repo.getLogin(
          email: event.email,
          password: event.password,
          remember: event.remember);
      x.fold((l) {
        emit(LoginError());
      }, (r) {
        emit(LoginDone(loginModel: r));
      });
      await Future.delayed(Duration(milliseconds: 300), () {});
      emit(LoginInitial());
    });
  }
}
*/