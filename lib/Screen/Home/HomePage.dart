import 'package:flutter/material.dart';
import 'Component/Purple_BG.dart';
import 'package:ovo_ui_flutter/Screen/MainPage/Component/MainAppbar.dart';
import 'Component/OVO_Cash.dart';
import 'Component/OVO_Service.dart';
import 'Component/Service_Menu.dart';
import 'Component/Info_Carousel.dart';
import 'Component/info_Menarik.dart';

class HomePage extends StatefulWidget {
  const HomePage({required this.title});

  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: mainappbar(widget.title),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  color: Colors.white,
                  height: MediaQuery.of(context).size.height * 0.5,
                ),
                PurpleBG(),
                Column(
                  children: [
                    SizedBox(
                      height: 4
                    ),
                    OVOCash(),
                    TopUpService(),
                    ServiceMenu(),
                    InfoPromoCarousel(),
                    InfoMenarik(),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}