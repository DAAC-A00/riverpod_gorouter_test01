// home_route_error_screen.dart

import 'package:flutter/material.dart';

class HomeRouteErrorScreen extends StatefulWidget {
  final String errorMsg;
  const HomeRouteErrorScreen({required this.errorMsg, super.key});

  @override
  State<HomeRouteErrorScreen> createState() => _HomeRouteErrorScreenState();
}

class _HomeRouteErrorScreenState extends State<HomeRouteErrorScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Home'),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            children: [Text(widget.errorMsg)],
          ),
        ));
  }
}
