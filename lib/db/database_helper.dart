import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:sqflite/sqlite_api.dart';

class DatabaseHelper {
  static const _databaseName = 'books_database.db';
  static const _databaseVersion = 1;
  static const _tableName = 'books';

  DatabaseHelper._privateConstructor();
  static final DatabaseHelper instance = DatabaseHelper._privateConstructor();

  static Database? _database;

  Future<Database> get database async {
    _database ??= await _initDatabase();
    return _database!;
  }

  _initDatabase() async {
    String path = join(await getDatabasesPath(), _databaseName);
    return await openDatabase(
      path,
      version: _databaseVersion,
      onCreate: _onCreate,
    );
  }

  Future _onCreate(Database db, int version) async {
    await db.execute('''
      CREATE TABLE $_tableName (
        id TEXT PRIMARY KEY,
        title TEXT,
        authors TEXT,
        publisher TEXT,
        publishedDate TEXT,
        isFavorite INTEGER,
        description TEXT,
        industryIdentifiers TEXT,
        pageCount INTEGER,
        language TEXT,
        imageLinks TEXT,
        previewLink TEXT,
        infoLink TEXT
      )
    ''');
  }
}
