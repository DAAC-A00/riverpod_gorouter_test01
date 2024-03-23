// app_router.dart

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'counter_screen.dart';
import 'main_page.dart';
import 'detail_page.dart';

final GoRouter appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) => const MainPage(),
    ),
    GoRoute(
      path: '/detail',
      builder: (BuildContext context, GoRouterState state) =>
          const DetailPage(),
    ),
    GoRoute(
      path: '/home',
      builder: (BuildContext context, GoRouterState state) =>
          const CounterScreen(),
    ),
  ],
);
