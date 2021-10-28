import 'package:first_ui/screen/sign_up_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';

import 'screen/main_screen.dart';
import 'widgets/login_fields.dart';
import 'widgets/login_page_button.dart';
import 'widgets/pm_logo.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Proxy Marketers',
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ;
    return Scaffold(
      body: SafeArea(
        child: LoginScreen(),
      ),
    );
  }
}

class LoginScreen extends StatefulWidget {
  const LoginScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController numberController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF25A449),
      child: SizedBox.expand(
        child: Column(
          children: [
            SizedBox(height: 100),
            KeyboardVisibilityBuilder(builder: (context, visibilty) {
              return visibilty ? Container() : PMLogo();
            }),
            SizedBox(height: 20),
            LoginFields(
              number: numberController,
              password: passwordController,
            ),
            SizedBox(height: 50),
            Buttons(
              firstBtn: 'Login',
              firstOnpressed: MainScreen(),
              secondBtn: 'Signup',
              secondOnpressed: SignUpScreen(),
            ),
          ],
        ),
      ),
    );
  }
}
