import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

@RoutePage(name: 'LoginRoute')
class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Text('a'),
        ],
      ),
    );
  }
}
