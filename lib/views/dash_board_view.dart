import 'package:flutter/material.dart';
import 'package:responsive_dashboard/views/Widget/adaptive_layout.dart';
import 'package:responsive_dashboard/views/Widget/mobile_layout.dart';
import 'package:responsive_dashboard/views/Widget/tablet_layout.dart';
import 'package:responsive_dashboard/views/desktop_layout.dart';

class DashBoardView extends StatelessWidget {
  const DashBoardView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: const Color(0xFFF7F9FA),
      body: AdabtiveLayoutBuilder(  
        mobileLayout: (context)=>const MobileLayout(),
        tabletLayout: (context)=>const TabletLayout(),
        desktopLayout: (context)=> const DesktopLayout(),
      ),
    );
  }
}
