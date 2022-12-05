import 'package:auto_route/annotations.dart';
import 'package:auto_route_works/dashboard/settings/settings_view.dart';
import 'package:auto_route_works/dashboard/user/user_detail_view.dart';
import 'package:auto_route_works/dashboard/user/user_view.dart';
import 'package:auto_route_works/home/home_view.dart';
import 'package:auto_route/auto_route.dart';
import 'package:auto_route_works/home/home_view_detail.dart';
import 'package:flutter/material.dart';

import '../../dashboard/dashboard_view.dart';
import '../../dashboard/user/model/user_model.dart';
import 'guard/auto_guard.dart';

part 'app_router.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'View,Route',
  routes: <AutoRoute>[
    AutoRoute(
      page: HomeView,
      path: 'home',
    ), // initial: true
    AutoRoute(
      page: HomeDetailView,
      path: 'detail',
    ), //guards: [AuthGuard]
    AutoRoute(page: DashboardView, path: '/', initial: true, children: [
      /// path: '/',  initial: true
      AutoRoute(
          page: EmptyPageRouter,
          name: 'userFullRoute',
          path: 'userFullRoute',
          children: [
            AutoRoute(initial: true, page: UserView, path: 'userView'),
            AutoRoute(page: UserDetailView, path: ':id'),
          ]),
      AutoRoute(page: SettingsView, path: 'settings')
    ])
  ],
)
class AppRouter extends _$AppRouter {
  // AppRouter({required super.authGuard});
}

class EmptyPageRouter extends AutoRouter {
  const EmptyPageRouter({super.key});
}
