
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../core/utils/size_config.dart';
import '../core/widgets/button/buttons.dart';
import '../featured/widgets/scroll_view_container.dart';
class Give extends StatelessWidget {
  const Give({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.only(top: rh(10)),
      child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(top: rh(50)),
                color: Theme.of(context).primaryColor,
                height: rh(size.height * .4),
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Giving is a response to the \n Generosity of a good God',
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
                      'You can contribute using our app or \n e-track your money directly to \n giving@acfcanada.ca',
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.bodyText1?.copyWith(
                          fontWeight: FontWeight.w500,
                          height: 1,
                          fontSize: 13,
                          color: Colors.white),
                    ),

                  ],
                ),
              ),
              SizedBox(height: rh(30)),
              Padding(padding: EdgeInsets.symmetric(vertical: rh(5), horizontal: rh(30)),
                child: Form(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Enter your amount',
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                            fontWeight: FontWeight.w900,
                            height: 2,
                            fontSize: rf(15),
                            color: Theme.of(context).primaryColor),
                      ),
                      SizedBox(
                        height: rh(5),
                      ),
                      TextFormField(
                        textAlign: TextAlign.center,
                        keyboardType: TextInputType.number,
                        style:  Theme.of(context).textTheme.bodyMedium?.copyWith(
                            fontWeight: FontWeight.w700,
                            fontSize: rh(15),
                            color: Theme.of(context).primaryColor),
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            errorStyle: Theme.of(context).textTheme.bodySmall?.copyWith(
                                color: Colors.red,
                                fontSize: 11,
                                fontWeight: FontWeight.w400),
                            prefixIcon:Icon(CupertinoIcons.money_dollar_circle,
                                size: 18,
                                color: Theme.of(context).hintColor )) ,
                      ),
                      const Divider(thickness: 1),
                      SizedBox(
                        height: rh(15),
                      ),
                      Text(
                        'Other ways to give',
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                            fontWeight: FontWeight.w400,
                            fontSize: 10,
                            color: Theme.of(context).hintColor),
                      ),
                      SizedBox(
                        height: rh(10),
                      ),
                      Buttons.expandedWithIcon(
                          context: context,
                          backgroundColor: Theme.of(context).primaryColor,
                          text: 'Apple Pay',
                          borderRadius: 10,
                          vPadding: space1x,
                          onPressed: () {}, icon: Icons.apple
                      ),
                      SizedBox(
                        height: rh(5),
                      ),
                      Buttons.expandedWithIcon(
                          context: context,
                          backgroundColor: Theme.of(context).primaryColor,
                          text: 'Google Pay',
                          borderRadius: 10,
                          vPadding: space1x,
                          onPressed: () {}, icon: Icons.payment
                      ),

                    ],
                  ),
                ),),
              SizedBox(
                height: rh(30),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                color: Theme.of(context).primaryColor,
                height: rh(size.height * .4),
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Generosity in action',
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          fontWeight: FontWeight.w900,
                          height: .8,
                          fontSize: rh(20),
                          color: Colors.white),
                    ),

                    SizedBox(
                      height: rh(10),
                    ),
                  // TODO make a common scrollview for all
                    ScrollViewContainer(size: size, data: [],)
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
