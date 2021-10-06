import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:vr_90itb_id/theme/theme.dart';
import 'package:dropdownfield/dropdownfield.dart';
import 'package:provider/provider.dart';

class PendaftaranPage extends StatefulWidget {
  @override
  _PendaftaranPageState createState() => _PendaftaranPageState();
}

class _PendaftaranPageState extends State<PendaftaranPage> {
  final TextEditingController _controllerLomba = new TextEditingController();
  final TextEditingController _controllerRelay = new TextEditingController();
  final TextEditingController _controllerJK = new TextEditingController();
  List<String> kategoriLomba = [
    "90K (Rp. 250.000)",
    "30K (Rp. 150.000)",
  ];
  List<String> kategoriRelay = [
    "PR - R2",
    "PR - R3",
    "PR - R9",
    "PR - R18",
  ];
  List<String> kategoriJK = [
    "Laki-Laki",
    "Perempuan",
  ];

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
                'Alunmi Angkatan 90',
                style: titleTextStyle.copyWith(
                  fontWeight: semiBold,
                  color: primaryColor,
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
          Container(
            padding: EdgeInsets.only(left: 36),
            child: Text(
              'Registrasi Lomba\n Virtual Run',
              style: title2TextStyle.copyWith(
                fontSize: 24,
                fontWeight: semiBold,
              ),
            ),
          ),
        ],
      );
    }

    Widget inputLomba() {
      return Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          border: primaryBorder,
        ),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 8),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: TextField(
                      controller: _controllerLomba,
                      decoration: InputDecoration(
                        suffixIcon: PopupMenuButton<String>(
                          icon: const Icon(Icons.arrow_drop_down),
                          onSelected: (String value) {
                            _controllerLomba.text = value;
                          },
                          itemBuilder: (BuildContext context) {
                            return kategoriLomba
                                .map<PopupMenuItem<String>>((String value) {
                              return new PopupMenuItem(
                                  child: new Text(value), value: value);
                            }).toList();
                          },
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      );
    }

    Widget inputRelay() {
      return Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          border: primaryBorder,
        ),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 8),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: TextField(
                      controller: _controllerRelay,
                      decoration: InputDecoration(
                        suffixIcon: PopupMenuButton<String>(
                          icon: const Icon(Icons.arrow_drop_down),
                          onSelected: (String value) {
                            _controllerRelay.text = value;
                          },
                          itemBuilder: (BuildContext context) {
                            return kategoriRelay
                                .map<PopupMenuItem<String>>((String value) {
                              return new PopupMenuItem(
                                  child: new Text(value), value: value);
                            }).toList();
                          },
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      );
    }

    Widget inputJenisKelamin() {
      return Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          border: primaryBorder,
        ),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 8),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: TextField(
                      controller: _controllerJK,
                      decoration: InputDecoration(
                        suffixIcon: PopupMenuButton<String>(
                          icon: const Icon(Icons.arrow_drop_down),
                          onSelected: (String value) {
                            _controllerJK.text = value;
                          },
                          itemBuilder: (BuildContext context) {
                            return kategoriJK
                                .map<PopupMenuItem<String>>((String value) {
                              return new PopupMenuItem(
                                  child: new Text(value), value: value);
                            }).toList();
                          },
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      );
    }

    Widget titleInput(String text) {
      return Container(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Text(
          '$text',
          style: secondaryTextStyle,
        ),
      );
    }

    Widget inputText(String text) {
      return Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          border: primaryBorder,
        ),
        child: TextField(
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: '$text',
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

    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            margin: EdgeInsets.all(
              defaultMargin,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                header(),
                SizedBox(
                  height: 20,
                ),
                title(),
                SizedBox(
                  height: 20,
                ),
                titleInput('Kategori Lomba'),
                inputLomba(),
                SizedBox(
                  height: 14,
                ),
                titleInput('Kategori Relay'),
                inputRelay(),
                SizedBox(
                  height: 30,
                ),
                Divider(
                  color: primaryColor,
                  indent: defaultMargin * 4,
                  endIndent: defaultMargin * 4,
                ),
                titleInput('Nama'),
                inputText('Nama'),
                SizedBox(
                  height: 14,
                ),
                titleInput('Usia'),
                inputText('Usia'),
                SizedBox(
                  height: 14,
                ),
                titleInput('Jenis Kelamin'),
                inputJenisKelamin(),
                SizedBox(
                  height: 14,
                ),
                titleInput('Angkatan'),
                inputText('Angkatan'),
                SizedBox(
                  height: 14,
                ),
                titleInput('Jurusan'),
                inputText('Jurusan'),
                SizedBox(
                  height: 14,
                ),
                titleInput('Nomor Handphone'),
                inputText('Nomor Handphone'),
                SizedBox(
                  height: 14,
                ),
                titleInput('Alamat'),
                inputText('Alamat'),
                SizedBox(
                  height: 20,
                ),
                Divider(
                  color: secondaryColor,
                  indent: defaultMargin * 4,
                  endIndent: defaultMargin * 4,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
