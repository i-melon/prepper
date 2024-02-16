import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:preper_flutter/services/firebase_auth_service.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final FirebaseAuthService _auth = FirebaseAuthService();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  // TextEditingController _passwordRepidController = TextEditingController();

  void _signUp() async {
    String email = _emailController.text;
    String password = _passwordController.text;
    // String passwordRepid = _passwordRepidController.text;

    User? user = await _auth.SignUpWithEmailAndPassword(email, password);

    if (user != null) {
      print('sucess');
    } else {
      print('error');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _emailController,
              decoration: InputDecoration(labelText: 'email'),
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: _passwordController,
              obscureText: true,
              decoration: InputDecoration(labelText: 'Пароль'),
            ),
            // SizedBox(height: 16.0),
            // TextField(
            //   controller: _passwordRepidController,
            //   obscureText: true,
            //   decoration: InputDecoration(labelText: 'Повторите пароль'),
            // ),
            SizedBox(height: 32.0),
            ElevatedButton(
              onPressed: _signUp,
              child: Text('Запегистрироваться'),
            ),
            ElevatedButton(
              onPressed: () => context.go('/'),
              child: const Text('назад'),
            ),
          ],
        ),
      ),
    );
  }
}
