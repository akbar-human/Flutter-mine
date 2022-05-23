import 'package:airplane/shared/theme.dart';
import 'package:flutter/material.dart';

class InterestItem extends StatelessWidget {
  final String item;
  const InterestItem({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: [
          Container(
            width: 16,
            height: 16,
            margin: EdgeInsets.only(right: 6),
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/icon_check.png')),
            ),
          ),
          Text(item, style: blackTextStyle),
        ],
      ),
    );
  }
}
