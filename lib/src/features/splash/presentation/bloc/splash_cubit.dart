import 'package:flutter_bloc/flutter_bloc.dart';

class SplashCubit extends Cubit<int> {
  SplashCubit() : super(0);
  void changePage(int index) {
    emit(index);
  }
}
