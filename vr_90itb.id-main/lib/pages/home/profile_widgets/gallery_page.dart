import 'package:flutter/material.dart';
import 'package:vr_90itb_id/theme/theme.dart';

class GalleryPage extends StatelessWidget {
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
                width: 40,
              ),
              SizedBox(
                width: 50,
              ),
              Text(
                'GALLERY',
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

    return Scaffold(
      appBar: header(),
      body: Container(
        child: Text(
          'INI GALLERY',
          style: primaryTextStyle.copyWith(
            fontSize: 30,
          ),
        ),
      ),
    );
  }
}
