import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import '../model/usermodel.dart';

class DatabaseHelper {
  static final DatabaseHelper _instance = DatabaseHelper._internal();
  factory DatabaseHelper() => _instance;
  DatabaseHelper._internal();

  static Database? _database;

  Future<Database> get database async {
    _database ??= await _initDB();
    return _database!;
  }

  Future<Database> _initDB() async {
    String path = join(await getDatabasesPath(), 'app_database.db');
    return await openDatabase(
      path,
      version: 1,
      onCreate: _onCreate,
    );
  }

  Future _onCreate(Database db, int version) async {
    await db.execute('''
      CREATE TABLE users (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        username TEXT,
        fullname TEXT,
        email TEXT,
        password TEXT,
        phone TEXT,
        address TEXT,
        birth_date TEXT,
        gender TEXT
      )
    ''');
  }

  // Register
  Future<int> registerUser(UserModel user) async {
    final db = await database;
    return await db.insert('users', user.toJson());
  }

  // Login
  Future<UserModel?> login(String email, String password) async {
    final db = await database;
    final result = await db.query(
      'users',
      where: 'email = ? AND password = ?',
      whereArgs: [email, password],
    );

    if (result.isNotEmpty) {
      return UserModel.fromJson(result.first);
    }
    return null;
  }

  // Optional: Cek jika email sudah dipakai
  Future<bool> isEmailTaken(String email) async {
    final db = await database;
    final result = await db.query(
      'users',
      where: 'email = ?',
      whereArgs: [email],
    );
    return result.isNotEmpty;
  }
}
