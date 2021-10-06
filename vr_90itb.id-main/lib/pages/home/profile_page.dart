import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:vr_90itb_id/providers/auth_provider.dart';
import 'package:vr_90itb_id/theme/theme.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    AuthProvider authProvider = Provider.of<AuthProvider>(context);

    Widget header() {
      return Container(
        margin: EdgeInsets.only(bottom: defaultMargin),
        child: Row(
          children: [
            Container(
              width: 64,
              height: 64,
              margin: EdgeInsets.only(right: defaultMargin),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: NetworkImage(authProvider.user.profilePhotoUrl),
                    fit: BoxFit.cover),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Text(
                    authProvider.user.name,
                    style: GoogleFonts.poppins(
                      color: primaryColor,
                      fontSize: 18,
                      fontWeight: semiBold,
                    ),
                  ),
                ),
                Container(
                  child: Text(
                    authProvider.user.email,
                    style: GoogleFonts.poppins(
                      color: secondaryColor,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      );
    }

    Widget menuItem(String text) {
      return Container(
        margin: EdgeInsets.only(top: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              text,
              style: secondaryTextStyle.copyWith(
                fontSize: 12,
                fontWeight: semiBold,
              ),
            ),
            Icon(
              Icons.chevron_right,
              color: primaryColor,
            ),
          ],
        ),
      );
    }

    Widget content() {
      return Expanded(
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: defaultMargin),
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              Text(
                'Account',
                style: secondaryTextStyle.copyWith(
                  fontSize: 20,
                  fontWeight: semiBold,
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/edit-profile');
                },
                child: menuItem('Edit Profile'),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/grafik');
                },
                child: menuItem('Statistik Lari'),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/gallery');
                },
                child: menuItem('Gallery'),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/pembayaran');
                },
                child: menuItem('Pembayaran'),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/ebib');
                },
                child: menuItem('Pencetakan eBib'),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/ecertificate');
                },
                child: menuItem('Pencetakan eCertificate'),
              ),
            ],
          ),
        ),
      );
    }

    Widget logoutButton() {
      return Container(
        height: 48,
        width: double.infinity,
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamedAndRemoveUntil(
                context, '/sign-in', (route) => false);
          },
          style: primaryButtonStyle,
          child: Text(
            'Logout',
            style: primaryTextStyle.copyWith(
              fontSize: 18,
              fontWeight: semiBold,
            ),
          ),
        ),
      );
    }

    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(defaultMargin),
          child: Column(
            children: [
              header(),
              content(),
              logoutButton(),
            ],
          ),
        ),
      ),
    );
  }
}
