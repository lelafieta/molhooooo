import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../config/themes/app_colors.dart';
import '../../../core/resources/app_icons.dart';
import '../../home/presentation/home_page.dart';

class MolhoooooPage extends StatefulWidget {
  const MolhoooooPage({super.key});

  @override
  State<MolhoooooPage> createState() => _MolhoooooPageState();
}

class _MolhoooooPageState extends State<MolhoooooPage> {
  var _currentIndex = 0;

  List<Widget> widgets = [
    HomePage(),
    // Text("3"),
    Text("4"),
  ];

  List<String> iconList = [
    AppIcons.todo,
    // AppIcons.apps,
    AppIcons.user,
  ];

  List<String> iconListBold = [
    AppIcons.todoBold,
    // AppIcons.appsBold,
    AppIcons.userBold,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widgets[_currentIndex],
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: ClipOval(
        child: FloatingActionButton(
          backgroundColor: AppColors.primaryColor,
          onPressed: () {},
          elevation: 2.0,
          child: SvgPicture.asset(
            AppIcons.beerBold,
            color: Colors.white,
          ),
        ),
      ),
      bottomNavigationBar: AnimatedBottomNavigationBar.builder(
        backgroundColor: Colors.white,
        itemCount: 2,
        activeIndex: _currentIndex,
        gapLocation: GapLocation.none,
        notchSmoothness: NotchSmoothness.softEdge,
        leftCornerRadius: 0,
        rightCornerRadius: 0,
        height: 60,
        shadow: BoxShadow(
          color: AppColors.shadowColor.withOpacity(.1),
          blurRadius: 100,
        ),
        onTap: (index) => setState(() => _currentIndex = index),
        tabBuilder: (int index, bool isActive) {
          return IconButton(
            icon: SvgPicture.asset(
              (isActive) ? iconListBold[index] : iconList[index],
              width: 20,
              color: (isActive)
                  ? AppColors.primaryColor
                  : Colors.black.withOpacity(.6),
            ),
            onPressed: () => setState(() => _currentIndex = index),
          );
        },
      ),
    );
  }
}
