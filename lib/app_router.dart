// app_router.dart

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'counter_screen.dart';
import 'detail_screen.dart';
import 'main_screen.dart';
import 'home_screen.dart'; // 추가: HomeScreen import
import 'route_error_screen.dart';

final GoRouter appRouter = GoRouter(
  initialLocation: '/', // 초기 위치
  routes: [
    GoRoute(
      path: '/', // 메인 화면
      builder: (BuildContext context, GoRouterState state) =>
          const MainScreen(),
      routes: [
        // 메인 화면의 하위 라우트
        GoRoute(
          path: 'home', // 홈 탭
          builder: (BuildContext context, GoRouterState state) =>
              const HomeScreen(),
        ),
        GoRoute(
          path: 'detail', // 상세 정보 탭
          builder: (BuildContext context, GoRouterState state) =>
              const DetailScreen(),
        ),
        GoRoute(
          path: 'counter', // 카운터 탭
          builder: (BuildContext context, GoRouterState state) =>
              const CounterScreen(),
        ),
      ],
    ),
  ],
  errorBuilder: (context, state) => RouteErrorScreen(
    errorMsg: state.error.toString(),
    key: state.pageKey,
  ),
);
