import 'package:bank_qris/shared/theme.dart';
import 'package:bank_qris/ui/pages/sign_in_page.dart';
import 'package:bank_qris/ui/widgets/buttons.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  int currentIndex = 0;
  CarouselController carouselController = CarouselController();

  List<String> titles = [
    'Grow Your \n Financial Today',
    'Build From \n Zero to Freedom',
    'Start Together',
  ];

  List<String> subTitles = [
    'Our system is helping you to \n achieve a better goal',
    'We provide tips for you so that \n you can adapt easier',
    'We will guide you to where \n you wanted it too',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightBackgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CarouselSlider(
              items: [
                Image.asset(
                  'assets/onboard_1.png',
                  height: 331.0,
                ),
                Image.asset(
                  'assets/onboard_2.png',
                  height: 331.0,
                ),
                Image.asset(
                  'assets/onboard_3.png',
                  height: 331.0,
                ),
              ],
              options: CarouselOptions(
                height: 331.0,
                viewportFraction: 1,
                enableInfiniteScroll: false,
                onPageChanged: (index, reason) {
                  setState(
                    () {
                      currentIndex = index;
                    },
                  );
                },
              ),
              carouselController: carouselController,
            ),
            const SizedBox(
              height: 80.0,
            ),
            Container(
              margin: const EdgeInsets.symmetric(
                horizontal: 24.0,
              ),
              padding: const EdgeInsets.symmetric(
                horizontal: 22.0,
                vertical: 24.0,
              ),
              decoration: BoxDecoration(
                color: whiteColor,
                borderRadius: BorderRadius.circular(
                  20.0,
                ),
              ),
              child: Column(
                children: [
                  Text(
                    titles[currentIndex],
                    style: blackTextStyle.copyWith(
                      fontSize: 20,
                      fontWeight: semiBold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 26.0,
                  ),
                  Text(
                    subTitles[currentIndex],
                    style: greyTextStyle.copyWith(
                      fontSize: 16,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: currentIndex == 2 ? 38.0 : 50.0,
                  ),
                  currentIndex == 2
                      ? Column(
                          children: [
                            CustomFilledButton(
                              title: 'Get Started',
                              onPressed: () {
                                Navigator.pushNamed(context, '/sign-up');
                              },
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                            CustomTextButton(
                              onPressed: () {
                                Navigator.pushNamed(context, '/sign-in');
                              },
                              title: 'Sign In',
                            ),
                          ],
                        )
                      : Row(
                          children: [
                            Container(
                              width: 12,
                              height: 12,
                              margin: const EdgeInsets.only(
                                right: 10.0,
                              ),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: currentIndex == 0
                                    ? blueColor
                                    : lightBackgroundColor,
                              ),
                            ),
                            Container(
                              width: 12,
                              height: 12,
                              margin: const EdgeInsets.only(
                                right: 10.0,
                              ),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: currentIndex == 1
                                    ? blueColor
                                    : lightBackgroundColor,
                              ),
                            ),
                            Container(
                              width: 12,
                              height: 12,
                              margin: const EdgeInsets.only(
                                right: 10.0,
                              ),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: currentIndex == 2
                                    ? blueColor
                                    : lightBackgroundColor,
                              ),
                            ),
                            const Spacer(),
                            CustomFilledButton(
                              widht: 150.0,
                              title: 'Continue',
                              onPressed: () {
                                carouselController.nextPage();
                              },
                            ),
                          ],
                        )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
