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
            crossAxisAlignment: CrossAxisAlignment.start,
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
                      'Join Us \n For Church',
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.bodyText1?.copyWith(
                          fontWeight: FontWeight.w900,
                          height: 1,
                          fontSize: rh(25),
                          color: Colors.white),
                    ),
                    Text(
                      'Click here to know more about our recent schedule',
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.bodyText1?.copyWith(
                          fontWeight: FontWeight.w400,
                          height: .8,
                          fontSize: 12,
                          color: Colors.white),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Acf Community',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headline1?.copyWith(
                    fontWeight: FontWeight.w900, fontSize: 15, color: Colors.black),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                'Welcome to Acf Community. Check out our featured meetups and stay tuned fo weekly updates!',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.subtitle1?.copyWith(
                    fontWeight: FontWeight.w400, fontSize: 13, color: Colors.black),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "We can't wait to connect with you!",
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyText1?.copyWith(
                    fontWeight: FontWeight.w400, fontSize: 13, color: Colors.black),
              ),
            ],
          )),
    );
  }
}
