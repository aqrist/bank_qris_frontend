import 'package:flutter/material.dart';

import '../../shared/theme.dart';
import '../widgets/buttons.dart';
import '../widgets/forms.dart';

class ProfileEditPage extends StatelessWidget {
  const ProfileEditPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit Profile'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 24.0,
        ),
        children: [
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
                const CustomFormField(
                  title: 'Username',
                ),
                const SizedBox(height: 16.0),
                const CustomFormField(
                  title: 'Full Name',
                ),
                const SizedBox(height: 16.0),
                const CustomFormField(
                  title: 'Email Address',
                ),
                const SizedBox(height: 16.0),
                const CustomFormField(
                  title: 'Password',
                  obscureText: true,
                ),
                const SizedBox(
                  height: 30.0,
                ),
                CustomFilledButton(
                  onPressed: () {
                    Navigator.pushNamedAndRemoveUntil(
                        context, '/profile-edit-success', (route) => false);
                  },
                  title: 'Update Now',
                  height: 50.0,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
