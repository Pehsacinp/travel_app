import 'package:meta/meta.dart';

part 'register_event.dart';
part 'register_state.dart';
/*
class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  RegisterBloc() : super(RegisterInitial()) {
    late LoginRepositoryImpl repo;
    on<RegisterEvent>((event, emit) {
      emit(RegisterLoading());
    });

    on<RegisterInitialEvent>((event, emit) async {
      repo = LoginRepositoryImpl();
      final x = await repo.registerUser(
          firstName: event.firstName,
          lastName: event.lastName,
          email: event.email,
          password: event.password);
      x.fold((l) {
        emit(RegisterError(errorMessage: l.value2));
      }, (r) {
        emit(RegisterDone(success: r.value1, message: r.value2));
      });

      await Future.delayed(Duration(milliseconds: 300), () {});
      emit(RegisterInitial());
    });
  }
}
*/