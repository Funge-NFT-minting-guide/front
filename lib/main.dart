import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
void main() {
  runApp(const MyApp());
}
// stless
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {

    return CupertinoApp(
      home: MainWidget(),
    );

  }
}

class MainWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    List<BottomNavigationBarItem> items = [
      BottomNavigationBarItem(icon: Icon(CupertinoIcons.flowchart), label: 'Minting'),
      BottomNavigationBarItem(icon: Icon(CupertinoIcons.flowchart_fill), label: 'Air Drop'),
      BottomNavigationBarItem(icon: Icon(CupertinoIcons.book), label: 'Guide'),
      BottomNavigationBarItem(icon: Icon(CupertinoIcons.alarm), label: 'Notify'),
      BottomNavigationBarItem(icon: Icon(CupertinoIcons.person), label: 'My'),
    ];

    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(items: items),
      tabBuilder: (context, index) {
        switch (index) {
          case 0:
            return Center(child: Text("Funge"));
          case 1:
            return Center(child: Text("두번쨰"));
          case 2:
            return Center(child: Text("세번째"));
          case 3:
            return Center(child: Text("네번째"));
          case 4:
            return Center(child: Text("다섯번째"));
          default:
            return Center(child: Text("첫번째"));
        }
      },
    );
  }
}
