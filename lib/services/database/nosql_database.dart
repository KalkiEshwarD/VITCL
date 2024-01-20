import 'package:isar/isar.dart';

class NoSQLDatabase {
  bool isOpen;
  final String name;
  String? directory;

  NoSQLDatabase({
    required this.name,
    this.directory,
    this.isOpen = false,
  });

  factory NoSQLDatabase.fromIsar(Isar isar) => NoSQLDatabase(
        name: isar.name,
        directory: isar.directory,
      );
}
