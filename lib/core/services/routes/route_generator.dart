import 'package:flutter/material.dart';
import 'package:quiz_app_flutter/core/services/routes/routes.dart';
import 'package:quiz_app_flutter/features/quiz/presentation/pages/answer_explanation.dart';
import 'package:quiz_app_flutter/features/quiz/presentation/pages/quiz_page.dart';
import 'package:quiz_app_flutter/features/splash_screen/page/splash_screen_page.dart';

class RouteGenerator {
  static void get controller {}

  static Route<dynamic>? generateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.splash:
        return MaterialPageRoute(
          builder: (_) => const SplashScreenPage(),
        );
      case Routes.quiz:
        return MaterialPageRoute(
          builder: (_) => const QuizPage(),
        );

      case Routes.answerExplanation:
        return MaterialPageRoute(
          builder: (_) => const AnswerExplanation(),
        );
      //
      // case Routes.signIn:
      //   return MaterialPageRoute(
      //     builder: (_) => const SignInPage(),
      //   );
      //
      // case Routes.home:
      //   return MaterialPageRoute(
      //     builder: (_) => const HomePage(),
      //   );
      //
      // case Routes.forgotPassword:
      //   return MaterialPageRoute(
      //     builder: (_) => const ForgotPasswordPage(),
      //   );
      //
      // case Routes.welcome:
      //   return MaterialPageRoute(builder: (_) => const SuccessPage());
      //
      // case Routes.webView:
      //   return MaterialPageRoute(
      //     builder: (_) => WebViewPage(
      //       url: routeSettings.arguments! as String,
      //     ),
      //   );
      //
      // case Routes.resetPassword:
      //   return MaterialPageRoute(
      //     builder: (_) => const SetNewPasswordPage(),
      //   );
      //
      // case Routes.changePassword:
      //   return MaterialPageRoute(
      //     builder: (_) => const ChangePasswordPage(),
      //   );
      //
      // case Routes.updateProfile:
      //   return MaterialPageRoute(
      //     builder: (_) => const UpdateProfilePage(),
      //   );
      //
      // case Routes.identityVerification:
      //   final arguments = routeSettings.arguments! as Map<String, dynamic>;
      //   return MaterialPageRoute(
      //     builder: (_) => IdentityVerificationPage(
      //       isFromSignUp: arguments['isFromSignUp'] as bool,
      //     ),
      //   );

      default:
        return null;
    }
  }
}
