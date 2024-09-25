import 'package:flutter/material.dart';

class container1 extends StatelessWidget {
  // custom widget of container 1
  const container1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Container(
        color: Colors.blue,
        child: ListView.builder(
          itemCount: 10,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.all(11),
            child: SizedBox(
              width: 100,
              child: CircleAvatar(
                backgroundColor: Colors.grey,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
