// ignore_for_file: must_be_immutable

import 'package:coaching_app/assets_helper/app_colors.dart';
import 'package:coaching_app/assets_helper/app_icons.dart';
import 'package:coaching_app/features/update_home/statestic/presentation/statestic_screen.dart';
import 'package:coaching_app/features/update_home/tracker/presentation/tracker_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'features/update_home/home/presentation/home.dart';
import 'features/update_home/meal/presentation/meals_screen.dart';
import 'features/update_home/workout/presentation/workout.dart';

class BottomNavBar extends StatefulWidget {
  int? pageNum;
  BottomNavBar({super.key, this.pageNum});

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _currentIndex = 0;

  final List<Widget> screens = [
    HomeScreen(),
    MealsScreen(),
    WorkoutScreen(),
    TrackerScreen(),
    StatesticScreen(),
  ];

  void onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  void initState() {
    super.initState();
    _currentIndex = widget.pageNum ?? 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: onItemTapped,
        type: BottomNavigationBarType.fixed,
        backgroundColor: AppColor.c1B1B1D,
        selectedItemColor: AppColor.cF97316,
        unselectedItemColor: Colors.grey,
        elevation: 20,
        showUnselectedLabels: false,
        selectedLabelStyle: TextStyle(fontSize: 12),
        unselectedLabelStyle: TextStyle(fontSize: 12),
        items: [

          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              AppIcons.home,
            ),
            label: _currentIndex == 0 ? 'Home' : '',
            activeIcon:
                SvgPicture.asset(AppIcons.home, color:  AppColor.cF97316),
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(AppIcons.meals),
            label: _currentIndex == 1 ? 'Meals' : '',
            activeIcon:
                SvgPicture.asset(AppIcons.meals, color: AppColor.cF97316),
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(AppIcons.weight),
            label: _currentIndex == 2 ? 'Workout' : '',
            activeIcon:
                SvgPicture.asset(AppIcons.weight, color: AppColor.cF97316),
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(AppIcons.frame),
            label: _currentIndex == 3 ? 'Tracker' : '',
            activeIcon:
                SvgPicture.asset(AppIcons.frame, color: AppColor.cF97316),
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(AppIcons.activity),
            label: _currentIndex == 4 ? 'Activity' : '',
            activeIcon:
                SvgPicture.asset(AppIcons.activity, color: AppColor.cF97316),
          ),
        ],
      ),
    );
  }
}

