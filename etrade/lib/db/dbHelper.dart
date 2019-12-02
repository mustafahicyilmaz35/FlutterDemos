import 'package:sqflite/sqflite.dart';
import 'dart:async';
import 'dart:io';
import 'package:path_provider/path_provider.dart';
import 'package:etrade/models/product.dart';

class DbHelper {
  String tblProduct = "Products";
  String colId = "Id";
  String colDescription = "Description";
  String colPrice = "Price";
  String colName = "Name";
  static final DbHelper _dbHelper = DbHelper._internal();
  DbHelper._internal();

  factory DbHelper(){
    return _dbHelper;
  }

  static Database _db;

  Future<Database> get db async{
    if(_db==null){
      _db = await initializeDb();
    }
    return _db;
  }
  Future<Database> initializeDb() async{
      Directory directory = await getApplicationDocumentsDirectory();
      String path = directory.path + "etrade.db";

      var dbEtrade = await openDatabase(path, version:1,onCreate:_createDb);
      return dbEtrade;
  }

  void _createDb(Database db, int version) async{
    await db.execute("Create table $tblProduct($colId integer primary key, $colName text, " + "$colDescription text,$colPrice int)");
  }
}
