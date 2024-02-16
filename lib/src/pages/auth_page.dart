import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AuthPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<AuthPage> {
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  void _login() {
    String username = _usernameController.text;
    String password = _passwordController.text;

    // Ваша логика проверки учетных данных может быть добавлена здесь

    // Пример простой проверки
    if (username == 'example' && password == 'password') {
      // Успешный вход, добавьте соответствующую навигацию
      print('Успешный вход!');
    } else {
      // Неправильные учетные данные, можно добавить обработку ошибки
      print('Неправильные учетные данные!');
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
              controller: _usernameController,
              decoration: InputDecoration(labelText: 'Имя пользователя'),
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: _passwordController,
              obscureText: true,
              decoration: InputDecoration(labelText: 'Пароль'),
            ),
            SizedBox(height: 32.0),
            ElevatedButton(
              onPressed: _login,
              child: Text('Войти'),
            ),
            ElevatedButton(
              onPressed: () => context.go('/sign'),
              child: const Text('sign In'),
            ),
          ],
        ),
      ),
    );
  }
}
