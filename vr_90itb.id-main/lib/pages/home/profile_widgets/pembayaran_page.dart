import 'package:flutter/material.dart';
import 'package:vr_90itb_id/theme/theme.dart';

class PembayaranPage extends StatelessWidget {
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
              'Pembayaran',
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: header(),
    );
  }
}
