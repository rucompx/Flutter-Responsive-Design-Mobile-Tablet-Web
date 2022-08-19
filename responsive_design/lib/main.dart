import 'package:flutter/material.dart';
import 'package:responsive_design/responsive/desktop-scaffold.dart';
import 'package:responsive_design/responsive/mobile-scaffold.dart';

import 'package:responsive_design/responsive/responsive-layout.dart';
import 'package:responsive_design/responsive/tablet-scaffold.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: ResponsiveLayout(
          mobile: MobileScaffold(),
          desktop: DesktopScaffold(),
          tablet: TabletScaffold(),
        ));
  }
}
