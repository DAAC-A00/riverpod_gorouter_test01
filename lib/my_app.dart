import 'package:flutter/material.dart';
import 'app_router.dart'; // go_router_provider.dart 파일을 임포트 해야 합니다.

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routeInformationParser: appRouter
          .routeInformationParser, // GoRouter의 routeInformationParser를 사용합니다.
      routeInformationProvider:
          appRouter.routeInformationProvider, // 라우트 상태를 전달해주는 함수
      routerDelegate:
          appRouter.routerDelegate, // GoRouter의 routerDelegate를 사용합니다.
      title: 'GoRouter Example',
    );
  }
}
