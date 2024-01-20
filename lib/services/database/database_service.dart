import 'package:vitcl/services/database/database_provider.dart';

class NoSQLDatabaseService implements NoSQLDatabaseProvider {
  final NoSQLDatabaseProvider provider;
  const NoSQLDatabaseService(this.provider);

  @override
  Future<void> initializeDatabase() => provider.initializeDatabase();

  @override
  Future<void> closeDB() {
    // TODO: implement closeDB
    throw UnimplementedError();
  }

  @override
  Future<void> initializeDB() {
    // TODO: implement initializeDB
    throw UnimplementedError();
  }

  @override
  Future<void> openDB() {
    // TODO: implement openDB
    throw UnimplementedError();
  }
}
