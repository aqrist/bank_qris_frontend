import 'package:bank_qris/ui/widgets/buttons.dart';
import 'package:bank_qris/ui/widgets/data_provider_item.dart';
import 'package:flutter/material.dart';

import '../../shared/theme.dart';

class DataProviderPage extends StatelessWidget {
  const DataProviderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Beli Data'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 24.0,
        ),
        children: [
          const SizedBox(
            height: 30.0,
          ),
          Text(
            'From Wallet',
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
                    'Balance: Rp 9.000.000',
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
            'Select Provider',
            style: blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
            ),
          ),
          Column(
            children: [
              const DataProviderItem(
                imgUrl: 'assets/telkomsel.png',
                title: 'Telkomsel',
                isSelected: true,
              ),
              const DataProviderItem(
                imgUrl: 'assets/indosat.png',
                title: 'Indosat',
              ),
              const DataProviderItem(
                imgUrl: 'assets/singtel.png',
                title: 'Singtel',
                isAvailable: false,
              ),
              const SizedBox(
                height: 135,
              ),
              CustomFilledButton(
                title: 'Continue',
                onPressed: () {
                  Navigator.pushNamed(context, '/data-provider-package-select');
                },
              ),
              const SizedBox(
                height: 57,
              )
            ],
          )
        ],
      ),
    );
  }
}
