import 'package:bank_qris/shared/theme.dart';
import 'package:bank_qris/ui/widgets/buttons.dart';
import 'package:bank_qris/ui/widgets/forms.dart';
import 'package:bank_qris/ui/widgets/transfer_recent_user_item.dart';
import 'package:bank_qris/ui/widgets/transfer_result_user_item.dart';
import 'package:flutter/material.dart';

class TransferPage extends StatefulWidget {
  const TransferPage({super.key});

  @override
  State<TransferPage> createState() => _TransferPageState();
}

class _TransferPageState extends State<TransferPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Transfer'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 24.0,
        ),
        children: [
          const SizedBox(
            height: 30,
          ),
          Text(
            'Search',
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
            title: 'by username',
          ),
          // buildRecentUser()
          buildResult(),
          const SizedBox(
            height: 50,
          ),
          CustomFilledButton(
            title: 'Continue',
            onPressed: () {
              Navigator.pushNamed(context, '/transfer-amount');
            },
          ),
        ],
      ),
    );
  }

  Widget buildRecentUser() => Container(
        margin: const EdgeInsets.only(top: 40.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Recent User',
              style: blackTextStyle.copyWith(
                fontWeight: semiBold,
                fontSize: 16,
              ),
            ),
            const SizedBox(
              height: 14.0,
            ),
            const TransferRecentUserItem(
              imgUrl: 'assets/person.png',
              name: 'Inori',
              username: '@inori',
              isVerified: true,
            ),
            const TransferRecentUserItem(
              imgUrl: 'assets/person2.png',
              name: 'Ray',
              username: '@ray',
            ),
            const TransferRecentUserItem(
              imgUrl: 'assets/person3.png',
              name: 'Tom',
              username: '@tom',
            ),
          ],
        ),
      );

  Widget buildResult() => Container(
        margin: const EdgeInsets.only(top: 40.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Result',
              style: blackTextStyle.copyWith(
                fontWeight: semiBold,
                fontSize: 16,
              ),
            ),
            const SizedBox(
              height: 14.0,
            ),
            Wrap(
              spacing: 17.0,
              runSpacing: 17.0,
              children: const [
                TransferResultUserItem(
                  imgUrl: 'assets/person.png',
                  name: 'Inori',
                  username: '@inori',
                  isVerified: true,
                  isSelected: true,
                ),
                TransferResultUserItem(
                  imgUrl: 'assets/person2.png',
                  name: 'Ray',
                  username: '@ray',
                ),
                TransferResultUserItem(
                  imgUrl: 'assets/person3.png',
                  name: 'Tom',
                  username: '@tom',
                ),
              ],
            ),
          ],
        ),
      );
}
