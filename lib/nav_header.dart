import 'package:flutter/material.dart';
import 'ms_dot.dart';
import 'nav_button.dart';
import 'responsive_widget.dart';

class NavHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
        largeScreen: Row(
      mainAxisAlignment: ResponsiveWidget.isSmallScreen(context)
          ? MainAxisAlignment.start
          : MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        MsDot(),
        if (!ResponsiveWidget.isSmallScreen(context))
          Row(
            children: [
              NavButton(
                text: "about",
                onPressed: () {},
              ),
              NavButton(
                text: "work",
                onPressed: () {},
              ),
              NavButton(
                text: "contact",
                onPressed: () {},
              )
            ],
          )
      ],
    ));
  }
}
