import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChartBar extends StatelessWidget {
  const ChartBar({
    super.key,
    required this.fill,
  });
  final double fill;

  @override
  Widget build(BuildContext context) {
    final isDarkMode =
        MediaQuery.of(context).platformBrightness == Brightness.dark;
    return Expanded(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 4,
        ),
        child: FractionallySizedBox(
          alignment: Alignment.bottomRight,
          heightFactor: fill,
          // widthFactor: fill,
          child: DecoratedBox(
            position: DecorationPosition.background,
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.all(Radius.circular(8)),
              color: isDarkMode
                  ? Theme.of(context)
                      .colorScheme
                      .primaryContainer
                      .withOpacity(0.47)
                  : Colors.lightBlue.withOpacity(0.77),
            ),
          ),
        ),
      ),
    );
  }
}
