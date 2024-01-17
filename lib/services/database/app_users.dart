import 'package:isar/isar.dart';

// part 'app_users.g.dart';

abstract class AppUser {
  late String userName;
  late String email;
}

@collection
class SpectatorUser implements AppUser {
  @override
  late String userName;
  @override
  late String email;

  SpectatorUser({
    required this.userName,
    required this.email,
  });
}

@collection
class PlayerUser implements AppUser {
  late String lichessID;
  late String phoneNumber;

  late int blitzRating;
  late int bulletRating;
  late int blitzRank;
  late int bulletRank;
  late int overallRank;

  Id id = Isar.autoIncrement;

  @override
  String email;

  @override
  String userName;

  PlayerUser({
    required this.userName,
    required this.email,
    required this.lichessID,
    required this.phoneNumber,
  });
}

@collection
class CaptainUser implements AppUser {
  late String lichessID;
  late String phoneNumber;

  late String teamName;

  @override
  late String email;

  @override
  late String userName;

  late int blitzRating;
  late int bulletRating;
  late int blitzRank;
  late int bulletRank;
  late int overallRank;

  CaptainUser({
    required this.userName,
    required this.email,
    required this.lichessID,
    required this.phoneNumber,
    required this.teamName,
  });
}

@collection
class HostUser extends SpectatorUser {
  late String phoneNumber;

  HostUser({
    required super.userName,
    required super.email,
    required this.phoneNumber,
  });
}
