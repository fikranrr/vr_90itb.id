import 'package:flutter/material.dart';
import 'package:vr_90itb_id/theme/theme.dart';

class OnboardingPage extends StatefulWidget {
  @override
  _OnboardingPageState createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  final PageController _pageController = PageController();

  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    Widget dotsIndicator(int index) {
      return Container(
        margin: EdgeInsets.only(
          right: defaultMargin,
          bottom: defaultMargin + 8,
        ),
        height: 12,
        width: 12,
        decoration: BoxDecoration(
          color: _selectedIndex == index ? lightColor : Colors.transparent,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: greyColor,
          ),
        ),
      );
    }

    Widget onboardPage(String bgImage) {
      return Container(
        padding: EdgeInsets.only(
          left: defaultMargin,
          top: defaultMargin,
          right: defaultMargin,
          bottom: defaultMargin * 4,
        ),
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/$bgImage'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Image.asset(
              'assets/logo_90_vr.png',
              width: 72,
            ),
            Text(
              '90Kilo Virtual\nRun Event 2021',
              style: headingTextStyle.copyWith(
                fontSize: 28,
                fontWeight: bold,
              ),
            ),
            SizedBox(
              height: defaultMargin,
            ),
            Text(
              'Alumni ITB Angkatan 90',
              style: titleTextStyle.copyWith(
                fontWeight: medium,
              ),
            ),
            SizedBox(
              height: defaultMargin * 9,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                dotsIndicator(0),
                dotsIndicator(1),
                dotsIndicator(2),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 48,
                  width: 152,
                  child: ElevatedButton(
                    onPressed: () {
                      _pageController.nextPage(
                        duration: Duration(milliseconds: 300),
                        curve: Curves.easeInOut,
                      );
                    },
                    style: primaryButtonStyle,
                    child: Text(
                      'Next',
                      style: primaryTextStyle.copyWith(
                        fontSize: 18,
                        fontWeight: semiBold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    }

    Widget onboardLastPage() {
      return Container(
        padding: EdgeInsets.only(
          left: defaultMargin,
          top: defaultMargin,
          right: defaultMargin,
          bottom: defaultMargin * 4,
        ),
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/img_onboarding_3.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Image.asset(
                'assets/logo_90_vr.png',
                width: 160,
              ),
              Text(
                '90Kilo Virtual\nRun Event 2021',
                style: headingTextStyle.copyWith(
                  fontSize: 30,
                  fontWeight: bold,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: defaultMargin,
              ),
              Text(
                'Alumni ITB Angkatan 90',
                style: titleTextStyle.copyWith(
                  fontWeight: medium,
                ),
              ),
              SizedBox(
                height: defaultMargin * 4,
              ),
              Container(
                height: 48,
                width: 152,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamedAndRemoveUntil(
                        context, '/sign-up', (route) => false);
                  },
                  style: primaryButtonStyle,
                  child: Text(
                    'Register',
                    style: primaryTextStyle.copyWith(
                      fontSize: 18,
                      fontWeight: semiBold,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: defaultMargin,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Already have an account? ',
                    style: titleTextStyle,
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamedAndRemoveUntil(
                          context, '/sign-in', (route) => false);
                    },
                    child: Text(
                      'Sign In',
                      style: accentTextStyle,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      body: PageView(
        controller: _pageController,
        scrollDirection: Axis.horizontal,
        onPageChanged: (value) {
          setState(() {
            _selectedIndex = value;
          });
        },
        children: [
          onboardPage('img_onboarding_1.png'),
          onboardPage('img_onboarding_2.png'),
          onboardLastPage(),
        ],
      ),
    );
  }
}
