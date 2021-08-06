import 'package:flutter/material.dart';
import 'package:ovo_ui_flutter/Constant/Color.dart';
import 'InstantTopUp/InstantTopUp.dart';
import 'MetodeLain/Metodelain.dart';

class TopUpPage extends StatefulWidget {
  @override
  _TopUpPageState createState() => _TopUpPageState();
}

class _TopUpPageState extends State<TopUpPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  late int selectedIndex;

  @override
  void initState() {
    _tabController = new TabController(length: 2, vsync: this, initialIndex: 0);
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: darkpurple,
        elevation: 0,
        title: Text("Top Up"),
        bottom: new TabBar(
            indicatorColor: cyantext,
            indicatorWeight: 3.0,
            controller: _tabController,
            labelPadding: const EdgeInsets.symmetric(
              vertical: 13.0,
            ),
            labelStyle:
                const TextStyle(fontSize: 14.0, fontWeight: FontWeight.w600),
            tabs: [
              const Text("Instan Top Up"),
              const Text("Metode Lain"),
            ]),
      ),
      body: TabBarView(children:[
        new InstantTopUp(),
        new MetodeLain(),
      ],controller: _tabController,),
    );
  }
}
