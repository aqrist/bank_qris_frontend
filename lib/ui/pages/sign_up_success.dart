import 'package:bank_qris/ui/widgets/buttons.dart';
import 'package:flutter/material.dart';

import '../../shared/theme.dart';

class SignUpSuccess extends StatelessWidget {
  const SignUpSuccess({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightBackgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Akun Berhasil \nTerdaftar',
              textAlign: TextAlign.center,
              style: blackTextStyle.copyWith(
                fontSize: 20,
              ),
            ),
            const SizedBox(
              height: 26.0,
            ),
            Text(
              'Grow your finance start \ntogether with us',
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
                    context, '/home', (route) => false);
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
