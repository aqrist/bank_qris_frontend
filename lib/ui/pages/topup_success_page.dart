import 'package:flutter/material.dart';

import '../../shared/theme.dart';
import '../widgets/buttons.dart';

class TopUpSuccessPage extends StatelessWidget {
  const TopUpSuccessPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightBackgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Top Up \nWallet Berhasil',
              textAlign: TextAlign.center,
              style: blackTextStyle.copyWith(
                fontSize: 20,
              ),
            ),
            const SizedBox(
              height: 26.0,
            ),
            Text(
              'Use the money wisely and \ngrow your finance',
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
              title: 'Back To Home',
              widht: 183,
            )
          ],
        ),
      ),
    );
  }
}
