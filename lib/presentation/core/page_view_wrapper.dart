import 'package:acf/presentation/core/widgets/app_bar/custom_app_bar.dart';
import 'package:acf/presentation/featured/featured.dart';

import 'package:acf/presentation/give/give.dart';
import 'package:acf/presentation/home/home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../feed/feeds.dart';

class PageWrapper extends StatefulWidget {
  const PageWrapper({super.key});

  @override
  State<PageWrapper> createState() => _PageWrapperState();
}

class _PageWrapperState extends State<PageWrapper> {
  int _selectedIndex = 0;
  PageController? pageController;

  @override
  void initState() {
    pageController ??= PageController(keepPage: false, initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    pageController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: CustomAppBar(
          hasBackButton: false,
          isHeroAnimated: true,
          isTransparent: (_selectedIndex == 0) ? true : false,
          isTitleCentered: true,
        ),
        backgroundColor: Colors.white,
        body: PageView(
          controller: pageController,
          physics: const NeverScrollableScrollPhysics(),
          onPageChanged: pageChanged,
          children: const [Home(), Feeds(),Featured(), Give()],
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.redAccent, //Floating action button on
          // Scaffold
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Home(),
                ));
          },
          child: const Icon(
            CupertinoIcons.add_circled,
            color: Colors.white,
            size: 25,
          ), //icon inside button
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
            color: Colors.white,
            elevation: 5.0,
            notchMargin: 5,
            shape: const CircularNotchedRectangle(),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                bottomAppBarItem(
                    'Home',
                    0,
                    _selectedIndex,
                    Icon(CupertinoIcons.home,
                        size: 25,
                        color: _selectedIndex == 0
                            ? Theme.of(context).primaryColor
                            : Theme.of(context).hintColor)),
                bottomAppBarItem(
                    'Feeds',
                    1,
                    _selectedIndex,
                    Icon(Icons.feed_outlined,
                        size: 25,
                        color: _selectedIndex == 1
                            ? Theme.of(context).primaryColor
                            : Theme.of(context).hintColor)),
                bottomAppBarItem(
                    'Featured',
                    2,
                    _selectedIndex,
                    Icon(CupertinoIcons.layers,
                        size: 25,
                        color: _selectedIndex == 2
                            ? Theme.of(context).primaryColor
                            : Theme.of(context).hintColor)),


                bottomAppBarItem(
                    'Give',
                    3,
                    _selectedIndex,
                    Icon(CupertinoIcons.money_dollar_circle,
                        size: 25,
                        color: _selectedIndex == 3
                            ? Theme.of(context).primaryColor
                            : Theme.of(context).hintColor)),
              ],
            )));
  }

  void bottomTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    if (pageController!.hasClients) {
      pageController?.jumpToPage(_selectedIndex);
    }
  }

  void pageChanged(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Widget bottomAppBarItem(
      String label, int index, int selectedIndex, Icon? icon) {
    return GestureDetector(
      onTap: () {
        bottomTapped(index);
      },
      child: Container(
        margin: const EdgeInsets.only(bottom: 10),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            _selectedIndex == index
                ? Container(
                width: 10, height: 3, color: Theme.of(context).primaryColor)
                : const SizedBox.shrink(),
            Container(
              margin: const EdgeInsets.all(5),
              height: 30,
              width: 35,
              child: icon,
            ),
            Text(
              label,
              textAlign: TextAlign.start,
              style: Theme.of(context).textTheme.bodyText1?.copyWith(
                  fontSize: 12,
                  color: _selectedIndex == index
                      ? Theme.of(context).primaryColor
                      : Theme.of(context).hintColor),
            ),
          ],
        ),
      ),
    );
  }
}
