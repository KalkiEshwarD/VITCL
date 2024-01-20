abstract class NoSQLDatabaseProvider {
  Future<void> initializeDatabase();

  Future<void> initializeDB();
  Future<void> openDB();
  Future<void> closeDB();
}
