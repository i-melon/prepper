import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:preper_flutter/src/pages/auth_page.dart';
import 'package:preper_flutter/src/pages/home_page.dart';
import 'package:preper_flutter/src/pages/sign_in_page.dart';

final GoRouter router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return AuthPage();
      },
      routes: <RouteBase>[
        GoRoute(
          path: 'auth',
          builder: (BuildContext context, GoRouterState state) {
            return AuthPage();
          },
        ),
        GoRoute(
          path: 'sign',
          builder: (BuildContext context, GoRouterState state) {
            return SignInPage();
          },
        ),
      ],
    ),
  ],
);
