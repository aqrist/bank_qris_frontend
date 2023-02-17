import 'package:bank_qris/shared/theme.dart';
import 'package:bank_qris/ui/widgets/buttons.dart';
import 'package:flutter/material.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

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
            'Sign In & \nrow Your Finance',
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
                // Form input email
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Email Address',
                      style: blackTextStyle.copyWith(
                        fontWeight: medium,
                      ),
                    ),
                    const SizedBox(
                      height: 8.0,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(14.0),
                        ),
                        contentPadding: const EdgeInsets.all(
                          12.0,
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 16.0),
                // Pasword
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Password',
                      style: blackTextStyle.copyWith(
                        fontWeight: medium,
                      ),
                    ),
                    const SizedBox(
                      height: 8.0,
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(14.0),
                        ),
                        contentPadding: const EdgeInsets.all(
                          12.0,
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 8.0,
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    'Forgot Password',
                    style: blueTextStyle,
                  ),
                ),
                const SizedBox(
                  height: 30.0,
                ),
                CustomFilledButton(
                  onPressed: () {},
                  title: 'Sign In',
                  height: 50.0,
                ),
                const SizedBox(
                  height: 50.0,
                ),
                CustomTextButton(
                  height: 24.0,
                  onPressed: () {},
                  title: 'Create a new account',
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
