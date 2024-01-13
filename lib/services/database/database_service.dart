import 'package:vitcl/services/database/database_provider.dart';

class NoSQLDatabaseService implements NoSQLDatabaseProvider {
  final NoSQLDatabaseProvider provider;
  const NoSQLDatabaseService(this.provider);

  @override
  Future<void> initializeDatabase() => provider.initializeDatabase();

  @override
  Future<void> userSignUp({
    required String email,
    bool isVerified = false,
  }) async =>
      provider.userSignUp(email: email, isVerified: isVerified);
}
