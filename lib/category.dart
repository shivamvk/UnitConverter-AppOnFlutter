import 'package:flutter/material.dart';

final double _rowHeight = 75.0;
final BorderRadius _borderRadius = BorderRadius.circular(_rowHeight / 2);

class Category extends StatelessWidget {

  final String name;
  final Color color;
  final IconData icon;

  const Category({
    Key key,
    @required this.name,
    @required this.color,
    @required this.icon
  }) :
  super(key : key);

  @override
  Widget build(BuildContext context) {
    return new Material(
      color: Colors.transparent,
      child: new Container(
        height: _rowHeight,
        child: new InkWell(
          borderRadius: _borderRadius,
          highlightColor: color,
          splashColor: color,
          onTap: () {
            print("I was tapped");
          },
          child: new Padding(
            padding: EdgeInsets.all(8.0),
            child: new Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                new Padding(
                  padding: EdgeInsets.fromLTRB(8.0, 3.0, 8.0, 21.0),
                  child: new Icon(
                    icon,
                    size: 40,
                  ),
                ),
                new Center(
                  child: new Text(
                    name,
                    textAlign: TextAlign.center,
                    style: new TextStyle(
                      fontSize: 25,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

}