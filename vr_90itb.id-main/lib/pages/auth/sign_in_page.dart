import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vr_90itb_id/providers/auth_provider.dart';
import 'package:vr_90itb_id/theme/theme.dart';

class SignInPage extends StatefulWidget {
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  bool _isObscure = true;
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    AuthProvider authProvider = Provider.of<AuthProvider>(context);

    _handleSignIn() async {
      setState(() {
        isLoading = true;
      });

      if (await authProvider.login(
        email: _emailController.text,
        password: _passwordController.text,
      )) {
        Navigator.pushNamedAndRemoveUntil(context, '/main', (route) => false);
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            backgroundColor: Colors.red,
            content: Text(
              'Login Failed!',
              textAlign: TextAlign.center,
            ),
          ),
        );
      }

      setState(() {
        isLoading = false;
      });
    }

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
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Welcome Back',
            style: primaryTextStyle.copyWith(
              fontWeight: semiBold,
            ),
          ),
          Text(
            'Login',
            style: primaryTextStyle.copyWith(
              fontSize: 36,
              fontWeight: bold,
            ),
          ),
        ],
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

    Widget inputPassword() {
      return Container(
        width: double.infinity,
        padding: EdgeInsets.only(left: defaultMargin),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          border: primaryBorder,
        ),
        child: TextField(
          controller: _passwordController,
          obscureText: _isObscure,
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: 'Password',
            hintStyle: secondaryTextStyle.copyWith(
              fontSize: 18,
            ),
            suffixIcon: IconButton(
              icon: Icon(
                _isObscure ? Icons.visibility_off : Icons.visibility,
                color: this._isObscure ? secondaryColor : primaryColor,
              ),
              onPressed: () {
                setState(() {
                  _isObscure = !_isObscure;
                });
              },
            ),
          ),
          style: primaryTextStyle.copyWith(
            fontSize: 18,
          ),
        ),
      );
    }

    Widget forgotPassword() {
      return Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          TextButton(
            onPressed: () {
              Navigator.pushNamed(context, '/reset-password');
            },
            child: Text(
              "Forgot your password?",
              style: primaryTextStyle.copyWith(
                fontSize: 12,
              ),
            ),
          ),
        ],
      );
    }

    Widget loginButton() {
      return Container(
        height: 48,
        width: double.infinity,
        child: ElevatedButton(
          onPressed: () {
            _handleSignIn();
          },
          style: primaryButtonStyle,
          child: Text(
            isLoading ? 'Loading...' : 'Login',
            style: primaryTextStyle.copyWith(
              fontSize: 18,
              fontWeight: semiBold,
            ),
          ),
        ),
      );
    }

    Widget footer() {
      return Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Divider(
                  color: secondaryColor,
                  endIndent: 16.0,
                ),
              ),
              Text(
                'Or, sign in with',
                style: secondaryTextStyle.copyWith(
                  fontSize: 13,
                ),
              ),
              Expanded(
                child: Divider(
                  color: secondaryColor,
                  indent: 16.0,
                ),
              ),
            ],
          ),
          SizedBox(
            height: defaultMargin,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 48,
                width: 152,
                child: ElevatedButton(
                  onPressed: () {},
                  style: secondaryButtonStyle,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/ic_google.png',
                        color: lightColor,
                        width: 24,
                      ),
                      SizedBox(
                        width: 8.0,
                      ),
                      Text(
                        'Google',
                        style: lightColorTextStyle.copyWith(
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: 48,
                width: 160,
                child: ElevatedButton(
                  onPressed: () {},
                  style: secondaryButtonStyle,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/ic_facebook.png',
                        color: lightColor,
                        width: 24,
                      ),
                      SizedBox(
                        width: 8.0,
                      ),
                      Text(
                        'Facebook',
                        style: lightColorTextStyle.copyWith(
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: defaultMargin,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Don\'t have a VR account? ',
                style: secondaryTextStyle.copyWith(
                  fontSize: 13,
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/sign-up');
                },
                child: Text(
                  'Sign Up',
                  style: accentTextStyle,
                ),
              ),
            ],
          ),
          Divider(
            color: secondaryColor,
            indent: defaultMargin * 4,
            endIndent: defaultMargin * 4,
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
                  height: defaultMargin * 2,
                ),
                inputEmail(),
                SizedBox(
                  height: defaultMargin,
                ),
                inputPassword(),
                forgotPassword(),
                SizedBox(
                  height: defaultMargin * 4,
                ),
                loginButton(),
                SizedBox(
                  height: defaultMargin,
                ),
                footer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
