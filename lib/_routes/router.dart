import 'package:flutter/material.dart';
import 'package:kimirina_app/_routes/routes.dart';
import 'package:kimirina_app/screens/chat_page.dart';
import 'package:kimirina_app/screens/home_page.dart';
import 'package:kimirina_app/screens/landing_page.dart';
import 'package:kimirina_app/screens/login_page.dart';
import 'package:kimirina_app/screens/register_page.dart';
import 'package:kimirina_app/screens/resetPassword_page.dart';
import 'package:kimirina_app/screens/tabs/riesgo_page.dart';
import 'package:kimirina_app/screens/tabs/autotest_page.dart';
import 'package:kimirina_app/screens/user_profile.dart';
import 'package:kimirina_app/screens/select_option_its_page.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case landingViewRoute:
      return MaterialPageRoute(builder: (context) => LandingPage());
    case homeViewRoute:
      return MaterialPageRoute(builder: (context) => HomePage());
    case loginViewRoute:
      return MaterialPageRoute(builder: (context) => LoginPage());
    case registerViewRoute:
      return MaterialPageRoute(builder: (context) => RegisterPage());
    case riesgoViewRoute:
      return MaterialPageRoute(builder: (context) => RiesgoPage());
    case autotestViewRoute:
      return MaterialPageRoute(builder: (context) => AutotestPage());
    case resetPasswordViewRoute:
      return MaterialPageRoute(builder: (context) => ResetPasswordPage());
    case selectOptionItsRoute:
      return MaterialPageRoute(builder: (context) => SelectOptionItsPage());
    case chatDetailsViewRoute:
      return MaterialPageRoute(
          builder: (context) => ChatDetailsPage(userId: settings.arguments));
    case userDetailsViewRoute:
      return MaterialPageRoute(
          builder: (context) => UserProfilePage(userId: settings.arguments));
      break;
    default:
      return MaterialPageRoute(builder: (context) => LandingPage());
  }
}
