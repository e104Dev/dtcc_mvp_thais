import 'package:dtcc_mvp_thais/pages/home.dart';
import 'package:flutter/material.dart';

main() => runApp(const MvpThais());

class MvpThais extends StatelessWidget {
  const MvpThais({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.lime),
      home: HomePage(),
    );
  }
}
