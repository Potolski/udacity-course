import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

import 'package:task_04_navigation/unit.dart';

class ConverterRoute extends StatelessWidget {
  /// Units for this [Category].
  final List<Unit> units;
  final dynamic color;

  const ConverterRoute({
    @required this.units,
    @required this.color,
  })  : assert(units != null),
        assert(units != null);

  @override
  Widget build(BuildContext context) {
    // Here is just a placeholder for a list of mock units
    final unitWidgets = units.map((Unit unit) {
      return Container(
        color: color,
        margin: EdgeInsets.all(8.0),
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            Text(
              unit.name,
              style: Theme.of(context).textTheme.headline5,
            ),
            Text(
              'Conversion: ${unit.conversion}',
              style: Theme.of(context).textTheme.subtitle1,
            ),
          ],
        ),
      );
    }).toList();

    return ListView(
      children: unitWidgets,
    );
  }
}
