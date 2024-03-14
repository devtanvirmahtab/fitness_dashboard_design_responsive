import 'package:fitness_dashboard_design_responsive/widgets/side_menu_widget/side_menu_widget.dart';
import 'package:flutter/material.dart';

import '../widgets/dashboard/dashboard_widget.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          children: [
            const Expanded(
              flex: 2,
              child: SideMenuWidget()
            ),
            const Expanded(
                flex: 7,
                child: DashBoardWidget(),
            ),
            Expanded(
                flex: 3,
                child: Container(
                  color: Colors.green,
                )
            ),
          ],
        ),
      ),
    );
  }
}
