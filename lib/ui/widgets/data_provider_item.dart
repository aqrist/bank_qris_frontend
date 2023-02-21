import 'package:flutter/material.dart';

import '../../shared/theme.dart';

class DataProviderItem extends StatelessWidget {
  final String imgUrl;
  final String title;
  final VoidCallback? ontap;
  final bool isSelected;
  final bool isAvailable;

  const DataProviderItem({
    super.key,
    required this.imgUrl,
    required this.title,
    this.ontap,
    this.isSelected = false,
    this.isAvailable = true,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        margin: const EdgeInsets.only(
          bottom: 18.0,
        ),
        padding: const EdgeInsets.all(
          22.0,
        ),
        decoration: BoxDecoration(
            color: whiteColor,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(
              width: 2.0,
              color: isSelected ? blueColor : whiteColor,
            )),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              imgUrl,
              height: 30,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  title,
                  style: blackTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: medium,
                  ),
                ),
                Text(
                  isAvailable ? 'Available' : 'Not Available',
                  style: greyTextStyle.copyWith(
                    fontSize: 12,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
