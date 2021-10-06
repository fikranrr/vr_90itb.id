import 'package:flutter/material.dart';
import 'package:vr_90itb_id/theme/theme.dart';

class CetakCertificatePage extends StatelessWidget {
  PreferredSizeWidget header() {
    return PreferredSize(
      preferredSize: Size.fromHeight(60),
      child: AppBar(
        backgroundColor: Color(0xffFBFBFB),
        centerTitle: true,
        title: Row(
          children: [
            Image.asset(
              'assets/logo_90_vr.png',
              width: 40,
            ),
            SizedBox(
              width: 50,
            ),
            Text(
              'eCertificate',
              style: primaryTextStyle.copyWith(
                fontWeight: semiBold,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget title() {
    return Container(
      child: Container(
        padding: EdgeInsets.only(
          top: 70,
          left: defaultMargin,
          right: defaultMargin,
        ),
        child: Center(
          child: Column(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/img_great_job.png',
                    height: 287,
                    width: 287,
                  ),
                  SizedBox(
                    height: 31,
                  ),
                  Text(
                    'Great Job!',
                    style: primaryTextStyle.copyWith(
                      fontSize: 36,
                      fontWeight: semiBold,
                    ),
                  ),
                  SizedBox(
                    height: 31,
                  ),
                  Text(
                    'You have earned your certificate',
                    style: primaryTextStyle.copyWith(
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget content() {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          title(),
          SizedBox(
            height: 143,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {},
                style: primaryButtonStyle,
                child: Text(
                  'Get e-Certificate',
                  style: primaryTextStyle.copyWith(
                    fontSize: 14,
                    fontWeight: bold,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: header(),
      body: content(),
    );
  }
}
