import 'package:acf/presentation/feed/widget/feeds_list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../core/utils/size_config.dart';
class Feeds extends StatelessWidget {
  const Feeds({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return DefaultTabController(
        length: 3,
        child: Scaffold(
            backgroundColor: Theme.of(context).scaffoldBackgroundColor,
            body: NestedScrollView(
              floatHeaderSlivers: true,
              headerSliverBuilder: (context, isScrolled) =>
              [ SliverAppBar(
                bottom: PreferredSize(
                    preferredSize: Size.fromHeight(size.height*.27),
                    child: Column(
                      children: [
                        SizedBox(
                          width: double.infinity,
                          child:  Column(
                            children: [
                              Text(
                                "We can't wait \n to connect with you",
                                textAlign: TextAlign.center,
                                style: Theme.of(context).textTheme.bodyText1?.copyWith(
                                    fontWeight: FontWeight.w900,
                                    height: .8,
                                    fontSize: rh(40),
                                    color: Colors.white),
                              ),

                              SizedBox(
                                height: rh(25),
                              ),
                              Text(
                                'Welcome to Acf community \n check out our meetups & events. \n Stay tuned for weekly updates',
                                textAlign: TextAlign.center,
                                style: Theme.of(context).textTheme.labelMedium?.copyWith(
                                    fontWeight: FontWeight.w500,
                                    height: 1,
                                    fontSize: 13,
                                    color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: rh(50),),
                        TabBar(
                            isScrollable: true,
                            unselectedLabelColor: Colors.white.withOpacity(0.3),
                            indicatorColor: Colors.white,
                            tabs: [
                              Tab(
                                child: Text('Feeds',
                                  style: Theme.of(context).textTheme.labelSmall?.copyWith(
                                      fontWeight: FontWeight.w500,
                                      height: 1,
                                      fontSize: 12,
                                      color: Colors.white),),
                              ),
                              Tab(
                                child: Text('Events',
                                    style: Theme.of(context).textTheme.labelSmall?.copyWith(
                                        fontWeight: FontWeight.w500,
                                        height: 1,
                                        fontSize: 12,
                                        color: Colors.white)),
                              ),
                              Tab(
                                child: Text('Meetups',
                                    style: Theme.of(context).textTheme.labelSmall?.copyWith(
                                        fontWeight: FontWeight.w500,
                                        height: 1,
                                        fontSize: 12,
                                        color: Colors.white)),
                              ),
                            ])
                      ],
                    )),
              )],
              body:   TabBarView(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: rh(20)),
                    child:const FeedList(),
                  ),
                  ListView(padding: EdgeInsets.zero,
                    children: List.generate(10, (index) =>  Container(
                      height: size.height*.2,
                      margin: EdgeInsets.symmetric(vertical: rh(10), horizontal: rw(20)),
                    //  padding: EdgeInsets.symmetric(vertical: rh(15), horizontal: rw(20)),
                      decoration: BoxDecoration(
                          color: Colors.redAccent.withOpacity(.4),
                          borderRadius: BorderRadius.circular(20)
                      ),
                      child: Column(
                        children: [

                        ],
                      ),
                    )),
                  ),

                  Container(
                    child: Center(
                      child: Text('Tab 3'),
                    ),
                  ),
                ],
              ),
            )));
  }
}





