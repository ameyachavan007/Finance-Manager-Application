import 'package:flutter/material.dart';
import 'package:save/screens/analytics_screen.dart';
import 'package:save/screens/budget_screen.dart';
import 'package:save/screens/hamburger_screen.dart';
import 'package:save/screens/profile_screen.dart';
import 'package:save/screens/transaction_screen.dart';
import 'home.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  AnimationController _animationController;
  Animation<double> scaleForAnimatedPosition, scaleForMiddleScreen;
  Duration duration = Duration(milliseconds: 250);
  bool isMenuOpen = false;
  List<Animation<double>> scales;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _animationController = AnimationController(vsync: this, duration: duration);

    scales = [
      Tween<double>(begin: 1.0, end: 0.6).animate(_animationController),
      Tween<double>(begin: 1.0, end: 0.5).animate(_animationController),
      Tween<double>(begin: 1.0, end: 0.4).animate(_animationController),
      Tween<double>(begin: 1.0, end: 0.3).animate(_animationController),
      Tween<double>(begin: 1.0, end: 0.2).animate(_animationController),
    ];
    screen = createTabList(isMenuOpen, _animationController).values.toList();
  }

  Map<int, Widget> createTabList(bool open, AnimationController controller) {
    return {
      0: Home(
        callFromMenu: () {
          setState(() {
            _animationController.forward();
            isMenuOpen = true;
          });
        },
        isOpen: open,
      ),
      1: TransactionScreen(),
      2: AnalyticsScreen(),
      3: BudgetScreen(),
      4: ProfileScreen()
    };
  }

  List<Widget> screen;

  List<Widget> finalBuild() {
    List<Widget> returnThis = [];
    returnThis.add(HamburgerScreen(
      menuCallBack: (selectedMenu) {
        setState(() {
          screen =
              createTabList(isMenuOpen, _animationController).values.toList();
          final selectedScreen = screen.removeAt(selectedMenu);
          screen.insert(0, selectedScreen);
        });
      },
    ));

    screen.asMap().entries.map((e) => createTabStack(e.key)).toList().reversed
      ..forEach((element) {
        returnThis.add(element);
      });
    return returnThis;
  }

  Widget createTabStack(int screenIndex) {
    Size size = MediaQuery.of(context).size;
    return AnimatedPositioned(
      duration: duration,
      top: 0,
      bottom: 0,
      left: isMenuOpen ? size.width * 0.70 - (screenIndex * 50) : 0.0,
      right: isMenuOpen ? size.width * -0.55 + (screenIndex * 50) : 0.0,
      child: ScaleTransition(
        scale: scales[screenIndex],
        child: GestureDetector(
          onTap: () {
            if (isMenuOpen) {
              setState(() {
                isMenuOpen = false;
                _animationController.reverse();
              });
            }
          },
          child: AbsorbPointer(
            absorbing: isMenuOpen ? true : false,
            child: Material(
              animationDuration: duration,
              // borderRadius: BorderRadius.circular(isMenuOpen ? 40.0 : 0.0),
              child: screen[screenIndex],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: finalBuild(),
        ),
      ),
    );
  }
}
