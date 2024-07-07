import 'package:flutter/material.dart';
import 'package:responsive_dashboard/views/Widget/adaptive_layout.dart';
import 'package:responsive_dashboard/views/desktop_layout.dart';

class DashBoardView extends StatelessWidget {
  const DashBoardView({super.key});

  @override
  Widget build(BuildContext context) {
    return  AdabtiveLayoutBuilder(
      mobileLayout: (context)=>const SizedBox(),
      tabletLayout: (context)=>const SizedBox(),
      desktopLayout: (context)=> const DesktopLayout(),
    );
  }
}
