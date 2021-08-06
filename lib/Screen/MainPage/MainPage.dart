import 'package:flutter/material.dart';
import 'package:ovo_ui_flutter/Screen/MainPage/Component/MainFAB.dart';
import 'package:ovo_ui_flutter/Screen/MainPage/Component/MainBtmNavbar.dart';
import 'package:ovo_ui_flutter/Screen/Home/HomePage.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  PageController _pagecontroller = PageController();
  @override
  void initState() {
    _pagecontroller = new PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _pagecontroller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: PageView(
        controller: _pagecontroller,
        children: [
          HomePage(
            title: '',
          ),
          //insert, Deals page, Finance page, Profile page here
        ],
        physics: NeverScrollableScrollPhysics(),
      ),
      floatingActionButton: MainFAB(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: MainBottomNavbar(
        pageController: _pagecontroller,
      ),
    );
  }
}
