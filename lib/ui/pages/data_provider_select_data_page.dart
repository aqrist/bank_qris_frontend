import 'package:bank_qris/shared/theme.dart';
import 'package:bank_qris/ui/widgets/buttons.dart';
import 'package:bank_qris/ui/widgets/data_provider_package_item.dart';
import 'package:flutter/material.dart';

import '../widgets/forms.dart';

class DataProviderSelectDataPage extends StatelessWidget {
  const DataProviderSelectDataPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Paket Data'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        children: [
          const SizedBox(
            height: 30,
          ),
          Text(
            'Phone Number',
            style: blackTextStyle.copyWith(
              fontWeight: semiBold,
              fontSize: 16,
            ),
          ),
          const SizedBox(
            height: 14.0,
          ),
          const CustomFormField(
            isShowTitle: false,
            title: '+628',
          ),
          const SizedBox(
            height: 40,
          ),
          Text(
            'Select Package',
            style: blackTextStyle.copyWith(
              fontWeight: semiBold,
              fontSize: 16,
            ),
          ),
          const SizedBox(
            height: 14,
          ),
          Wrap(
            spacing: 17,
            runSpacing: 17,
            children: const [
              DataProviderPackageItem(
                amount: '10',
                price: '218000',
                isSelected: true,
              ),
              DataProviderPackageItem(amount: '25', price: '420000'),
              DataProviderPackageItem(amount: '40', price: '2500000'),
              DataProviderPackageItem(amount: '99', price: '5000000'),
            ],
          ),
          const SizedBox(
            height: 85,
          ),
          CustomFilledButton(
            title: 'Continue',
            onPressed: () async {
              if (await Navigator.pushNamed(context, '/pin') == true) {
                Navigator.pushNamedAndRemoveUntil(
                  context,
                  '/data-provider-success',
                  (route) => false,
                );
              }
            },
          ),
          const SizedBox(
            height: 50,
          ),
        ],
      ),
    );
  }
}
