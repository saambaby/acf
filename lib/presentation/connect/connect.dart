import 'package:acf/presentation/core/utils/size_config.dart';
import 'package:flutter/material.dart';

class Connect extends StatelessWidget {
  const Connect({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
      child: SingleChildScrollView(
          child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: rh(80)),
            height: rh(size.height * .3),
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.black,
                image: DecorationImage(
                  image: const NetworkImage(
                      'https://images.unsplash.com/photo-1627818653012-054f17eb0648?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2344&q=80'),
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.65),
                    BlendMode.srcOver,
                  ),
                ),
                borderRadius: BorderRadius.circular(10)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Join Us \n For Church Service',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyText1?.copyWith(
                      fontWeight: FontWeight.w900,
                      height: 1,
                      fontSize: rh(25),
                      color: Colors.white),
                ),
                Text(
                  'Click here to know more about us',
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
        ],
      )),
    );
  }
}
