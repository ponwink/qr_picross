import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';
import 'package:go_router/go_router.dart';
import 'package:qr_picross/features/qr_picross/presentation/screens/answer_screen.dart';
import 'package:qr_picross/features/qr_picross/presentation/screens/detail_screen.dart';
import 'package:qr_picross/features/qr_picross/presentation/screens/play_screen.dart';
import 'package:qr_picross/features/qr_picross/presentation/screens/qr_picross_form_screen.dart';
import 'package:qr_picross/features/top/top_screen.dart';

void main() {
  setUrlStrategy(PathUrlStrategy());
  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(routerConfig: _router);
  }

  final _router = GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(
        name: 'top',
        path: '/',
        builder: (context, state) {
          return const TopScreen();
        },
        routes: [
          GoRoute(
            name: 'input',
            path: '/input',
            builder: (context, state) {
              return QrPicrossFormScreen();
            },
          ),
          GoRoute(
            name: 'detail',
            path: '/detail',
            builder: (context, state) {
              return DetailScreen();
            },
          ),
          GoRoute(
            name: 'answer',
            path: '/answer',
            builder: (context, state) {
              return AnswerScreen();
            },
          ),
          GoRoute(
            name: 'play',
            path: '/play',
            builder: (context, state) {
              return PlayScreen();
            },
          ),
        ],
      ),
    ],
  );
}
