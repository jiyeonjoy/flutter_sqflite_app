import 'package:flutter_jab_app/data/dto/common/favorite_image_data.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

// ignore_for_file: non_constant_identifier_names
const String tableName = 'favorites';

class DBHelper {
  DBHelper._();
  static final DBHelper _db = DBHelper._();
  factory DBHelper() => _db;

  static Database? _database;

  Future<Database> get database async {
    _database ??= await initDB();

    return _database!;
  }

  Future<Database> initDB() async {
    String path = join(await getDatabasesPath(), 'image.db');

    return await openDatabase(
      path,
      version: 1,
      onOpen: (db) {},
      onCreate: (Database db, int version) async {
        await db.execute('''
        CREATE TABLE $tableName (
          id INTEGER PRIMARY KEY,
          datetime TEXT,
          display_sitename TEXT,
          doc_url TEXT,
          image_url TEXT,
          thumbnail_url TEXT,
          isFavorite INTEGER )
       ''');
      },
    );
  }

  // CREATE
  createData(FavoriteImageData model) async {
    final db = await database;
    var res = await db.insert(tableName, model.toJson());
    return res;
  }

  // COUNT
  Future<int?> getFavoriteListCount() async {
    final db = await database;
    int? count = Sqflite.firstIntValue(await db.rawQuery('SELECT COUNT(*) FROM $tableName'));
    return count;
  }

  // READ
  getFavoriteListModel(int id) async {
    final db = await database;
    var res = await db.query(tableName, where: 'id = ?', whereArgs: [id]);
    return res.isNotEmpty ? FavoriteImageData.fromJson(res.first) : Null;
  }

  // READ ALL DATA
  Future<List<FavoriteImageData>> getAllFavoriteListModels() async {
    final db = await database;
    var res = await db.query(tableName);
    List<FavoriteImageData> list =
    res.isNotEmpty ? res.map((c) => FavoriteImageData.fromJson(c)).toList() : [];
    return list;
  }

  // READ LIMIT DATA
  Future<List<FavoriteImageData>> getLimitFavoriteListModels(int startIndex, int count) async {
    final db = await database;
    var res = await db.rawQuery('SELECT * FROM $tableName LIMIT $startIndex, $count');
    List<FavoriteImageData> list =
    res.isNotEmpty ? res.map((c) => FavoriteImageData.fromJson(c)).toList() : [];
    return list;
  }

  // Update
  updateFavoriteListModel(FavoriteImageData model) async {
    final db = await database;
    var res = await db.update(tableName, model.toJson(),
        where: 'image_url = ?', whereArgs: [model.image_url]);
    return res;
  }

  // Delete
  deleteFavoriteListModel(String image_url) async {
    final db = await database;
    db.delete(tableName, where: 'image_url = ?', whereArgs: [image_url]);
  }

  deleteAllFavoriteListModels() async {
    final db = await database;
    db.rawDelete('DELETE FROM $tableName');
  }
}
