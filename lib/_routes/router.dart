import 'package:flutter/material.dart';
import 'package:kimirina_app/_routes/routes.dart';
import 'package:kimirina_app/screens/chat_page.dart';
import 'package:kimirina_app/screens/home_page.dart';
import 'package:kimirina_app/screens/landing_page.dart';
import 'package:kimirina_app/screens/login_page.dart';
import 'package:kimirina_app/screens/register_page.dart';
import 'package:kimirina_app/screens/resetPassword_page.dart';
import 'package:kimirina_app/screens/tabs/riesgo_page.dart';
import 'package:kimirina_app/screens/user_profile.dart';
import 'package:kimirina_app/screens/select_option_its_page.dart';
import 'package:kimirina_app/screens/its_actual_action.dart';
import 'package:kimirina_app/screens/sigue_tratamiento.dart';
import 'package:kimirina_app/screens/abandono_tratamineto.dart';


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
    case resetPasswordViewRoute:
      return MaterialPageRoute(builder: (context) => ResetPasswordPage());
    case selectOptionItsRoute:
      return MaterialPageRoute(builder: (context) => SelectOptionItsPage());
    case itsActualActionViewRoute:
      return MaterialPageRoute(builder: (context) => ItsActualActionPage());
    case siguiendoTratamientoViewRoute:
    return MaterialPageRoute(builder: (context) => SigueTratamientoPage());
    case abandonoTratamientoViewRoute:
    return MaterialPageRoute(builder: (context) => AbandonoTratamientoPage());
    case chatDetailsViewRoute:
      return MaterialPageRoute(builder: (context) => ChatDetailsPage(userId: settings.arguments));
    case userDetailsViewRoute:
      return MaterialPageRoute(builder: (context) => UserProfilePage(userId: settings.arguments));
      break;
    default:
      return MaterialPageRoute(builder: (context) => LandingPage());
  }
}