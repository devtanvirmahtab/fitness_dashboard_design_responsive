import 'package:fitness_dashboard_design_responsive/const/constant.dart';
import 'package:fitness_dashboard_design_responsive/data/side_menu_data.dart';
import 'package:flutter/material.dart';

class SideMenuWidget extends StatefulWidget {
  const SideMenuWidget({super.key});

  @override
  State<SideMenuWidget> createState() => _SideMenuWidgetState();
}

class _SideMenuWidgetState extends State<SideMenuWidget> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    final data = SideMenuData();
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 40,
      ),
      child: ListView.builder(
        itemCount: data.menu.length,
        itemBuilder: (context, index) => buildMenuEntry(data, index),
      ),
    );
  }

  Widget buildMenuEntry(SideMenuData data, int index) {
    final isSelected = selectedIndex == index;
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6.0),
        color: isSelected ? selectionColor : Colors.transparent,
      ),
      child: InkWell(
        onTap:(){
          selectedIndex = index;
          setState(() {
          });
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 13.0,
            vertical: 7,
          ),
          child: Row(
            children: [
              Icon(
                data.menu[index].icon,
                color: isSelected ?  Colors.black : Colors.grey,
              ),
              const SizedBox(width:10),
              Text(
                data.menu[index].title,
                style: TextStyle(
                  fontSize: 16,
                  color: isSelected ?  Colors.black : Colors.grey,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
