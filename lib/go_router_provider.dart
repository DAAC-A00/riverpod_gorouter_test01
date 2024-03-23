// go_router_provider.dart

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import 'home_route_error_screen.dart';
import 'home_screen.dart';
import 'main_screen.dart';

final goRouterProvider = Provider<GoRouter>(
  (ref) {
    return GoRouter(
      initialLocation: '/main',
      routes: <RouteBase>[
        GoRoute(
          path: '/main',
          builder: (BuildContext context, GoRouterState state) =>
              const MainPage(),
        ),
        GoRoute(
          path: '/home',
          builder: (BuildContext context, GoRouterState state) =>
              const HomeScreen(),
        ),
      ],
      errorBuilder: (context, state) => HomeRouteErrorScreen(
        errorMsg: state.error.toString(),
        key: state.pageKey,
      ),
    );
  },
);
