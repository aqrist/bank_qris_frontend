import 'package:bank_qris/shared/theme.dart';
import 'package:flutter/material.dart';

class ProfileMenuItem extends StatelessWidget {
  final String icon;
  final String title;
  final String? badge;
  final VoidCallback? ontap;
  const ProfileMenuItem({
    super.key,
    required this.icon,
    required this.title,
    this.badge,
    this.ontap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        margin: const EdgeInsets.only(bottom: 30.0),
        child: Row(
          children: [
            Image.asset(
              icon,
              width: 24,
            ),
            const SizedBox(
              width: 18.0,
            ),
            Text(
              title,
              style: blackTextStyle.copyWith(
                fontWeight: medium,
              ),
            )
          ],
        ),
      ),
    );
  }
}
