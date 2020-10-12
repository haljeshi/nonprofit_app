import 'package:flutter/material.dart';
import 'package:oscharity/screens/donations_screen.dart';
import 'package:oscharity/screens/goals_screen.dart';
import 'package:oscharity/screens/profile_page.dart';
import 'constants.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: [
        GlobalCupertinoLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [
        Locale("ar", "SA"),
      ],
      locale: Locale("ar", "SA"),
      title: 'Flutter Demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  PageController _pageController = PageController();
  List<Widget> _screens = [
    GoalsScreen(),DonationsScreen(),ProfileScreen()
  ];

  void _onPageChanged(int index) {

  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: PageView(
          controller: _pageController,
          children: _screens,
          onPageChanged: _onPageChanged,
          physics: NeverScrollableScrollPhysics(),
        ),
        bottomNavigationBar: CurvedNavigationBar(
          backgroundColor: kAppMainColor.shade100,
          height: 55,
          animationDuration: Duration(milliseconds: 200),
          animationCurve: Curves.bounceInOut,
          index: 0,
          items: <Widget>[
            MyNavigationItem(
              icon: Icon(Icons.adjust, size: 20, color: Colors.black,),
              title: 'Goals',
            ),
            MyNavigationItem(
              icon: Icon(Icons.payment, size: 20, color: Colors.black,),
              title: 'Donations',
            ),
            MyNavigationItem(
              icon: Icon(Icons.person, size: 20, color: Colors.black,),
              title: 'Profile',
            ),
          ],
          onTap: (index) {
            _pageController.jumpToPage(index);
          },
        ),
      ),
    );
  }
}

class MyNavigationItem extends StatelessWidget {
  final Icon icon;
  final String title;

  MyNavigationItem({this.icon, this.title});

  @override
  Widget build(BuildContext context) {
    return icon;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        icon,
        Text(
          title,
          style: TextStyle(
            color: Colors.black
          ),
        )
      ],
    );
  }
}
