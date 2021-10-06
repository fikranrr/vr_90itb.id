import 'package:flutter/material.dart';
import 'package:vr_90itb_id/theme/theme.dart';

class ResetPasswordPage extends StatefulWidget {
  @override
  _ResetPasswordPageState createState() => _ResetPasswordPageState();
}

class _ResetPasswordPageState extends State<ResetPasswordPage> {
  TextEditingController _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Row(
        children: [
          Image.asset(
            'assets/logo_90_vr.png',
            width: 56,
          ),
          SizedBox(
            width: 8.0,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '90Kilo Run\nVirtual ITB 2021',
                style: headingTextStyle.copyWith(
                  color: primaryColor,
                  fontSize: 18,
                  fontWeight: bold,
                ),
              ),
              Text(
                'Alumni ITB Angkatan 90',
                style: titleTextStyle.copyWith(
                  color: primaryColor,
                  fontWeight: semiBold,
                ),
              ),
            ],
          ),
        ],
      );
    }

    Widget title() {
      return Text(
        'Reset Password',
        style: primaryTextStyle.copyWith(
          fontSize: 24,
          fontWeight: bold,
        ),
      );
    }

    Widget inputEmail() {
      return Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          border: primaryBorder,
        ),
        child: TextField(
          controller: _emailController,
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: 'Email Address',
            hintStyle: secondaryTextStyle.copyWith(
              fontSize: 18,
            ),
          ),
          style: primaryTextStyle.copyWith(
            fontSize: 18,
          ),
        ),
      );
    }

    Widget resetButton() {
      return Container(
        height: 48,
        width: double.infinity,
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamedAndRemoveUntil(
                context, '/main', (route) => false);
          },
          style: primaryButtonStyle,
          child: Text(
            'Send',
            style: primaryTextStyle.copyWith(
              fontSize: 18,
              fontWeight: semiBold,
            ),
          ),
        ),
      );
    }

    Widget backToLogin() {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextButton(
            onPressed: () {
              Navigator.pushNamed(context, '/sign-in');
            },
            child: Text(
              'Back to Login',
              style: primaryTextStyle.copyWith(
                fontSize: 12,
              ),
            ),
          ),
        ],
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor1,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            margin: EdgeInsets.all(defaultMargin),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                header(),
                SizedBox(
                  height: defaultMargin * 3,
                ),
                title(),
                SizedBox(
                  height: defaultMargin,
                ),
                inputEmail(),
                SizedBox(
                  height: defaultMargin,
                ),
                resetButton(),
                backToLogin(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
