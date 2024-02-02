import 'package:flutter/material.dart';
import 'package:stayhook_main/Screens/home_screen.dart';
import 'package:stayhook_main/Screens/profile_screen.dart';
import 'package:stayhook_main/Screens/property_screen.dart';
import 'package:stayhook_main/Screens/spot_screen.dart';
import 'package:stayhook_main/Screens/tenant_screen.dart';

class BottomNavBar extends StatefulWidget {
  final String device;
  const BottomNavBar({Key? key, required this.device}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {

  List page = [
    HomeScreen(
      device: "Android",
    ),
    TenantScreen(
      device : "Android",
    ),
    PropertyScreen(
      device : "Android"
    ),
    SpotScreen(
      device: "Android",
    ),
    ProfileScreen(
      device: "Android"
    )
  ];
  int currentIndex = 0;
  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: page[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Color(0xff317ABE),
        currentIndex: currentIndex,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        onTap: onTap,
        elevation: 0,
        items: [
          BottomNavigationBarItem(
            label: "Home",
              activeIcon: Image.asset("assets/icons/home .png",
                width: 23,
                color: Color(0xff317ABE),
              ),
              icon: Image.asset("assets/icons/home .png",
                width: 23,
                color: Color(0xffb6b6b6),

              ),
          ),
          BottomNavigationBarItem(
            label: "Tenant",
            activeIcon: Image.asset("assets/icons/lender_tenant.png",
              width: 23,
              color: Color(0xff317ABE),
            ),
            icon: Image.asset("assets/icons/lender_tenant.png",
              width: 23,
              color: Color(0xffb6b6b6),

            ),
          ),
          BottomNavigationBarItem(
            label: "Property",
            activeIcon: Image.asset("assets/icons/property.png",
              width: 23,
              color: Color(0xff317ABE),
            ),
            icon: Image.asset("assets/icons/property.png",
              width: 23,
              color: Color(0xffb6b6b6),

            ),
          ),
          BottomNavigationBarItem(
            label: "Support",
            activeIcon: Image.asset("assets/icons/support_navbar.png",
              width: 23,
              color: Color(0xff317ABE),
            ),
            icon: Image.asset("assets/icons/support_navbar.png",
              width: 23,
              color: Color(0xffb6b6b6),

            ),
          ),
          BottomNavigationBarItem(
            label: "Profile",
            activeIcon: Image.asset("assets/icons/profile.png",
              width: 23,
              color: Color(0xff317ABE),
            ),
            icon: Image.asset("assets/icons/profile.png",
              width: 23,
              color: Color(0xffb6b6b6),

            ),
          )
        ],
      ),
    );
  }
}
