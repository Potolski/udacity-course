import 'package:flutter/material.dart';

/// A custom [Category] widget.
///
/// The widget is composed on an [Icon] and [Text]. Tapping on the widget shows
/// a colored [InkWell] animation.
class Category extends StatelessWidget {
  final String name;
  final ColorSwatch color;
  final IconData icon;

  /// Creates a [Category].
  ///
  /// A [Category] saves the name of the Category (e.g. 'Length'), its color for
  /// the UI, and the icon that represents it (e.g. a ruler).
  // TODO: You'll need the name, color, and iconLocation from main.dart
  const Category(this.name, this.icon, this.color);

  /// Builds a custom widget that shows [Category] information.
  ///
  /// This information includes the icon, name, and color for the [Category].
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Container(
        height: 100.0,
        child: InkWell(
          borderRadius: BorderRadius.circular(50.0),
          highlightColor: color,
          splashColor: color,
          // We can use either the () => function() or the () { function(); }
          // syntax.
          onTap: () {
            print('I was tapped!');
          },
        child: Padding(
          padding: EdgeInsets.all(8),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: EdgeInsets.all(16),
                child: Icon(
                  icon,
                  size: 60.0,
                ),
              ),
              Center(
                child: Text(
                  name,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.headline,
                ),
              ),
            ],
          ),
        ),
      ),
    ),);
  }
}
