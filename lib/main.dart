import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:preper_flutter/router.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

// ...

void main() async {
  WidgetsFlutterBinding
      .ensureInitialized(); // Обязательно вызовите этот метод перед инициализацией Firebase
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MaterialApp.router(
    routerConfig: router,
  ));
}
