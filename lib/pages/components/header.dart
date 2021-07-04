import 'package:demo01/constants.dart';
import 'package:demo01/pages/menu/menu_controller.dart';
import 'package:demo01/responsive.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

class Header extends StatelessWidget {
  const Header({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (!ResponsiveWidget.isDesktop(context))
          Row(
            children: [
              IconButton(
                icon: Icon(Icons.menu),
                onPressed: () {
                  HapticFeedback.mediumImpact();
                  context.read<MenuController>().controlMenu();
                },
              ),
              SizedBox(
                width: defaultPadding,
              ),
            ],
          ),
        if (!ResponsiveWidget.isMobile(context))
          Text(
            "Dashboard",
            style: Theme.of(context).textTheme.headline6,
          ),
        if (!ResponsiveWidget.isMobile(context))
          Spacer(
            flex: ResponsiveWidget.isDesktop(context) ? 2 : 1,
          ),
        Expanded(
          child: ProfileCard(),
        ),
      ],
    );
  }
}

class ProfileCard extends StatelessWidget {
  const ProfileCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: defaultPadding - 10.0,
        vertical: defaultPadding / 2.0 - 1.0,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(defaultBorderRadius),
        border: Border.all(color: Colors.white10),
        color: secondaryColor,
      ),
      child: Row(
        children: [
          Image.asset(
          "assets/images/profile_pic.png",
          height: 38.0,
          ),
          Text(
            "asdfasdfasdfasaasdfassdf",
            style: Theme.of(context).textTheme.subtitle1,
          ),
          if (!ResponsiveWidget.isMobile(context))
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Text("Jane Doe"),
            ),
          Icon(Icons.keyboard_arrow_down),
        ],
      ),
    );
  }
}