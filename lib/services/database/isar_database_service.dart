import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'package:vitcl/services/database/app_users.dart';
import 'package:vitcl/services/database/database_provider.dart';
import 'package:vitcl/services/database/nosql_database.dart';

class IsarDatabaseProvider implements NoSQLDatabaseProvider {
  @override
  Future<NoSQLDatabase> initializeDatabase() async {
    final dir = await getApplicationDocumentsDirectory();
    final isar = await Isar.open(
      [
        AppUserSchema,
      ],
      directory: dir.path,
    );

    print(isar);
    return NoSQLDatabase.fromIsar(isar);
  }

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
