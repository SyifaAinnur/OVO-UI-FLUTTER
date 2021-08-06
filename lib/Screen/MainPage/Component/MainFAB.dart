import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ovo_ui_flutter/Constant/Color.dart';

class MainFAB extends StatelessWidget {
  const MainFAB({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width * 0.135,
      height: size.height * 0.135,
      child: FloatingActionButton(
        onPressed: () {},
        child: SvgPicture.asset(
          "assets/icons/logoscan.svg",
          height: 37,
        ),
        backgroundColor: darkpurple,
        elevation: 0,
      ),
    );
  }
}