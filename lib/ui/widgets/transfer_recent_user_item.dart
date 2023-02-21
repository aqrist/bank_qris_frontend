import 'package:bank_qris/shared/theme.dart';
import 'package:flutter/material.dart';

class TransferRecentUserItem extends StatelessWidget {
  final String imgUrl;
  final String name;
  final String username;
  final bool isVerified;

  const TransferRecentUserItem({
    super.key,
    required this.imgUrl,
    required this.name,
    required this.username,
    this.isVerified = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 18.0),
      padding: const EdgeInsets.all(22.0),
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(
          20.0,
        ),
      ),
      child: Row(
        children: [
          Container(
            margin: const EdgeInsets.only(right: 14.0),
            height: 45,
            width: 45,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(imgUrl),
              ),
              shape: BoxShape.circle,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: blackTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: medium,
                ),
              ),
              const SizedBox(
                height: 2.0,
              ),
              Text(
                name,
                style: greyTextStyle.copyWith(
                  fontSize: 12,
                ),
              ),
            ],
          ),
          const Spacer(),
          isVerified
              ? Row(
                  children: [
                    Icon(
                      Icons.check_circle,
                      color: greenColor,
                      size: 24.0,
                    ),
                    const SizedBox(
                      width: 4.0,
                    ),
                    Text(
                      'Verified',
                      style: greenTextStyle.copyWith(
                        fontSize: 11,
                        fontWeight: medium,
                      ),
                    )
                  ],
                )
              : const SizedBox()
        ],
      ),
    );
  }
}
