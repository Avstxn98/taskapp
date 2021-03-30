import 'package:flutter/material.dart';
import 'package:sleek_spacing/sleek_spacing.dart';

class EmployeeSelector extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SleekPadding(
      padding: SleekInsets.normal(SleekSides.horizontal + SleekSides.top),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey[300]),
          borderRadius: BorderRadius.circular(36),
        ),
        child: SleekRow(
          padding: SleekInsets.small(),
          spaceBetween: SleekSpace.normal,
          children: [
            CircleAvatar(
              radius: 12,
            ),
            SleekColumn(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Showing tasks for',
                  style: TextStyle(fontSize: 14, color: Colors.grey),
                ),
                Text(
                  'Jerry Kingsman',
                )
              ],
            ),
            Expanded(child: SizedBox()),
            Icon(Icons.keyboard_arrow_down)
          ],
        ),
      ),
    );
  }
}
