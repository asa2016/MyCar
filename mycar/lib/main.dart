import 'package:flutter/material.dart';
import 'file:///D:/Projects/MyCar/Repo/mycar/lib/ui/main_page.dart';
import 'package:mycar/test_widget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      debugShowMaterialGrid: false,
      title: 'سيارتي',
      theme: ThemeData(
        primarySwatch: Colors.orange,
        fontFamily: 'Cairo',
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: getRoot(MainPage(), context),
    );
  }

  static Widget getRoot(Widget widget, BuildContext context) {
    return Directionality(
        textDirection: TextDirection.rtl,
        child: GestureDetector(
            onTap: () {
              FocusScope.of(context).requestFocus(new FocusNode());
            },
            child: widget));
  }

}

