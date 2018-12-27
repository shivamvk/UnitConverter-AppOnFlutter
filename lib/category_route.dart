import 'package:flutter/material.dart';
import 'category.dart';
import 'unit.dart';

final Color _backgroundColor = Colors.white;

class CategoryRoute extends StatelessWidget{

  static const _categoryNames = <String>[
    'Length',
    'Area',
    'Volume',
    'Mass',
    'Time',
    'Digital Storage',
    'Energy',
    'Currency',
  ];

  static const _baseColors = <Color>[
    Colors.teal,
    Colors.orange,
    Colors.pinkAccent,
    Colors.blueAccent,
    Colors.yellow,
    Colors.greenAccent,
    Colors.purpleAccent,
    Colors.red,
  ];

  List<Unit> _retrieveUnitList(String categoryName) {
    return List.generate(10, (int i) {
      i += 1;
      return Unit(
        name: '$categoryName Unit $i',
        conversion: i.toDouble(),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    final List<Category> _categories = <Category>[];

    for(var i=0; i<_categoryNames.length; i++){
      _categories.add(
        new Category(
          name: _categoryNames[i],
          color: _baseColors[i],
          icon: Icons.cake,
          units: _retrieveUnitList(_categoryNames[i]),
        )
      );
    }

    final Container _listView = new Container(
      color: _backgroundColor,
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      child: _buildCategoryWidgets(_categories),
    );

    final AppBar _appBar = new AppBar(
      elevation: 0.0,
      title: new Text(
        "Unit Converter",
        style: new TextStyle(
          color: Colors.black,
          fontSize: 30.0,
        ),
      ),
      centerTitle: true,
      backgroundColor: _backgroundColor,
    );

    return new Scaffold(
      appBar: _appBar,
      body: _listView,
    );
  }

  Widget _buildCategoryWidgets(List<Widget> _categories){
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) => _categories[index],
      itemCount: _categories.length,
    );
  }

}