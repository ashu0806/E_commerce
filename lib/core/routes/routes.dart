import 'package:auto_route/annotations.dart';
import 'package:e_commerce/auth/presentation/login_page.dart';
import 'package:e_commerce/auth/presentation/signup_page.dart';
import 'package:e_commerce/dashboard/presentation/dashboard_page.dart';
import 'package:e_commerce/spalsh/splash_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: [
    AutoRoute(
      page: SplashPage,
      initial: true,
    ),
    AutoRoute(
      page: LogInPage,
    ),
    AutoRoute(
      page: SignUpPage,
    ),
    AutoRoute(
      page: DashboardPage,
    ),
  ],
)
class $AppRouter {}
