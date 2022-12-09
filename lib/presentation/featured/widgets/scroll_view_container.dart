import 'package:acf/presentation/core/utils/utils.dart';
import 'package:acf/presentation/featured/widgets/scroll_view_tile.dart';
import 'package:flutter/material.dart';

class ScrollViewContainer extends StatefulWidget {
  final Size size;
  const ScrollViewContainer({super.key, required this.size});

  @override
  State<ScrollViewContainer> createState() => _ScrollViewContainerState();
}

class _ScrollViewContainerState extends State<ScrollViewContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: rh(widget.size.height * .25),
      padding: EdgeInsets.symmetric(vertical: rh(20)),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: const [
          ScrollViewTile(
            url:
                'https://images.unsplash.com/photo-1627818653012-054f17eb0648?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2344&q=80',
            title: 'What Do You Really \n Want From Life?',
          ),
          ScrollViewTile(
            url:
                'https://images.unsplash.com/photo-1627931552064-36e7c340c02e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2340&q=80',
            title: 'Learn To Love \n One Another',
          ),
        ],
      ),
    );
  }
}
