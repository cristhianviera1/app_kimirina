import 'package:flutter/material.dart';
import 'package:kimirina_app/_routes/routes.dart';
import 'package:kimirina_app/models/chat.dart';
import 'package:kimirina_app/screens/autotest_page.dart';
import 'package:kimirina_app/screens/chat_page.dart';
import 'package:kimirina_app/screens/home_page.dart';
import 'package:kimirina_app/screens/kimirinaServices_page.dart';
import 'package:kimirina_app/screens/landing_page.dart';
import 'package:kimirina_app/screens/login_page.dart';
import 'package:kimirina_app/screens/pruebaComunitaria_page.dart';
import 'package:kimirina_app/screens/postAutotest_page.dart';
import 'package:kimirina_app/screens/register_page.dart';
import 'package:kimirina_app/screens/resetPassword_page.dart';
import 'package:kimirina_app/screens/riesgo_page.dart';
import 'package:kimirina_app/screens/riskForm_page.dart';
import 'package:kimirina_app/screens/user_profile.dart';
import 'package:kimirina_app/screens/select_option_its_page.dart';
import 'package:kimirina_app/screens/its_actual_action.dart';
import 'package:kimirina_app/screens/sigue_tratamiento.dart';
import 'package:kimirina_app/screens/abandono_tratamineto.dart';
import 'package:kimirina_app/screens/no_inicio_tratamiento.dart';
import 'package:kimirina_app/widgets/chat_bubble.dart';

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
    case chatPage:
      return MaterialPageRoute(builder: (context) => ChatBubble());
    case riesgoViewRoute:
      return MaterialPageRoute(builder: (context) => RiesgoPage());
    case autotestViewRoute:
      return MaterialPageRoute(builder: (context) => AutotestPage());
      case pruebaComunitariaViewRoute:
      return MaterialPageRoute(builder: (context) => PruebaComunitariaPage());
    case postAutoTest:
      return MaterialPageRoute(builder: (context) => PostAutoTestPage());
    case resetPasswordViewRoute:
      return MaterialPageRoute(builder: (context) => ResetPasswordPage());
    case selectOptionItsRoute:
      return MaterialPageRoute(builder: (context) => SelectOptionItsPage());
    case riskFormRoute:
      return MaterialPageRoute(builder: (context) => RiskFormPage());
    case itsActualActionViewRoute:
      return MaterialPageRoute(builder: (context) => ItsActualActionPage());
    case siguiendoTratamientoViewRoute:
      return MaterialPageRoute(builder: (context) => SigueTratamientoPage());
    case serviciosKimirina:
      return MaterialPageRoute(builder: (context) => KimirinaServicesPage());
    case preguntaTieneITS:
      return MaterialPageRoute(builder: (context) => SelectOptionItsPage());
    case abandonoTratamientoViewRoute:
      return MaterialPageRoute(builder: (context) => AbandonoTratamientoPage());
    case noInicioTratamientoViewRoute:
      return MaterialPageRoute(builder: (context) => NoInicioTratamientoPage());
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
