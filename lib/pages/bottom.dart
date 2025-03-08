import 'package:finvest/pages/account.dart';
import 'package:finvest/pages/cash.dart';
import 'package:finvest/pages/home.dart';
import 'package:finvest/pages/invest.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Bottom extends StatefulWidget {
  const Bottom({super.key});

  @override
  State<Bottom> createState() => _BottomState();
}

class _BottomState extends State<Bottom> {
  int _index = 0;
  final List<Widget> _pages = const [Home(), Cash(), Invest(), Account()];

  @override
  Widget build(BuildContext context) {
    // Set status bar style
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
        statusBarBrightness: Brightness.light,
      ),
    );

    return Scaffold(
      extendBody: false,

      body: _pages[_index],

      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.9),
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 10,
              spreadRadius: 2,
            ),
          ],
        ),
        //child cliprect
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),

          //Bottom navigation bar
          child: Padding(
            padding: EdgeInsets.all(10),
            child: BottomNavigationBar(
              elevation: 0,
              backgroundColor: Colors.white.withOpacity(0.9),
              selectedItemColor: Colors.blueAccent,
              unselectedItemColor: Colors.grey,
              showUnselectedLabels: false,
              type: BottomNavigationBarType.fixed,
              currentIndex: _index,
              onTap: (index) => setState(() => _index = index),
              items: const [
                //home item
                BottomNavigationBarItem(
                  icon: Icon(Icons.home_outlined),
                  activeIcon: Icon(Icons.home),
                  label: "Home",
                ),

                //Invest item
                BottomNavigationBarItem(
                  icon: Icon(Icons.bar_chart_outlined),
                  activeIcon: Icon(Icons.bar_chart),
                  label: "Invest",
                ),

                //cash item
                BottomNavigationBarItem(
                  icon: Icon(Icons.wallet_outlined),
                  activeIcon: Icon(Icons.wallet),
                  label: "Cash",
                ),

                //Account item
                BottomNavigationBarItem(
                  icon: Icon(Icons.person_outline),
                  activeIcon: Icon(Icons.person),
                  label: "Account",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
