
import 'package:flutter/material.dart';
import 'package:tabbarview/pages/first_page.dart';

import 'pages/second_page.dart';
import 'pages/third_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
with SingleTickerProviderStateMixin {
  late TabController controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    controller = TabController(length: 3, vsync: this);
    controller.addListener(() {
      setState(() { });
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => Scaffold (
      appBar: AppBar(
        title: Text('Tab ${controller.index + 1 }'),
        centerTitle: true,
        bottom: TabBar(
          controller: controller,
          tabs: [
            Tab(text: 'Tab 1', icon: Icon(Icons.home),),
            Tab(text: 'Tab 2', icon: Icon(Icons.star),),
            Tab(text: 'Tab 3', icon: Icon(Icons.person),),
          ],
        ),
      ),
      body: TabBarView(
        controller: controller,
        children: [
          FirstPage(),
          SecondPage(),
          ThirdPage(),
        ],
      ),
  );
}
