// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_web_mobile/responsive.dart';
import 'package:flutter_web_mobile/screens/dashboard/dashboard_screen.dart';
import 'package:flutter_web_mobile/screens/main/components/side_menu.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:  [
        if(Responsive.isDesktop(context))
        Expanded(
          child: SideMenu(),
        ),
        Expanded(
          flex: 5,
          child: DashboardScreen(),
        ),
      ],
    )));
  }
}
