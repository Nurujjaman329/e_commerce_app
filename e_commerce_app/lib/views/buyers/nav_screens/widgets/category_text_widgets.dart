import 'package:flutter/material.dart';

class CategoryTextWidgets extends StatelessWidget {
  final List<String> _categoryLabel = [
    'food',
    'vegetable',
    'egg',
    'tea',
    'health',
    'sports',
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Categories',
            style: TextStyle(
              fontSize: 19,
              fontWeight: FontWeight.bold,
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * .1,
            child: Row(
              children: [
                Expanded(
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: _categoryLabel.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: EdgeInsets.only(right: 8.0),
                          child: ActionChip(label: Text(_categoryLabel[index])),
                        );
                      }),
                ),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.arrow_forward_ios,
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
