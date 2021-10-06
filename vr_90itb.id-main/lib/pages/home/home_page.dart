import 'package:flutter/material.dart';
import 'package:vr_90itb_id/theme/theme.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget homeTile(
      String subTitle,
      String icon,
      String title,
      String content,
      String gd,
    ) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            subTitle,
            style: secondaryTextStyle.copyWith(
              fontWeight: medium,
            ),
          ),
          SizedBox(
            height: 4.0,
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/$gd');
            },
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.all(defaultMargin),
              decoration: BoxDecoration(
                color: backgroundColor3,
                borderRadius: BorderRadius.circular(24.0),
                boxShadow: [primaryBoxShadow],
              ),
              child: Row(
                children: [
                  Image.asset(
                    'assets/$icon',
                    width: 56,
                  ),
                  SizedBox(
                    width: defaultMargin,
                  ),
                  Flexible(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          title,
                          style: primaryTextStyle.copyWith(
                            fontSize: 16,
                            fontWeight: bold,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        Text(
                          content,
                          style: subtitleTextStyle.copyWith(
                            fontSize: 12,
                          ),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      );
    }

    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: const <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.grey,
              ),
              child: Text(
                'Drawer Header',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.message),
              title: Text('Dummy Drawer'),
            ),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text('Dummy Drawer'),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Dummy Drawer'),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.5,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/img_home_bg.png',
                  ),
                  fit: BoxFit.fitWidth,
                  alignment: Alignment.topCenter,
                ),
              ),
            ),
            SafeArea(
              child: Builder(
                builder: (context) => IconButton(
                  icon: Image.asset(
                    'assets/ic_menu.png',
                  ),
                  onPressed: () => Scaffold.of(context).openDrawer(),
                  iconSize: 36,
                ),
              ),
            ),
            Container(
              width: double.infinity,
              margin: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.35,
              ),
              padding: EdgeInsets.all(defaultMargin),
              decoration: BoxDecoration(
                color: backgroundColor2,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(24),
                  topRight: Radius.circular(24),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  homeTile(
                    'Pendaftaran',
                    'ic_sign_up.png',
                    'Pendaftaran',
                    'Informasi mengenai pendaftaran Virtual Run 2021',
                    'pendaftaran',
                  ),
                  SizedBox(
                    height: defaultMargin,
                  ),
                  homeTile(
                    'Informasi',
                    'ic_info.png',
                    'Informasi 90Kilo Virtual Run',
                    'Informasi mengenai pendaftaran Virtual Run 2021',
                    '',
                  ),
                  SizedBox(
                    height: defaultMargin,
                  ),
                  homeTile(
                    'Hasil',
                    'ic_result.png',
                    'Hasil Perlombaan',
                    'Hasil dari perlombaan Virtual Run',
                    '',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
