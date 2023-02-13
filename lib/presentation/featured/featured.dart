import 'package:acf/presentation/core/utils/size_config.dart';
import 'package:acf/presentation/featured/widgets/scroll_view_container.dart';
import 'package:flutter/material.dart';

class Featured extends StatefulWidget {
  const Featured({super.key});

  @override
  State<Featured> createState() => _FeaturedState();
}

class _FeaturedState extends State<Featured> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.only(top: rh(10) ),
      child: SingleChildScrollView(
          child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(top: rh(50)),
            color: Colors.black,
            height: rh(size.height * .4),
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'WELCOME \n TO  WEEKLY \n SERVICE!',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyText1?.copyWith(
                      fontWeight: FontWeight.w900,
                      height: .8,
                      fontSize: rh(45),
                      color: Colors.white),
                ),
                SizedBox(
                  height: rh(10),
                ),
                Text(
                  'Streaming Sundays at 7PM',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyText1?.copyWith(
                      fontWeight: FontWeight.w900,
                      fontSize: 15,
                      color: Colors.white),
                ),
                SizedBox(
                  height: rh(30),
                ),
                Text(
                  'On Demand. \n Anytime. Anywhere',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyText1?.copyWith(
                      fontWeight: FontWeight.w500,
                      height: .8,
                      fontSize: 13,
                      color: Colors.white),
                ),
              ],
            ),
          ),
          SizedBox(height: rh(30)),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: rw(20)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Recent Church Services',
                  textAlign: TextAlign.start,
                  style: Theme.of(context).textTheme.bodyText1?.copyWith(
                      fontWeight: FontWeight.w900,
                      height: 1,
                      fontSize: rh(15),
                      color: Theme.of(context).primaryColor),
                ),
                //Sermon scrollview
                ScrollViewContainer(size: size, data: [],)
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: rh(50)),
            color: Colors.black,
            height: rh(size.height * .4),
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'New \n Message \n Every Sunday!',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyText1?.copyWith(
                      fontWeight: FontWeight.w900,
                      height: .8,
                      fontSize: rh(45),
                      color: Colors.white),
                ),
                SizedBox(
                  height: rh(10),
                ),
                Text(
                  'Every Sundays at 6AM',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyText1?.copyWith(
                      fontWeight: FontWeight.w900,
                      fontSize: 15,
                      color: Colors.white),
                ),
                SizedBox(
                  height: rh(30),
                ),
                Text(
                  'On Demand. \n Anytime. Anywhere',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyText1?.copyWith(
                      fontWeight: FontWeight.w500,
                      height: .8,
                      fontSize: 13,
                      color: Colors.white),
                ),
              ],
            ),
          ),
          SizedBox(height: rh(30)),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: rw(20)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Recent Sunday School Messages',
                  textAlign: TextAlign.start,
                  style: Theme.of(context).textTheme.bodyText1?.copyWith(
                      fontWeight: FontWeight.w900,
                      height: 1,
                      fontSize: rh(15),
                      color: Theme.of(context).primaryColor),
                ),
                //Sermon scrollview
                ScrollViewContainer(size: size, data: [],)
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: rw(20)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Recent Acf Youth Messages',
                  textAlign: TextAlign.start,
                  style: Theme.of(context).textTheme.bodyText1?.copyWith(
                      fontWeight: FontWeight.w900,
                      height: 1,
                      fontSize: rh(15),
                      color: Theme.of(context).primaryColor),
                ),
                //Sermon scrollview
                ScrollViewContainer(size: size, data: [],)
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: rw(20)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Worship sessions',
                  textAlign: TextAlign.start,
                  style: Theme.of(context).textTheme.bodyText1?.copyWith(
                      fontWeight: FontWeight.w900,
                      height: 1,
                      fontSize: rh(15),
                      color: Theme.of(context).primaryColor),
                ),
                //Sermon scrollview
                ScrollViewContainer(size: size, data: [],)
              ],
            ),
          ),
        ],
      )),
    );
  }
}
