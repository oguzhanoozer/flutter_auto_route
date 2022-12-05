import 'package:auto_route/auto_route.dart';
import 'package:auto_route_works/product/navigator/app_router.dart';
import 'package:flutter/material.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter.tabBar(
        routes: [UserFullRoute(), SettingsRoute()],
        builder: (context, child, tabController) => Scaffold(
              body: child,
              bottomNavigationBar: BottomNavigationBar(
                  currentIndex: context.tabsRouter.activeIndex,
                  onTap: context.tabsRouter.setActiveIndex,
                  items: [
                    BottomNavigationBarItem(
                        icon: Icon(Icons.person), label: UserRoute.name),
                    BottomNavigationBarItem(
                        icon: Icon(Icons.settings), label: SettingsRoute.name)
                  ]),
            ));
  }
}
