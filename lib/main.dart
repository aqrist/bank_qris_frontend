import 'package:bank_qris/shared/theme.dart';
import 'package:bank_qris/ui/pages/home_page.dart';
import 'package:bank_qris/ui/pages/onboarding_page.dart';
import 'package:bank_qris/ui/pages/pin_page.dart';
import 'package:bank_qris/ui/pages/profile_edit_page.dart';
import 'package:bank_qris/ui/pages/profile_edit_pin_page.dart';
import 'package:bank_qris/ui/pages/profile_edit_success_page.dart';
import 'package:bank_qris/ui/pages/profile_page.dart';
import 'package:bank_qris/ui/pages/sign_in_page.dart';
import 'package:bank_qris/ui/pages/sign_up_page.dart';
import 'package:bank_qris/ui/pages/sign_up_set_id.dart';
import 'package:bank_qris/ui/pages/sign_up_set_profile.dart';
import 'package:bank_qris/ui/pages/sign_up_success.dart';
import 'package:bank_qris/ui/pages/splash_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const SplashPage(),
        '/onboarding': (context) => const OnboardingPage(),
        '/sign-in': (context) => const SignInPage(),
        '/sign-up': (context) => const SignUpPage(),
        '/sign-up-set-profile': (context) => const SignUpSetProfile(),
        '/sign-up-set-id': (context) => const SignUpSetID(),
        '/sign-up-success': (context) => const SignUpSuccess(),
        '/home': (context) => const HomePage(),
        '/profile': (context) => const ProfilePage(),
        '/profile-edit': (context) => const ProfileEditPage(),
        '/profile-edit-pin': (context) => const ProfileEditPinPage(),
        '/profile-edit-success': (context) => const ProfileEditSuccessPage(),
        '/pin': (context) => const PinPage(),
      },
      theme: ThemeData(
        scaffoldBackgroundColor: lightBackgroundColor,
        appBarTheme: AppBarTheme(
          iconTheme: IconThemeData(
            color: blackColor,
          ),
          centerTitle: true,
          backgroundColor: lightBackgroundColor,
          elevation: 0,
          titleTextStyle: blackTextStyle.copyWith(
            fontSize: 20,
            fontWeight: semiBold,
          ),
        ),
      ),
    );
  }
}
