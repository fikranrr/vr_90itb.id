import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vr_90itb_id/providers/auth_provider.dart';
import 'package:vr_90itb_id/theme/theme.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  TextEditingController _nameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _confirmPasswordController = TextEditingController();
  bool _isObscure = true;
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    AuthProvider authProvider = Provider.of<AuthProvider>(context);

    _handleSignUp() async {
      setState(() {
        isLoading = true;
      });

      if (await authProvider.register(
        name: _nameController.text,
        email: _emailController.text,
        password: _passwordController.text,
      )) {
        Navigator.pushNamedAndRemoveUntil(context, '/main', (route) => false);
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            backgroundColor: Colors.red,
            content: Text(
              'Register Failed!',
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
            'Welcome',
            style: primaryTextStyle.copyWith(
              fontWeight: semiBold,
            ),
          ),
          Text(
            'Register',
            style: primaryTextStyle.copyWith(
              fontSize: 36,
              fontWeight: bold,
            ),
          ),
        ],
      );
    }

    Widget inputName() {
      return Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          border: primaryBorder,
        ),
        child: TextField(
          controller: _nameController,
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: 'Name',
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

    Widget inputConfirmPassword() {
      return Container(
        width: double.infinity,
        padding: EdgeInsets.only(left: defaultMargin),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          border: primaryBorder,
        ),
        child: TextField(
          controller: _confirmPasswordController,
          obscureText: _isObscure,
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: 'Confirm Password',
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

    Widget registerButton() {
      return Container(
        height: 48,
        width: double.infinity,
        child: ElevatedButton(
          onPressed: () {
            _handleSignUp();
          },
          style: primaryButtonStyle,
          child: Text(
            isLoading ? 'Loading...' : 'Register',
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
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Already have an account? ',
                style: secondaryTextStyle.copyWith(
                  fontSize: 13,
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/sign-in');
                },
                child: Text(
                  'Sign In',
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
                inputName(),
                SizedBox(
                  height: defaultMargin,
                ),
                inputEmail(),
                SizedBox(
                  height: defaultMargin,
                ),
                inputPassword(),
                SizedBox(
                  height: defaultMargin,
                ),
                inputConfirmPassword(),
                SizedBox(
                  height: defaultMargin * 4,
                ),
                registerButton(),
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
