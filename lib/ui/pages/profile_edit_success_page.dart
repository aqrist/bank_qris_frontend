import 'package:flutter/material.dart';

import '../../shared/theme.dart';
import '../widgets/buttons.dart';

class ProfileEditSuccessPage extends StatelessWidget {
  const ProfileEditSuccessPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightBackgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Nice Update',
              textAlign: TextAlign.center,
              style: blackTextStyle.copyWith(
                fontSize: 20,
              ),
            ),
            const SizedBox(
              height: 26.0,
            ),
            Text(
              'Your data is safe with \nour system',
              textAlign: TextAlign.center,
              style: greyTextStyle.copyWith(
                fontSize: 16,
              ),
            ),
            const SizedBox(
              height: 50.0,
            ),
            CustomFilledButton(
              onPressed: () {
                Navigator.pushNamedAndRemoveUntil(
                    context, '/profile', (route) => false);
              },
              title: 'Get Started',
              widht: 183,
            )
          ],
        ),
      ),
    );
  }
}
