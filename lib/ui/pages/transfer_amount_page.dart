import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../shared/theme.dart';
import '../widgets/buttons.dart';

class TransferAmountPage extends StatefulWidget {
  const TransferAmountPage({super.key});

  @override
  State<TransferAmountPage> createState() => _TransferAmountPageState();
}

class _TransferAmountPageState extends State<TransferAmountPage> {
  final TextEditingController amountController =
      TextEditingController(text: '0');

  @override
  void initState() {
    super.initState();
    amountController.addListener(() {
      final text = amountController.text;

      amountController.value = amountController.value.copyWith(
        text: NumberFormat.currency(
          locale: 'id',
          decimalDigits: 0,
          symbol: '',
        ).format(
          int.tryParse(
            text.replaceAll('.', ''),
          ),
        ),
      );
    });
  }

  addAmount(String number) {
    if (amountController.text == '0') {
      amountController.text = '';
    }

    setState(() {
      amountController.text = amountController.text + number;
    });
  }

  deleteAmount() {
    if (amountController.text.isNotEmpty) {
      setState(() {
        amountController.text = amountController.text
            .substring(0, amountController.text.length - 1);
      });
      if (amountController.text == '') {
        amountController.text = '0';
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkBackgroundColor,
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 56.0),
        children: [
          const SizedBox(
            height: 60,
          ),
          Center(
            child: Text(
              'Total Amount',
              style: whiteTextStyle.copyWith(
                fontSize: 20,
                fontWeight: semiBold,
              ),
            ),
          ),
          const SizedBox(
            height: 67.0,
          ),
          Align(
            child: SizedBox(
              width: 200,
              child: TextFormField(
                enabled: false,
                controller: amountController,
                cursorColor: greyColor,
                style: whiteTextStyle.copyWith(
                  fontSize: 36,
                  fontWeight: medium,
                ),
                decoration: InputDecoration(
                  prefixIcon: Text(
                    'Rp ',
                    style: whiteTextStyle.copyWith(
                      fontSize: 36,
                      fontWeight: medium,
                    ),
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: greyColor,
                    ),
                  ),
                  disabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: greyColor,
                    ),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: greyColor,
                    ),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 66,
          ),
          Wrap(
            spacing: 40.0,
            runSpacing: 40.0,
            children: [
              CustomPinButton(title: '1', ontap: () => addAmount('1')),
              CustomPinButton(title: '2', ontap: () => addAmount('2')),
              CustomPinButton(title: '3', ontap: () => addAmount('3')),
              CustomPinButton(title: '4', ontap: () => addAmount('4')),
              CustomPinButton(title: '5', ontap: () => addAmount('5')),
              CustomPinButton(title: '6', ontap: () => addAmount('6')),
              CustomPinButton(title: '7', ontap: () => addAmount('7')),
              CustomPinButton(title: '8', ontap: () => addAmount('8')),
              CustomPinButton(title: '9', ontap: () => addAmount('9')),
              const SizedBox(
                height: 60,
                width: 60,
              ),
              CustomPinButton(title: '0', ontap: () => addAmount('0')),
              GestureDetector(
                onTap: () {
                  deleteAmount();
                },
                child: Container(
                  width: 66,
                  height: 66,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: numberBgColor,
                  ),
                  child: Center(
                    child: Icon(
                      Icons.arrow_back,
                      color: whiteColor,
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 50.0,
          ),
          CustomFilledButton(
            title: 'Continue',
            onPressed: () async {
              if (await Navigator.pushNamed(context, '/pin') == true) {
                Navigator.pushNamedAndRemoveUntil(
                    context, '/transfer-success', (route) => false);
              }
            },
          ),
          const SizedBox(
            height: 25.0,
          ),
          CustomTextButton(
            title: 'Terms & Condition',
            onPressed: () {},
          ),
          const SizedBox(
            height: 40.0,
          )
        ],
      ),
    );
  }
}
