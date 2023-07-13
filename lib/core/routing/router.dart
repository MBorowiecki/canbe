import 'dart:developer' as developer;

import 'package:rescan/core/routing/scaffold_with_nested_bar.dart';
import 'package:rescan/features/home/presentation/pages/main_scan_page.dart';
import 'package:rescan/features/home/presentation/pages/scanned_product_page.dart';
import 'package:rescan/features/settings/presentation/pages/main_settings_page.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

// private navigators
final _rootNavigatorKey = GlobalKey<NavigatorState>();
final _shellNavigatorAKey = GlobalKey<NavigatorState>(debugLabel: 'shellA');
final _shellNavigatorBKey = GlobalKey<NavigatorState>(debugLabel: 'shellB');

// the one and only GoRouter instance
final goRouter = GoRouter(
  initialLocation: '/home',
  navigatorKey: _rootNavigatorKey,
  routes: [
    // Stateful nested navigation based on:
    // https://github.com/flutter/packages/blob/main/packages/go_router/example/lib/stateful_shell_route.dart
    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) {
        // the UI shell
        return ScaffoldWithNestedNavigation(navigationShell: navigationShell);
      },
      branches: [
        // first branch (A)
        StatefulShellBranch(
          navigatorKey: _shellNavigatorAKey,
          routes: [
            // top route inside branch
            GoRoute(
              path: '/home',
              pageBuilder: (context, state) => const NoTransitionPage(
                child: MainScanPage(),
              ),
              routes: [
                // nested routes inside branch
                GoRoute(
                    path: 'scanned-product/:barcode',
                    builder: (context, state) {
                      developer.log('State: ${state.toString()}');
                      final barcode = _requireParam(state, 'barcode');
                      return ScannedProductPage(barcode: barcode);
                    }),
              ],
            ),
          ],
        ),
        // second branch (B)
        StatefulShellBranch(
          navigatorKey: _shellNavigatorBKey,
          routes: [
            // top route inside branch
            GoRoute(
              path: '/settings',
              pageBuilder: (context, state) => const NoTransitionPage(
                child: MainSettingsPage(),
              ),
              routes: const [],
            ),
          ],
        ),
      ],
    ),
  ],
);

String _requireParam(GoRouterState state, String paramName) {
  final param = state.pathParameters[paramName];
  if (param == null) {
    throw Exception('Missing required param: $paramName');
  }
  return param;
}

// use like this:
// MaterialApp.router(routerConfig: goRouter, ...)
