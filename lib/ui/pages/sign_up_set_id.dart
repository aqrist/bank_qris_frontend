import 'package:flutter/material.dart';

import '../../shared/theme.dart';
import '../widgets/buttons.dart';
import '../widgets/forms.dart';

class SignUpSetID extends StatelessWidget {
  const SignUpSetID({super.key});

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
            'Verify Your \nAccount',
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
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Image Placeholder
                Container(
                  height: 120,
                  width: 120,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: lightBackgroundColor,
                  ),
                  child: Center(
                    child: Image.asset('assets/upload.png'),
                  ),
                ),
                // Container(
                //   height: 120,
                //   width: 120,
                //   decoration: const BoxDecoration(
                //     shape: BoxShape.circle,
                //     image: DecorationImage(
                //       fit: BoxFit.cover,
                //       image: AssetImage(
                //         'assets/person.png',
                //       ),
                //     ),
                //   ),
                // ),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  'Passport / ID Card',
                  style: blackTextStyle.copyWith(
                    fontSize: 18,
                    fontWeight: medium,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                CustomFilledButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/sign-up-success');
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
                  title: 'Skip for now',
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
