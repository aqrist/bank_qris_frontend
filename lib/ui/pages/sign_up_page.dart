import 'package:flutter/material.dart';
import 'package:bank_qris/shared/theme.dart';
import 'package:bank_qris/ui/widgets/buttons.dart';
import 'package:bank_qris/ui/widgets/forms.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightBackgroundColor,
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 24.0,
        ),
        children: [
          // logo
          Container(
            height: 50.0,
            width: 155.0,
            margin: const EdgeInsets.only(top: 100.0, bottom: 100.0),
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/logo_light.png',
                ),
              ),
            ),
          ),
          // Title
          Text(
            'Join Us to Unlock \nYour Growth',
            style: blackTextStyle.copyWith(
              fontSize: 20,
              fontWeight: semiBold,
            ),
          ),
          const SizedBox(
            height: 30.0,
          ),
          Container(
            padding: const EdgeInsets.all(22.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              color: whiteColor,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Form input Fullname
                const CustomFormField(
                  title: 'Full Name',
                ),
                const SizedBox(height: 16.0),
                // Form input email
                const CustomFormField(
                  title: 'Email Address',
                ),
                const SizedBox(height: 16.0),
                // Pasword
                const CustomFormField(
                  title: 'Password',
                  obscureText: true,
                ),
                const SizedBox(
                  height: 30.0,
                ),
                CustomFilledButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/sign-up-set-profile');
                  },
                  title: 'Continue',
                  height: 50.0,
                ),
                const SizedBox(
                  height: 50.0,
                ),
                CustomTextButton(
                  height: 24.0,
                  onPressed: () {
                    Navigator.pushNamed(context, '/sign-in');
                  },
                  title: 'Sign In',
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
