import 'package:flutter/material.dart';

import 'header_widget.dart';

class DashBoardWidget extends StatelessWidget {
  const DashBoardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(height: 18,),
        HeaderWidget(),
      ],
    );
  }
}
