import 'package:flutter/material.dart';
import 'package:flutter_state_management/list_map_provider.dart';
import 'package:provider/provider.dart';

class AddDataPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Note'),
      ),
      body: Center(
        child: IconButton(
            onPressed: () {
              context.read<ListMapProvidere>().addData({
                "name": "Contact Name",
                "mobile": "8474903299", // Use 'mobile' as the key
              });
            },
            icon: Icon(Icons.add)),
      ),
    );
  }
}
