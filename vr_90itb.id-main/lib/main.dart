import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vr_90itb_id/pages/auth/reset_password_page.dart';
import 'package:vr_90itb_id/pages/auth/sign_in_page.dart';
import 'package:vr_90itb_id/pages/auth/sign_up_page.dart';
import 'package:vr_90itb_id/pages/home/profile_widgets/cetak_certif_page.dart';
import 'package:vr_90itb_id/pages/home/profile_widgets/cetak_ebib_page.dart';
import 'package:vr_90itb_id/pages/home/profile_widgets/edit_profile.dart';
import 'package:vr_90itb_id/pages/home/profile_widgets/gallery_page.dart';
import 'package:vr_90itb_id/pages/home/profile_widgets/grafik_page.dart';
import 'package:vr_90itb_id/pages/home/home_page.dart';
import 'package:vr_90itb_id/pages/home/main_page.dart';
import 'package:vr_90itb_id/pages/home/pendaftaran_page.dart';
import 'package:vr_90itb_id/pages/home/profile_page.dart';
import 'package:vr_90itb_id/pages/home/profile_widgets/pembayaran_page.dart';
import 'package:vr_90itb_id/pages/onboarding_page.dart';
import 'package:vr_90itb_id/pages/splash_page.dart';
import 'package:vr_90itb_id/providers/auth_provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => AuthProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => SplashPage(),
          '/onboarding': (context) => OnboardingPage(),
          '/sign-in': (context) => SignInPage(),
          '/sign-up': (context) => SignUpPage(),
          '/reset-password': (context) => ResetPasswordPage(),
          '/main': (context) => MainPage(),
          '/home': (context) => HomePage(),
          '/profile': (context) => ProfilePage(),
          '/edit-profile': (context) => EditProfilePage(),
          '/gallery': (context) => GalleryPage(),
          '/grafik': (context) => GrafikPage(),
          '/pembayaran': (context) => PembayaranPage(),
          '/ebib': (context) => CetakEbibPage(),
          '/ecertificate': (context) => CetakCertificatePage(),
          '/pendaftaran': (context) => PendaftaranPage(),
        },
      ),
    );
  }
}
