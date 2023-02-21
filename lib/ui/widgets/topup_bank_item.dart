import 'package:bank_qris/shared/theme.dart';
import 'package:flutter/material.dart';

class TopUpBankItem extends StatelessWidget {
  final String imgUrl;
  final String title;
  final VoidCallback? ontap;
  final bool isSelected;

  const TopUpBankItem({
    super.key,
    required this.imgUrl,
    this.ontap,
    required this.title,
    this.isSelected = false,
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
                  '50 mins',
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
