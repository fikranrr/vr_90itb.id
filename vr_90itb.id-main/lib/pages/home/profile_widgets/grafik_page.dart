import 'package:flutter/material.dart';
import 'package:vr_90itb_id/theme/theme.dart';

class GrafikPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    PreferredSizeWidget header() {
      return PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: AppBar(
          backgroundColor: Color(0xff7F7C82),
          centerTitle: true,
          title: Row(
            children: [
              Image.asset(
                'assets/logo_90_vr.png',
                width: 50,
              ),
              SizedBox(
                width: 50,
              ),
              Text(
                'Statistik Lari',
                style: primaryTextStyle.copyWith(
                  fontWeight: semiBold,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      );
    }

    Widget content() {
      return Container();
    }

    return Scaffold(
      appBar: header(),
      body: content(),
    );
  }
}
