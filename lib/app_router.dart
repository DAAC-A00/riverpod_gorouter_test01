// app_router.dart

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'counter_screen.dart';
import 'detail_screen.dart';
import 'main_screen.dart';
import 'route_error_screen.dart';

final GoRouter appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) =>
          const MainScreen(),
    ),
    GoRoute(
      path: '/detail',
      builder: (BuildContext context, GoRouterState state) =>
          const DetailScreen(),
    ),
    GoRoute(
      path: '/home',
      builder: (BuildContext context, GoRouterState state) =>
          const CounterScreen(),
    ),
  ],
  errorBuilder: (context, state) => RouteErrorScreen(
    errorMsg: state.error.toString(),
    key: state.pageKey,
  ),
);
