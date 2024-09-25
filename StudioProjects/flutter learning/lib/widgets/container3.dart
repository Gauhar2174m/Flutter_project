import 'package:flutter/material.dart';

class container3 extends StatelessWidget {
  // custom widget of container 3
  const container3({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Container(
        color: Colors.grey,
        child: ListView.builder(
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.all(11.0),
            child: Container(
              width: 200,
              color: Colors.green,
            ),
          ),
          itemCount: 10,
          scrollDirection: Axis.horizontal,
        ),
      ),
    );
  }
}
