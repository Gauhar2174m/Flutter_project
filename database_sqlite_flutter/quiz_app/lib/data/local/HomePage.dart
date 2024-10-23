import 'package:flutter/material.dart';
import 'package:quiz_app/data/local/db_helper.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key}); // Added const here

  @override
  State<MyHomePage> createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
  // controller
  TextEditingController titleController = TextEditingController();
  TextEditingController desController = TextEditingController();
  List<Map<String, dynamic>> allNotes = [];
  DBHelper? dbRef;
  String errormsg = "";
  @override
  void initState() {
    super.initState();
    dbRef = DBHelper.getInstance();
    getNotes();
  }

  void getNotes() async {
    allNotes = await dbRef!.getAllNotes();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Quiz App'), // Added const here
      ),
      body: allNotes.isNotEmpty
          ? ListView.builder(
              itemBuilder: (_, index) {
                return ListTile(
                  leading: Text('${index + 1}'),
                  title: Text(allNotes[index][DBHelper.COLUMN_NOTE_TITLE]),
                  subtitle: Text(allNotes[index][DBHelper.COLUMN_NOTE_DESC]),
                  trailing: SizedBox(
                    width: 50,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                            onTap: () {
                              showModalBottomSheet(
                                  context: context,
                                  builder: (context) {
                                    titleController.text = allNotes[index]
                                        [DBHelper.COLUMN_NOTE_TITLE];
                                    desController.text = allNotes[index]
                                        [DBHelper.COLUMN_NOTE_DESC];
                                    return getBottomSheetWidget(
                                        isUpdate: true,
                                        sno: allNotes[index]
                                            [DBHelper.COLUMN_NOTE_SNO]);
                                  });
                            },
                            child: Icon(Icons.edit)),
                        InkWell(
                          onTap: () async {
                            bool check = await dbRef!.deleteNote(
                                sno: allNotes[index][DBHelper.COLUMN_NOTE_SNO]);
                            if (check) {
                              getNotes();
                            }
                          },
                          child: Icon(
                            Icons.delete,
                            color: Colors.grey,
                          ),
                        )
                      ],
                    ),
                  ),
                );
              },
              itemCount: allNotes.length,
            )
          : Center(
              child: Text('No notes yet!!'),
            ),
      floatingActionButton: FloatingActionButton(
          onPressed: () async {
            // String errormsg = ""; // initialize errore message
            showModalBottomSheet(
                context: context,
                builder: (context) {
                  return getBottomSheetWidget();
                });
          },
          child: Icon(Icons.add)),
    );
  }

// functiom widget of bottom sheet
  Widget getBottomSheetWidget({bool isUpdate = false, int sno = 0}) {
    return Container(
      padding: EdgeInsets.all(11),
      width: double.infinity,
      child: Column(
        children: [
          Text(
            isUpdate ? 'Update Note' : 'Add note',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 25,
          ),
          TextField(
            controller: titleController,
            decoration: InputDecoration(
                hintText: "Enter title here",
                label: Text('Title*'),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(11),
                ),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(11))),
          ),
          SizedBox(height: 25),
          TextField(
            controller: desController,
            maxLines: 4, // increase leghth of desc
            decoration: InputDecoration(
                hintText: "Enter desc here",
                label: Text('Desc*'),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(11),
                ),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(11))),
          ),
          SizedBox(height: 50),
          Row(
            children: [
              Expanded(
                child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                        side: BorderSide(width: 1),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(11))),
                    onPressed: () async {
                      var title = titleController.text;
                      var desc = desController.text;
                      if (title.isNotEmpty && desc.isNotEmpty) {
                        bool check = isUpdate
                            ? await dbRef!.updateNote(
                                mTitle: title, mDesc: desc, sno: sno)
                            : await dbRef!.addNote(mTitle: title, mDesc: desc);
                        if (check) {
                          getNotes();
                        }
                      } else {
                        ScaffoldMessenger.of(
                                context) // these bar show bottom side of the screen
                            .showSnackBar(SnackBar(
                                content: Text(
                                    '*Please fill all the required blanks !! ')));
                      }
                      Navigator.pop(context); // pop
                      titleController.clear(); // for clear the text field
                      desController.clear(); // for clear the text field
                    },
                    child: Text(isUpdate ? 'Update Note' : 'Add Note')),
              ),
              SizedBox(width: 25),
              Expanded(
                child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                        side: BorderSide(width: 1),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(11))),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text('Cancel')),
              ),
            ],
          ),
          Text('$errormsg'),
        ],
      ),
    );
  }
}
