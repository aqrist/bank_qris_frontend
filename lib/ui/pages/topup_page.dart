import 'package:bank_qris/shared/theme.dart';
import 'package:bank_qris/ui/widgets/buttons.dart';
import 'package:bank_qris/ui/widgets/topup_bank_item.dart';
import 'package:flutter/material.dart';

class TopUpPage extends StatelessWidget {
  const TopUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Top Up',
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        children: [
          const SizedBox(
            height: 30.0,
          ),
          Text(
            'Wallet',
            style: blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Image.asset(
                'assets/card_mini.png',
                width: 80,
              ),
              const SizedBox(
                width: 16.0,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '8008 2208 1996',
                    style: blackTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: medium,
                    ),
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  Text(
                    'Inori Yuzuriha',
                    style: greyTextStyle.copyWith(
                      fontSize: 12,
                    ),
                  ),
                ],
              )
            ],
          ),
          const SizedBox(
            height: 40,
          ),
          Text(
            'Select Bank',
            style: blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
            ),
          ),
          const SizedBox(
            height: 14.0,
          ),
          const TopUpBankItem(
            imgUrl: 'assets/bank_bca.png',
            title: 'Bank BCA',
            isSelected: true,
          ),
          const TopUpBankItem(
            imgUrl: 'assets/bank_bni.png',
            title: 'Bank BNI',
          ),
          const TopUpBankItem(
            imgUrl: 'assets/bank_mandiri.png',
            title: 'Bank Mandiri',
          ),
          const TopUpBankItem(
            imgUrl: 'assets/bank_ocbc.png',
            title: 'Bank OCBC',
          ),
          const SizedBox(
            height: 12.0,
          ),
          CustomFilledButton(
            title: 'Continue',
            onPressed: () {
              Navigator.pushNamed(context, '/topup-amount');
            },
          ),
          const SizedBox(
            height: 57.0,
          )
        ],
      ),
    );
  }
}
