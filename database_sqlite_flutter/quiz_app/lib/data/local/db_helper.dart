import 'dart:io';

import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class DBHelper {
  //This structure ensures that DBHelper is a singleton, and you can access it without creating multiple instances
  // that is create one  static instance in database

  // Private constructor of class
  DBHelper._(); // Prevent direct instantiation

  // Private static instance of the class
  static final DBHelper instance = DBHelper._();

  /// table Note
  static final String TABLE_NOTE = "note";
  static final String COLUMN_NOTE_SNO = "s_no";
  static final String COLUMN_NOTE_TITLE = "title";
  static final String COLUMN_NOTE_DESC = "desc";
  // common object of database
  Database? myDB; // it can be nullable

  // Public method to access the instance
  static DBHelper getInstance() {
    return instance;
  }

  /// db Open ( path -> if exist then open else create db )
  // we make the first two function getDB(), openDB

  Future<Database> getDB() async {
    // if (myDB != null) { // we can also write this code
    //   return myDB!;
    // } else {
    //   myDB = await openDB();
    //   return myDB!;
    // }

    myDB ??= await openDB();
    return myDB!;
  }

  // here database is returntype
  Future<Database> openDB() async {
    Directory appDir = await getApplicationCacheDirectory();

    String dbPath = join(appDir.path, "noteDB.db");

    return openDatabase(dbPath, onCreate: (db, version) {
      // create all your tables version
      //  db.execute("create table table_name(s_no integer primary key autoincreament ,title text,desc text)");  // we can also write
      db.execute(
          "create table $TABLE_NOTE($COLUMN_NOTE_SNO integer primary key autoincrement ,$COLUMN_NOTE_TITLE taxt, $COLUMN_NOTE_DESC,text)");
      /**we can also make  multiple table with diffrenet name  */
      //
      //
      //
      //
    }, version: 1);
  }

  /// all queries
  /// Insertion
  Future<bool> addNote({required String mTitle, required String mDesc}) async {
    var db = await getDB();
    int rowsEffected = await db.insert(
      TABLE_NOTE,
      {COLUMN_NOTE_TITLE: mTitle, COLUMN_NOTE_DESC: mDesc},
    ); // insert query
    return rowsEffected > 0;
  }

  /// reading all data in form list form
  Future<List<Map<String, dynamic>>> getAllNotes() async {
    var db = await getDB();
    db.query(TABLE_NOTE);
    List<Map<String, dynamic>> mData = await db.query(TABLE_NOTE);
    return mData;
  }

  //update data//here mention the column that is exist in table like title desc
  Future<bool> updateNote(
      {required String mTitle, required String mDesc, required int sno}) async {
    var db = await getDB();
    int rowsEffeted = await db.update(
        TABLE_NOTE, {COLUMN_NOTE_TITLE: mTitle, COLUMN_NOTE_DESC: mDesc},
        where: "$COLUMN_NOTE_SNO=$sno");
    return rowsEffeted > 0;
  }

  /// delete note
  Future<bool> deleteNote({required int sno}) async {
    var db = await getDB();
    int rowsEffected = await db
        .delete(TABLE_NOTE, where: "$COLUMN_NOTE_SNO=?", whereArgs: ['$sno']);
    return rowsEffected > 0;
  }
}
