import 'package:acf/presentation/core/utils/size_config.dart';
import 'package:flutter/material.dart';

class ScrollViewTile extends StatelessWidget {
  final String url;
  final String title;
  const ScrollViewTile({super.key, required this.url, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: rh(130),
            width: rw(130),
            child: ClipRRect(
                borderRadius: BorderRadius.circular(5), // Image border
                child: Image.network(url, fit: BoxFit.cover)),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            title,
            textAlign: TextAlign.start,
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                fontWeight: FontWeight.w400,
                fontSize: 10,
                color: Theme.of(context).hintColor),
          ),
        ],
      ),
    );
  }
}
