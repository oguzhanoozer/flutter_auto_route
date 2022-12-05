import 'package:auto_route/auto_route.dart';
import 'package:auto_route_works/dashboard/settings/settings_view.dart';
import 'package:auto_route_works/product/navigator/app_router.dart';

class AuthGuard extends AutoRouteGuard {
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    // the navigation is paused until resolver.next() is called with either
    // true to resume/continue navigation or false to abort navigation

    bool isResult = false;

    if (isResult) {
      // if user is authenticated we continue
      resolver.next(true);
    } else {
      // we redirect the user to our login page
      router.pushWidget(SettingsView());
      print("as");
    }
  }
}
