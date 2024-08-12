import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:go_router/go_router.dart';
import 'package:learn_firebase/main.dart';
import 'package:learn_firebase/page2.dart';

class AppRouter {
  static FirebaseAnalytics analytics = FirebaseAnalytics.instance;
  static FirebaseAnalyticsObserver observer =
      FirebaseAnalyticsObserver(analytics: analytics);

  static final GoRouter _router = GoRouter(
    observers: [observer],
    routes: [
      GoRoute(
          path: '/',
          builder: (context, state) => const MyHomePage(title: 'Home'),
          routes: [
            GoRoute(
              path: 'page2',
              builder: (context, state) => const Page2(),
            )
          ]),
    ],
  );

  static GoRouter get router => _router;
}
