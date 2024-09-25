import 'package:flutter/material.dart';

class container2 extends StatelessWidget {
  // custom widget of container 2
  const container2({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 4,
      child: Container(
        color: Colors.orange,
        child: ListView.builder(
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.greenAccent,
              ),
              title: Text('name'),
              subtitle: Text('mobille number'),
              trailing: Icon(Icons.delete),
            ),
          ),
          itemCount: 10,
          scrollDirection: Axis.vertical,
        ),
      ),
    );
  }
}
