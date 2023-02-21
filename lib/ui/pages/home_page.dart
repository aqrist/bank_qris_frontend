import 'package:bank_qris/shared/theme.dart';
import 'package:bank_qris/ui/widgets/home_services_item.dart';
import 'package:bank_qris/ui/widgets/home_tips_item.dart';
import 'package:bank_qris/ui/widgets/home_trx_item.dart';
import 'package:bank_qris/ui/widgets/home_user_item.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightBackgroundColor,
      bottomNavigationBar: BottomAppBar(
        color: whiteColor,
        shape: const CircularNotchedRectangle(),
        clipBehavior: Clip.antiAlias,
        notchMargin: 6.0,
        elevation: 0,
        child: BottomNavigationBar(
          backgroundColor: whiteColor,
          elevation: 0,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: blueColor,
          unselectedItemColor: blackColor,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          selectedLabelStyle:
              blueTextStyle.copyWith(fontSize: 10, fontWeight: medium),
          unselectedLabelStyle:
              blackTextStyle.copyWith(fontSize: 10, fontWeight: medium),
          items: [
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/bt_overview.png',
                width: 20.0,
                color: blueColor,
              ),
              label: 'Overview',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/bt_history.png',
                width: 20.0,
              ),
              label: 'History',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/bt_statistic.png',
                width: 20.0,
              ),
              label: 'Statistic',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/bt_reward.png',
                width: 20.0,
              ),
              label: 'Reward',
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: purpleColor,
        onPressed: () {},
        child: Image.asset(
          'assets/bt_circle.png',
          width: 24.0,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 24.0,
        ),
        children: [
          const SizedBox(
            height: 40.0,
          ),
          buildProfile(context),
          buildCard(),
          buildLevel(),
          buildServices(context),
          buildTransaction(),
          buildSendAgain(),
          buildFriendlyTips(),
        ],
      ),
    );
  }

  Widget buildProfile(BuildContext context) => Container(
        margin: const EdgeInsets.only(top: 40.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Howdy,',
                  style: greyTextStyle.copyWith(
                    fontSize: 16.0,
                  ),
                ),
                const SizedBox(
                  height: 2.0,
                ),
                Text(
                  'Inori',
                  style: blackTextStyle.copyWith(
                    fontSize: 20,
                    fontWeight: semiBold,
                  ),
                )
              ],
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/profile');
              },
              child: Container(
                width: 60,
                height: 60,
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
                    width: 16,
                    height: 16,
                    decoration: BoxDecoration(
                      color: whiteColor,
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: Icon(
                        Icons.check_circle,
                        color: greenColor,
                        size: 14.0,
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      );

  Widget buildCard() => Container(
        margin: const EdgeInsets.only(
          top: 30,
        ),
        padding: const EdgeInsets.all(30.0),
        width: double.infinity,
        height: 220,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            28.0,
          ),
          image: const DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/card.png'),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Inori Yuzuriha',
              style: whiteTextStyle.copyWith(
                fontWeight: medium,
                fontSize: 18,
              ),
            ),
            const SizedBox(
              height: 28.0,
            ),
            Text(
              '**** **** **** 8095',
              style: whiteTextStyle.copyWith(
                fontSize: 18,
                fontWeight: medium,
                letterSpacing: 6,
              ),
            ),
            const SizedBox(
              height: 21.0,
            ),
            Text(
              'Balance',
              style: whiteTextStyle.copyWith(
                fontSize: 14.0,
              ),
            ),
            Text(
              'Rp 90.000.000',
              style: whiteTextStyle.copyWith(
                fontSize: 24.0,
                fontWeight: semiBold,
              ),
            ),
          ],
        ),
      );

  Widget buildLevel() => Container(
        margin: const EdgeInsets.only(top: 20.0),
        padding: const EdgeInsets.all(22.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            20.0,
          ),
          color: whiteColor,
        ),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  'Level 9',
                  style: blackTextStyle.copyWith(
                    fontWeight: medium,
                  ),
                ),
                const Spacer(),
                Text(
                  '99% ',
                  style: greenTextStyle.copyWith(
                    fontSize: 14.0,
                    fontWeight: semiBold,
                  ),
                ),
                Text(
                  'of Rp. 100.000.000',
                  style: blackTextStyle.copyWith(
                    fontSize: 14.0,
                    fontWeight: semiBold,
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
              ],
            ),
            const SizedBox(
              height: 10.0,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(55),
              child: LinearProgressIndicator(
                value: 0.89,
                minHeight: 5,
                valueColor: AlwaysStoppedAnimation(greenColor),
                backgroundColor: lightBackgroundColor,
              ),
            )
          ],
        ),
      );

  Widget buildServices(BuildContext context) => Container(
        margin: const EdgeInsets.only(top: 30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Do Something',
              style: blackTextStyle.copyWith(
                fontSize: 16.0,
                fontWeight: semiBold,
              ),
            ),
            const SizedBox(height: 14.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                HomeServiceItem(
                  icon: 'assets/topup.png',
                  title: 'Top Up',
                  ontap: () {
                    Navigator.pushNamed(context, '/topup');
                  },
                ),
                HomeServiceItem(
                  icon: 'assets/send.png',
                  title: 'Send',
                  ontap: () {
                    Navigator.pushNamed(context, '/transfer');
                  },
                ),
                HomeServiceItem(
                  icon: 'assets/withdraw.png',
                  title: 'Withdraw',
                  ontap: () {},
                ),
                HomeServiceItem(
                  icon: 'assets/more.png',
                  title: 'More',
                  ontap: () {
                    showDialog(
                        context: context,
                        builder: (context) => const MoreDialog());
                  },
                ),
              ],
            )
          ],
        ),
      );

  Widget buildTransaction() => Container(
        margin: const EdgeInsets.only(top: 30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Latest Transaction',
              style: blackTextStyle.copyWith(
                fontSize: 16.0,
                fontWeight: semiBold,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 14.0),
              padding: const EdgeInsets.all(22.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: whiteColor,
              ),
              child: Column(
                children: const [
                  HomeTrxItem(
                    iconUrl: 'assets/trx_1.png',
                    time: 'Yesterday',
                    title: 'Top Up',
                    value: 'Rp. 10.000.000',
                  ),
                  HomeTrxItem(
                    iconUrl: 'assets/trx_2.png',
                    time: 'Yesterday',
                    title: 'Cashback',
                    value: 'Rp. 10.000',
                  ),
                  HomeTrxItem(
                    iconUrl: 'assets/trx_1.png',
                    time: 'Yesterday',
                    title: 'Top Up',
                    value: 'Rp. 10.000.000',
                  ),
                ],
              ),
            )
          ],
        ),
      );

  Widget buildSendAgain() => Container(
        margin: const EdgeInsets.only(top: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Send Again',
              style: blackTextStyle.copyWith(
                fontSize: 16.0,
                fontWeight: semiBold,
              ),
            ),
            const SizedBox(
              height: 14,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: const [
                  HomeUserItem(
                    imgUrl: 'assets/person2.png',
                    userName: 'yuanita',
                  ),
                  HomeUserItem(
                    imgUrl: 'assets/person3.png',
                    userName: 'dafuq',
                  ),
                  HomeUserItem(
                    imgUrl: 'assets/person2.png',
                    userName: 'yuanita',
                  ),
                  HomeUserItem(
                    imgUrl: 'assets/person3.png',
                    userName: 'dafuq',
                  ),
                  HomeUserItem(
                    imgUrl: 'assets/person2.png',
                    userName: 'yuanita',
                  ),
                  HomeUserItem(
                    imgUrl: 'assets/person3.png',
                    userName: 'dafuq',
                  ),
                ],
              ),
            )
          ],
        ),
      );

  Widget buildFriendlyTips() => Container(
        margin: const EdgeInsets.only(top: 30, bottom: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Friendly Tips',
              style: blackTextStyle.copyWith(
                fontSize: 16.0,
                fontWeight: semiBold,
              ),
            ),
            const SizedBox(
              height: 14,
            ),
            Wrap(
              spacing: 17.0,
              runSpacing: 18.0,
              children: [
                HomeTipsItem(
                  imgUrl: 'assets/tips1.png',
                  title: 'Best tips for using a credit card',
                  url: Uri(scheme: 'https', host: 'google.com'),
                ),
                const HomeTipsItem(
                  imgUrl: 'assets/tips2.png',
                  title: 'Spot the good pie of finance model',
                ),
                const HomeTipsItem(
                  imgUrl: 'assets/tips3.png',
                  title: 'Great hack to get better advices',
                ),
                const HomeTipsItem(
                  imgUrl: 'assets/tips4.png',
                  title: 'Save more penny buy this instead',
                ),
              ],
            )
          ],
        ),
      );
}

class MoreDialog extends StatelessWidget {
  const MoreDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.transparent,
      insetPadding: EdgeInsets.zero,
      alignment: Alignment.bottomCenter,
      content: Container(
        padding: const EdgeInsets.all(30),
        height: 326,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: lightBackgroundColor,
          borderRadius: BorderRadius.circular(40),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Do more with us',
              style: blackTextStyle.copyWith(
                fontSize: 16,
                fontWeight: semiBold,
              ),
            ),
            const SizedBox(
              height: 13.0,
            ),
            Wrap(
              spacing: 29,
              runSpacing: 25,
              children: [
                HomeServiceItem(
                  icon: 'assets/pp_data.png',
                  title: 'Data',
                  ontap: () {
                    Navigator.pushNamed(context, '/data-provider');
                  },
                ),
                HomeServiceItem(
                  icon: 'assets/pp_water.png',
                  title: 'Water',
                  ontap: () {},
                ),
                HomeServiceItem(
                  icon: 'assets/pp_stream.png',
                  title: 'Stream',
                  ontap: () {},
                ),
                HomeServiceItem(
                  icon: 'assets/pp_movie.png',
                  title: 'Movie',
                  ontap: () {},
                ),
                HomeServiceItem(
                  icon: 'assets/pp_food.png',
                  title: 'Food',
                  ontap: () {},
                ),
                HomeServiceItem(
                  icon: 'assets/pp_travel.png',
                  title: 'Travel',
                  ontap: () {},
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
