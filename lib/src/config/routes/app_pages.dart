import 'package:flutter/material.dart';
import 'package:molhooooo/src/config/routes/app_routes.dart';
import 'package:molhooooo/src/features/attendant/presentation/pages/attendant_page.dart';
import 'package:molhooooo/src/features/auth/presentation/login_page.dart';
import 'package:molhooooo/src/features/molhooooo/presentation/molhooooo_page.dart';

class AppPages {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.login:
        return MaterialPageRoute(builder: (_) => const LoginPage());
      case AppRoutes.home:
        return MaterialPageRoute(builder: (_) => const LoginPage());
      case AppRoutes.molhooooo:
        return MaterialPageRoute(builder: (_) => const AttendantPage());
      case AppRoutes.attendant:
        return MaterialPageRoute(builder: (_) => const AttendantPage());
      default:
        return MaterialPageRoute(builder: (_) => const UnknownPage());
    }
  }
}

class UnknownPage extends StatelessWidget {
  const UnknownPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
