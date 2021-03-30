import 'package:flutter/material.dart';
import 'package:sleek_spacing/sleek_spacing.dart';

class TaskProgress extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return SleekPadding(
      padding: SleekInsets.normal(),
      child: Card(
        child: SleekColumn(
          padding: SleekInsets.normal(),
          crossAxisAlignment: CrossAxisAlignment.start,
          spaceBetween: SleekSpace.normal,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Progress',
                  style: theme.textTheme.headline6,
                ),
                Text(
                  'Completed 2 out of 16 taks. (Lazy)',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
            LinearProgressIndicator(
              value: 2 / 16,
              backgroundColor: Colors.blue[50],
            )
          ],
        ),
      ),
    );
  }
}
