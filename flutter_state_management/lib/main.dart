// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatefulWidget {
//   @override
//   State<MyApp> createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   int _count = 0;

//   void _incrementCounter() {
//     setState(() {
//       _count++;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Add Two Numbers'),
//         ),
//         body: Center(
//           child: Text('$_count'),
//         ),
//         floatingActionButton: FloatingActionButton(
//             onPressed: () {
//               // _count++;
//               // setState(() {});
//               _incrementCounter();
//             },
//             child: Icon(Icons.add),
//       ),
//     ));
//   }
// }

// With the helpof state less widgets

// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   final ValueNotifier<int> _count = ValueNotifier<int>(0);

//   void _incrementCounter() {
//     _count.value++;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Add Two Numbers'),
//         ),
//         body: Center(
//           child: ValueListenableBuilder<int>(
//             valueListenable: _count,
//             builder: (context, count, child) {
//               return Text('$count');
//             },
//           ),
//         ),
//         floatingActionButton: FloatingActionButton(
//           onPressed: _incrementCounter,
//           child: Icon(Icons.add),
//         ),
//       ),
//     );
//   }
// }

/// Main code  of Stete management start here
/// MAKE UI FOR COUNTER PROVIDER FOR COUNTING THE VALUE

// import 'package:flutter/material.dart';
// import 'package:flutter_state_management/counter_provider.dart';
// import 'package:provider/provider.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter learning',
//       theme: ThemeData(
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//         useMaterial3: true,
//       ),
//       home: ChangeNotifierProvider(
//         // change notifier use becouse we change the data in the ListPage
//         create: (context) =>
//             CounterProvider(), // types of object our object type is count
//         child: ListPage(),
//       ),
//     );
//   }
// }

// class ListPage extends StatelessWidget {
//   // int _count = 0;
//   ListPage({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//         title: Text('State Management practice'),
//       ),
//       body: Center(child:
//           // Text(
//           //   '${Provider.of<CounterProvider>(context, listen: true).getCount()}', // for fetching the Data show data
//           //   style: TextStyle(fontSize: 25),
//           // ),
//           /** If we want only rebuild updation part not build complete app during changing data the we will use the Consumer */
//           Consumer<CounterProvider>(builder: (ctx, _, __) {
//         print('Consumer bhuild function called');
//         return Text(
//           // '${Provider.of<CounterProvider>(ctx, listen: true).getCount()}', // for fetching the Data show data
//           '${ctx.watch<CounterProvider>().getCount()}',
//           style: TextStyle(fontSize: 25),
//         );
//       })),
//       floatingActionButton: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//         children: [
//           FloatingActionButton(
//             onPressed: () {
//               // Provider.of<CounterProvider>(context, listen: false).incrementCount();
//               context
//                   .read<CounterProvider>()
//                   .incrementCount(); // if we want read
//             },
//             child: Icon(Icons.add),
//           ),
//           FloatingActionButton(
//             onPressed: () {
//               // Provider.of<CounterProvider>(context, listen: false).incrementCount();
//               context
//                   .read<CounterProvider>()
//                   .decrementCount(); // if we want read
//             },
//             child: Icon(Icons.remove),
//           ),
//         ],
//       ),
//     );
//   }
// }

/// MAKE UI FOR LIST MAP PROVIDER FOR COUNTING THE VALUE
import 'package:flutter/material.dart';
import 'package:flutter_state_management/Add_data.dart'; // Ensure this file exists
import 'package:flutter_state_management/counter_provider.dart'; // Ensure this file exists
import 'package:flutter_state_management/list_map_provider.dart'; // Ensure this file exists
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Learning',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) => CounterProvider()),
          ChangeNotifierProvider(
              create: (context) => ListMapProvidere()), // Fixed typo here
        ],
        child: const ListPage(), // Use const constructor if possible
      ),
    );
  }
}

class ListPage extends StatelessWidget {
  const ListPage({super.key}); // Made const constructor

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('List Provider'),
      ),
      body: Center(
        child: Consumer<ListMapProvidere>(
          // Fixed typo here
          builder: (ctx, provider, __) {
            var allData = provider.getData();
            return allData.isNotEmpty
                ? ListView.builder(
                    itemCount: allData.length,
                    itemBuilder: (_, index) {
                      return ListTile(
                        title: Text('${allData[index]['name']}'),
                        subtitle: Text('${allData[index]['mobile']}'),
                      );
                    },
                  )
                : const Center(
                    child: Text('No Contacts yet!!'),
                  );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) =>
                    AddDataPage()), // Ensure AddDataPage is defined
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
