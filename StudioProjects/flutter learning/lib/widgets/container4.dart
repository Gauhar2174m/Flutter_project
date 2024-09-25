import 'package:flutter/material.dart';

class container4 extends StatelessWidget {
  // custom widget of container 4
  const container4({
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
              width: 100,
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
