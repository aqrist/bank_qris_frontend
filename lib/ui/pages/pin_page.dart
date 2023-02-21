import 'package:bank_qris/shared/shared_methods.dart';
import 'package:bank_qris/shared/theme.dart';
import 'package:bank_qris/ui/widgets/buttons.dart';
import 'package:flutter/material.dart';

class PinPage extends StatefulWidget {
  const PinPage({super.key});

  @override
  State<PinPage> createState() => _PinPageState();
}

class _PinPageState extends State<PinPage> {
  final TextEditingController pinController = TextEditingController(text: '');

  addPin(String number) {
    if (pinController.text.length < 6) {
      setState(() {
        pinController.text = pinController.text + number;
      });
    }

    if (pinController.text.length == 6) {
      if (pinController.text == '123123') {
        Navigator.pop(context, true);
      } else {
        showCustomSnackbar(context, 'PIN yang anda masukan salah, coba lagi');
        pinController.text = '';
      }
    }
  }

  deletePin() {
    if (pinController.text.isNotEmpty) {
      setState(() {
        pinController.text =
            pinController.text.substring(0, pinController.text.length - 1);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkBackgroundColor,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 56.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'QRIS PIN',
                style: whiteTextStyle.copyWith(
                  fontSize: 20,
                  fontWeight: semiBold,
                ),
              ),
              const SizedBox(
                height: 72.0,
              ),
              SizedBox(
                width: 200,
                child: TextFormField(
                  enabled: false,
                  controller: pinController,
                  obscureText: true,
                  obscuringCharacter: '*',
                  cursorColor: greyColor,
                  style: whiteTextStyle.copyWith(
                      fontSize: 36, fontWeight: medium, letterSpacing: 16),
                  decoration: InputDecoration(
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
              const SizedBox(
                height: 66,
              ),
              Wrap(
                spacing: 40.0,
                runSpacing: 40.0,
                children: [
                  CustomPinButton(title: '1', ontap: () => addPin('1')),
                  CustomPinButton(title: '2', ontap: () => addPin('2')),
                  CustomPinButton(title: '3', ontap: () => addPin('3')),
                  CustomPinButton(title: '4', ontap: () => addPin('4')),
                  CustomPinButton(title: '5', ontap: () => addPin('5')),
                  CustomPinButton(title: '6', ontap: () => addPin('6')),
                  CustomPinButton(title: '7', ontap: () => addPin('7')),
                  CustomPinButton(title: '8', ontap: () => addPin('8')),
                  CustomPinButton(title: '9', ontap: () => addPin('9')),
                  const SizedBox(
                    height: 60,
                    width: 60,
                  ),
                  CustomPinButton(title: '0', ontap: () => addPin('0')),
                  GestureDetector(
                    onTap: () {
                      deletePin();
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
