import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travel_app/src/features/splash/presentation/bloc/splash_cubit.dart';

class AppBlocProviders extends StatelessWidget {
  final Widget child;
  AppBlocProviders({required this.child});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(providers: [
      BlocProvider(
        create: (context) => SplashCubit(),
      ),
    ], child: child);
  }
}
