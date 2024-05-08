import 'package:flutter/material.dart';
import 'package:my_app/utils/colors.dart';
import 'package:timeline_tile/timeline_tile.dart';

class MyTimelineTile extends StatelessWidget {
  final bool isFirst;
  final bool isLast;
  final bool isPast;
  final orderType;
  final String? dateTime;
  const MyTimelineTile({
    super.key,
    required this.isFirst,
    required this.isLast,
    required this.isPast,
    required this.orderType,
    required this.dateTime,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 40),
      child: TimelineTile(
        isFirst: isFirst,
        isLast: isLast,
        beforeLineStyle: LineStyle(color: isPast ? Colors.teal : greyColor),
        indicatorStyle: IndicatorStyle(
          width: 40,
          color: isPast ? tealColor : greyColor,
          iconStyle: isPast
              ? IconStyle(iconData: Icons.done, color: Colors.white)
              : null,
        ),
        endChild: Container(
          margin: EdgeInsets.all(25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                orderType,
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: isPast ? Color(0xff003853) : Colors.grey),
              ),
              Text(
                dateTime!,
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                    color: isPast ? Color(0xff003853) : Colors.grey),
              )
            ],
          ),
        ),
      ),
    );
  }
}
