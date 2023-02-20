import 'package:bank_qris/shared/theme.dart';
import 'package:bank_qris/ui/pages/profile_menu_item.dart';
import 'package:bank_qris/ui/widgets/buttons.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightBackgroundColor,
      appBar: AppBar(
        title: Text(
          'My Profile',
          style: blackTextStyle.copyWith(
            fontSize: 20,
            fontWeight: semiBold,
          ),
        ),
        iconTheme: IconThemeData(
          color: blackColor,
        ),
        centerTitle: true,
        backgroundColor: lightBackgroundColor,
        elevation: 0,
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        children: [
          const SizedBox(
            height: 20.0,
          ),
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 30,
              vertical: 22,
            ),
            decoration: BoxDecoration(
              color: whiteColor,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                Container(
                  width: 120,
                  height: 120,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage(
                        'assets/person.png',
                      ),
                    ),
                  ),
                  child: Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      width: 28,
                      height: 28,
                      decoration: BoxDecoration(
                        color: whiteColor,
                        shape: BoxShape.circle,
                      ),
                      child: Center(
                        child: Icon(
                          Icons.check_circle,
                          color: greenColor,
                          size: 24.0,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 16.0,
                ),
                Text(
                  'Inori Yuzuriha',
                  style: blackTextStyle.copyWith(
                    fontSize: 18,
                    fontWeight: medium,
                  ),
                ),
                const SizedBox(
                  height: 40.0,
                ),
                // Custom Widget
                ProfileMenuItem(
                  icon: 'assets/pr_profile.png',
                  title: 'Edit Profile',
                  ontap: () {},
                ),
                ProfileMenuItem(
                  icon: 'assets/pr_pin.png',
                  title: 'My PIN',
                  ontap: () {},
                ),
                ProfileMenuItem(
                  icon: 'assets/pr_setting.png',
                  title: 'Wallet Setting',
                  ontap: () {},
                ),
                ProfileMenuItem(
                  icon: 'assets/pr_reward.png',
                  title: 'My Reward',
                  ontap: () {},
                ),
                ProfileMenuItem(
                  icon: 'assets/pr_help.png',
                  title: 'Help',
                  ontap: () {},
                ),
                ProfileMenuItem(
                  icon: 'assets/pr_logout.png',
                  title: 'Logout',
                  ontap: () {},
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 87,
          ),
          CustomTextButton(
            title: 'Report a Problem',
            onPressed: () {},
          ),
          const SizedBox(
            height: 50,
          ),
        ],
      ),
    );
  }
}
