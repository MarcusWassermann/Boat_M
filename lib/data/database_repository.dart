import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseRepository {
  static const _databaseName = 'boote_database.db';
  static const _databaseVersion = 1;

  static const table = 'boote';

  static const columnId = 'id';
  static const columnMarke = 'marke';
  static const columnModell = 'modell';
  static const columnAuswahl = 'auswahl';
  static const columnLiegeplatz = 'liegeplatz';
  static const columnBaujahrvon = 'baujahrvon';
  static const columnBaujahrbis = 'baujahrbis';
  static const columnLaengmin = 'laengmin';
  static const columnLaengmax = 'laengmax';
  static const columnPreisvon = 'preisvon';
  static const columnPreisbis = 'preisbis';
  static const columnMotorart = 'motorart';
  static const columnKraftstoff = 'kraftstoff';
  static const columnLeistungvon = 'leistungvon';
  static const columnSegelanzahl = 'segelanzahl';
  static const columnSegelqm = 'segelqm';

  DatabaseRepository._privateConstructor();
  static final DatabaseRepository instance =
      DatabaseRepository._privateConstructor();

  static Database? _database;

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDatabase();
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
      CREATE TABLE $table (
        $columnId INTEGER PRIMARY KEY AUTOINCREMENT,
        $columnMarke TEXT NOT NULL,
        $columnModell TEXT NOT NULL,
        $columnAuswahl TEXT NOT NULL,
        $columnLiegeplatz TEXT NOT NULL,
        $columnBaujahrvon INTEGER,
        $columnBaujahrbis INTEGER,
        $columnLaengmin REAL,
        $columnLaengmax REAL,
        $columnPreisvon REAL,
        $columnPreisbis REAL,
        $columnMotorart TEXT,
        $columnKraftstoff TEXT,
        $columnLeistungvon INTEGER,
        $columnSegelanzahl INTEGER,
        $columnSegelqm REAL
      )
      ''');
  }

  // Weitere Methoden wie getAllBoote(), insertBoot(), updateBoot(), deleteBoot()
  // wie zuvor
}
