import 'package:boptee/Utils/Kolors.dart';
import 'package:boptee/View/DashboardPage.dart';
import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  var _currentIndex = 0;
  final GlobalKey<ScaffoldState> _key = GlobalKey(); // Create a key

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          DashBoardPage(key: _key),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: MediaQuery.of(context).padding.top,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Builder(builder: (context) {
                        return IconButton(
                            onPressed: () {
                              Scaffold.of(context).openDrawer();
                            },
                            icon: ImageIcon(
                              AssetImage("assets/Icons/menu.png"),
                              size: 20.0.sp,
                              color: Colors.white,
                            ));
                      }),
                      Text(
                        "BopTee",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 19.0.sp,
                            fontWeight: FontWeight.w300),
                      )
                    ],
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: ImageIcon(
                        AssetImage("assets/Icons/Notification.png"),
                        size: 20.0.sp,
                        color: Colors.white,
                      ))
                ],
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.shade200, spreadRadius: 2, blurRadius: 10)
            ],
            border: Border(
              top: BorderSide(color: Colors.grey.shade200, width: 2),
            )),
        child: SalomonBottomBar(
          selectedColorOpacity: 1,
          unselectedItemColor: Colors.grey.shade500,
          selectedItemColor: Kolors.kButtonBg,
          currentIndex: _currentIndex,
          onTap: (i) => setState(() => _currentIndex = i),
          items: [
            /// Home
            SalomonBottomBarItem(
              icon: const Icon(
                Icons.home,
              ),
              activeIcon: const Icon(
                Icons.home,
                color: Colors.white,
              ),
              title: const Text(
                "Home",
                style: TextStyle(color: Colors.white),
              ),
            ),
            SalomonBottomBarItem(
              icon: const ImageIcon(AssetImage("assets/Icons/order.png")),
              activeIcon: const ImageIcon(
                AssetImage("assets/Icons/order.png"),
                color: Colors.white,
              ),
              title: const Text(
                "Order",
                style: TextStyle(color: Colors.white),
              ),
            ),

            SalomonBottomBarItem(
              icon: const ImageIcon(AssetImage("assets/Icons/Cart.png")),
              activeIcon: const ImageIcon(
                AssetImage("assets/Icons/Cart.png"),
                color: Colors.white,
              ),
              title: const Text(
                "Cart",
                style: TextStyle(color: Colors.white),
              ),
            ),

            SalomonBottomBarItem(
              icon: const ImageIcon(AssetImage("assets/Icons/Wallet.png")),
              activeIcon: const ImageIcon(
                AssetImage("assets/Icons/Wallet.png"),
                color: Colors.white,
              ),
              title: const Text(
                "Wallet",
                style: TextStyle(color: Colors.white),
              ),
            ),

            SalomonBottomBarItem(
              icon: const ImageIcon(AssetImage("assets/Icons/More.png")),
              activeIcon: const ImageIcon(
                AssetImage("assets/Icons/More.png"),
                color: Colors.white,
              ),
              title: const Text(
                "More",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
