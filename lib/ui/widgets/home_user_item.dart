import 'package:bank_qris/shared/theme.dart';
import 'package:flutter/material.dart';

class HomeUserItem extends StatelessWidget {
  final String imgUrl;
  final String userName;
  final String? url;

  const HomeUserItem({
    super.key,
    required this.imgUrl,
    required this.userName,
    this.url,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: 90,
      margin: const EdgeInsets.only(right: 17.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: whiteColor,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 45,
            height: 45,
            margin: const EdgeInsets.only(bottom: 13.0),
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  imgUrl,
                ),
              ),
            ),
          ),
          Text(
            '@$userName',
            style: blackTextStyle.copyWith(
              fontSize: 12,
              fontWeight: medium,
            ),
          )
        ],
      ),
    );
  }
}
