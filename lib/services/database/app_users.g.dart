// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_users.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetAppUserCollection on Isar {
  IsarCollection<AppUser> get appUsers => this.collection();
}

const AppUserSchema = CollectionSchema(
  name: r'AppUser',
  id: 2120223346807520010,
  properties: {
    r'blitzRank': PropertySchema(
      id: 0,
      name: r'blitzRank',
      type: IsarType.long,
    ),
    r'blitzRating': PropertySchema(
      id: 1,
      name: r'blitzRating',
      type: IsarType.long,
    ),
    r'bulletRank': PropertySchema(
      id: 2,
      name: r'bulletRank',
      type: IsarType.long,
    ),
    r'bulletRating': PropertySchema(
      id: 3,
      name: r'bulletRating',
      type: IsarType.long,
    ),
    r'email': PropertySchema(
      id: 4,
      name: r'email',
      type: IsarType.string,
    ),
    r'lichessID': PropertySchema(
      id: 5,
      name: r'lichessID',
      type: IsarType.string,
    ),
    r'overallRank': PropertySchema(
      id: 6,
      name: r'overallRank',
      type: IsarType.long,
    ),
    r'phoneNumber': PropertySchema(
      id: 7,
      name: r'phoneNumber',
      type: IsarType.string,
    ),
    r'teamName': PropertySchema(
      id: 8,
      name: r'teamName',
      type: IsarType.string,
    ),
    r'userName': PropertySchema(
      id: 9,
      name: r'userName',
      type: IsarType.string,
    ),
    r'userType': PropertySchema(
      id: 10,
      name: r'userType',
      type: IsarType.byte,
      enumMap: _AppUseruserTypeEnumValueMap,
    )
  },
  estimateSize: _appUserEstimateSize,
  serialize: _appUserSerialize,
  deserialize: _appUserDeserialize,
  deserializeProp: _appUserDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _appUserGetId,
  getLinks: _appUserGetLinks,
  attach: _appUserAttach,
  version: '3.1.0+1',
);

int _appUserEstimateSize(
  AppUser object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.email.length * 3;
  {
    final value = object.lichessID;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.phoneNumber;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.teamName;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.userName.length * 3;
  return bytesCount;
}

void _appUserSerialize(
  AppUser object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.blitzRank);
  writer.writeLong(offsets[1], object.blitzRating);
  writer.writeLong(offsets[2], object.bulletRank);
  writer.writeLong(offsets[3], object.bulletRating);
  writer.writeString(offsets[4], object.email);
  writer.writeString(offsets[5], object.lichessID);
  writer.writeLong(offsets[6], object.overallRank);
  writer.writeString(offsets[7], object.phoneNumber);
  writer.writeString(offsets[8], object.teamName);
  writer.writeString(offsets[9], object.userName);
  writer.writeByte(offsets[10], object.userType.index);
}

AppUser _appUserDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = AppUser(
    email: reader.readString(offsets[4]),
    userName: reader.readString(offsets[9]),
  );
  object.blitzRank = reader.readLongOrNull(offsets[0]);
  object.blitzRating = reader.readLongOrNull(offsets[1]);
  object.bulletRank = reader.readLongOrNull(offsets[2]);
  object.bulletRating = reader.readLongOrNull(offsets[3]);
  object.id = id;
  object.lichessID = reader.readStringOrNull(offsets[5]);
  object.overallRank = reader.readLongOrNull(offsets[6]);
  object.phoneNumber = reader.readStringOrNull(offsets[7]);
  object.teamName = reader.readStringOrNull(offsets[8]);
  object.userType =
      _AppUseruserTypeValueEnumMap[reader.readByteOrNull(offsets[10])] ??
          UserType.spectatorUser;
  return object;
}

P _appUserDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readLongOrNull(offset)) as P;
    case 1:
      return (reader.readLongOrNull(offset)) as P;
    case 2:
      return (reader.readLongOrNull(offset)) as P;
    case 3:
      return (reader.readLongOrNull(offset)) as P;
    case 4:
      return (reader.readString(offset)) as P;
    case 5:
      return (reader.readStringOrNull(offset)) as P;
    case 6:
      return (reader.readLongOrNull(offset)) as P;
    case 7:
      return (reader.readStringOrNull(offset)) as P;
    case 8:
      return (reader.readStringOrNull(offset)) as P;
    case 9:
      return (reader.readString(offset)) as P;
    case 10:
      return (_AppUseruserTypeValueEnumMap[reader.readByteOrNull(offset)] ??
          UserType.spectatorUser) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

const _AppUseruserTypeEnumValueMap = {
  'spectatorUser': 0,
  'playerUser': 1,
  'captainUser': 2,
  'hostUser': 3,
};
const _AppUseruserTypeValueEnumMap = {
  0: UserType.spectatorUser,
  1: UserType.playerUser,
  2: UserType.captainUser,
  3: UserType.hostUser,
};

Id _appUserGetId(AppUser object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _appUserGetLinks(AppUser object) {
  return [];
}

void _appUserAttach(IsarCollection<dynamic> col, Id id, AppUser object) {
  object.id = id;
}

extension AppUserQueryWhereSort on QueryBuilder<AppUser, AppUser, QWhere> {
  QueryBuilder<AppUser, AppUser, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension AppUserQueryWhere on QueryBuilder<AppUser, AppUser, QWhereClause> {
  QueryBuilder<AppUser, AppUser, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<AppUser, AppUser, QAfterWhereClause> idNotEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<AppUser, AppUser, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<AppUser, AppUser, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<AppUser, AppUser, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension AppUserQueryFilter
    on QueryBuilder<AppUser, AppUser, QFilterCondition> {
  QueryBuilder<AppUser, AppUser, QAfterFilterCondition> blitzRankIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'blitzRank',
      ));
    });
  }

  QueryBuilder<AppUser, AppUser, QAfterFilterCondition> blitzRankIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'blitzRank',
      ));
    });
  }

  QueryBuilder<AppUser, AppUser, QAfterFilterCondition> blitzRankEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'blitzRank',
        value: value,
      ));
    });
  }

  QueryBuilder<AppUser, AppUser, QAfterFilterCondition> blitzRankGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'blitzRank',
        value: value,
      ));
    });
  }

  QueryBuilder<AppUser, AppUser, QAfterFilterCondition> blitzRankLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'blitzRank',
        value: value,
      ));
    });
  }

  QueryBuilder<AppUser, AppUser, QAfterFilterCondition> blitzRankBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'blitzRank',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<AppUser, AppUser, QAfterFilterCondition> blitzRatingIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'blitzRating',
      ));
    });
  }

  QueryBuilder<AppUser, AppUser, QAfterFilterCondition> blitzRatingIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'blitzRating',
      ));
    });
  }

  QueryBuilder<AppUser, AppUser, QAfterFilterCondition> blitzRatingEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'blitzRating',
        value: value,
      ));
    });
  }

  QueryBuilder<AppUser, AppUser, QAfterFilterCondition> blitzRatingGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'blitzRating',
        value: value,
      ));
    });
  }

  QueryBuilder<AppUser, AppUser, QAfterFilterCondition> blitzRatingLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'blitzRating',
        value: value,
      ));
    });
  }

  QueryBuilder<AppUser, AppUser, QAfterFilterCondition> blitzRatingBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'blitzRating',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<AppUser, AppUser, QAfterFilterCondition> bulletRankIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'bulletRank',
      ));
    });
  }

  QueryBuilder<AppUser, AppUser, QAfterFilterCondition> bulletRankIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'bulletRank',
      ));
    });
  }

  QueryBuilder<AppUser, AppUser, QAfterFilterCondition> bulletRankEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'bulletRank',
        value: value,
      ));
    });
  }

  QueryBuilder<AppUser, AppUser, QAfterFilterCondition> bulletRankGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'bulletRank',
        value: value,
      ));
    });
  }

  QueryBuilder<AppUser, AppUser, QAfterFilterCondition> bulletRankLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'bulletRank',
        value: value,
      ));
    });
  }

  QueryBuilder<AppUser, AppUser, QAfterFilterCondition> bulletRankBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'bulletRank',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<AppUser, AppUser, QAfterFilterCondition> bulletRatingIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'bulletRating',
      ));
    });
  }

  QueryBuilder<AppUser, AppUser, QAfterFilterCondition>
      bulletRatingIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'bulletRating',
      ));
    });
  }

  QueryBuilder<AppUser, AppUser, QAfterFilterCondition> bulletRatingEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'bulletRating',
        value: value,
      ));
    });
  }

  QueryBuilder<AppUser, AppUser, QAfterFilterCondition> bulletRatingGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'bulletRating',
        value: value,
      ));
    });
  }

  QueryBuilder<AppUser, AppUser, QAfterFilterCondition> bulletRatingLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'bulletRating',
        value: value,
      ));
    });
  }

  QueryBuilder<AppUser, AppUser, QAfterFilterCondition> bulletRatingBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'bulletRating',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<AppUser, AppUser, QAfterFilterCondition> emailEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'email',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppUser, AppUser, QAfterFilterCondition> emailGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'email',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppUser, AppUser, QAfterFilterCondition> emailLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'email',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppUser, AppUser, QAfterFilterCondition> emailBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'email',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppUser, AppUser, QAfterFilterCondition> emailStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'email',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppUser, AppUser, QAfterFilterCondition> emailEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'email',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppUser, AppUser, QAfterFilterCondition> emailContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'email',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppUser, AppUser, QAfterFilterCondition> emailMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'email',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppUser, AppUser, QAfterFilterCondition> emailIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'email',
        value: '',
      ));
    });
  }

  QueryBuilder<AppUser, AppUser, QAfterFilterCondition> emailIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'email',
        value: '',
      ));
    });
  }

  QueryBuilder<AppUser, AppUser, QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<AppUser, AppUser, QAfterFilterCondition> idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<AppUser, AppUser, QAfterFilterCondition> idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<AppUser, AppUser, QAfterFilterCondition> idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<AppUser, AppUser, QAfterFilterCondition> lichessIDIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'lichessID',
      ));
    });
  }

  QueryBuilder<AppUser, AppUser, QAfterFilterCondition> lichessIDIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'lichessID',
      ));
    });
  }

  QueryBuilder<AppUser, AppUser, QAfterFilterCondition> lichessIDEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'lichessID',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppUser, AppUser, QAfterFilterCondition> lichessIDGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'lichessID',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppUser, AppUser, QAfterFilterCondition> lichessIDLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'lichessID',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppUser, AppUser, QAfterFilterCondition> lichessIDBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'lichessID',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppUser, AppUser, QAfterFilterCondition> lichessIDStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'lichessID',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppUser, AppUser, QAfterFilterCondition> lichessIDEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'lichessID',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppUser, AppUser, QAfterFilterCondition> lichessIDContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'lichessID',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppUser, AppUser, QAfterFilterCondition> lichessIDMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'lichessID',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppUser, AppUser, QAfterFilterCondition> lichessIDIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'lichessID',
        value: '',
      ));
    });
  }

  QueryBuilder<AppUser, AppUser, QAfterFilterCondition> lichessIDIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'lichessID',
        value: '',
      ));
    });
  }

  QueryBuilder<AppUser, AppUser, QAfterFilterCondition> overallRankIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'overallRank',
      ));
    });
  }

  QueryBuilder<AppUser, AppUser, QAfterFilterCondition> overallRankIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'overallRank',
      ));
    });
  }

  QueryBuilder<AppUser, AppUser, QAfterFilterCondition> overallRankEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'overallRank',
        value: value,
      ));
    });
  }

  QueryBuilder<AppUser, AppUser, QAfterFilterCondition> overallRankGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'overallRank',
        value: value,
      ));
    });
  }

  QueryBuilder<AppUser, AppUser, QAfterFilterCondition> overallRankLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'overallRank',
        value: value,
      ));
    });
  }

  QueryBuilder<AppUser, AppUser, QAfterFilterCondition> overallRankBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'overallRank',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<AppUser, AppUser, QAfterFilterCondition> phoneNumberIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'phoneNumber',
      ));
    });
  }

  QueryBuilder<AppUser, AppUser, QAfterFilterCondition> phoneNumberIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'phoneNumber',
      ));
    });
  }

  QueryBuilder<AppUser, AppUser, QAfterFilterCondition> phoneNumberEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'phoneNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppUser, AppUser, QAfterFilterCondition> phoneNumberGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'phoneNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppUser, AppUser, QAfterFilterCondition> phoneNumberLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'phoneNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppUser, AppUser, QAfterFilterCondition> phoneNumberBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'phoneNumber',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppUser, AppUser, QAfterFilterCondition> phoneNumberStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'phoneNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppUser, AppUser, QAfterFilterCondition> phoneNumberEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'phoneNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppUser, AppUser, QAfterFilterCondition> phoneNumberContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'phoneNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppUser, AppUser, QAfterFilterCondition> phoneNumberMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'phoneNumber',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppUser, AppUser, QAfterFilterCondition> phoneNumberIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'phoneNumber',
        value: '',
      ));
    });
  }

  QueryBuilder<AppUser, AppUser, QAfterFilterCondition>
      phoneNumberIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'phoneNumber',
        value: '',
      ));
    });
  }

  QueryBuilder<AppUser, AppUser, QAfterFilterCondition> teamNameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'teamName',
      ));
    });
  }

  QueryBuilder<AppUser, AppUser, QAfterFilterCondition> teamNameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'teamName',
      ));
    });
  }

  QueryBuilder<AppUser, AppUser, QAfterFilterCondition> teamNameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'teamName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppUser, AppUser, QAfterFilterCondition> teamNameGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'teamName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppUser, AppUser, QAfterFilterCondition> teamNameLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'teamName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppUser, AppUser, QAfterFilterCondition> teamNameBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'teamName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppUser, AppUser, QAfterFilterCondition> teamNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'teamName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppUser, AppUser, QAfterFilterCondition> teamNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'teamName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppUser, AppUser, QAfterFilterCondition> teamNameContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'teamName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppUser, AppUser, QAfterFilterCondition> teamNameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'teamName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppUser, AppUser, QAfterFilterCondition> teamNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'teamName',
        value: '',
      ));
    });
  }

  QueryBuilder<AppUser, AppUser, QAfterFilterCondition> teamNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'teamName',
        value: '',
      ));
    });
  }

  QueryBuilder<AppUser, AppUser, QAfterFilterCondition> userNameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'userName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppUser, AppUser, QAfterFilterCondition> userNameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'userName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppUser, AppUser, QAfterFilterCondition> userNameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'userName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppUser, AppUser, QAfterFilterCondition> userNameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'userName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppUser, AppUser, QAfterFilterCondition> userNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'userName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppUser, AppUser, QAfterFilterCondition> userNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'userName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppUser, AppUser, QAfterFilterCondition> userNameContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'userName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppUser, AppUser, QAfterFilterCondition> userNameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'userName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppUser, AppUser, QAfterFilterCondition> userNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'userName',
        value: '',
      ));
    });
  }

  QueryBuilder<AppUser, AppUser, QAfterFilterCondition> userNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'userName',
        value: '',
      ));
    });
  }

  QueryBuilder<AppUser, AppUser, QAfterFilterCondition> userTypeEqualTo(
      UserType value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'userType',
        value: value,
      ));
    });
  }

  QueryBuilder<AppUser, AppUser, QAfterFilterCondition> userTypeGreaterThan(
    UserType value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'userType',
        value: value,
      ));
    });
  }

  QueryBuilder<AppUser, AppUser, QAfterFilterCondition> userTypeLessThan(
    UserType value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'userType',
        value: value,
      ));
    });
  }

  QueryBuilder<AppUser, AppUser, QAfterFilterCondition> userTypeBetween(
    UserType lower,
    UserType upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'userType',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension AppUserQueryObject
    on QueryBuilder<AppUser, AppUser, QFilterCondition> {}

extension AppUserQueryLinks
    on QueryBuilder<AppUser, AppUser, QFilterCondition> {}

extension AppUserQuerySortBy on QueryBuilder<AppUser, AppUser, QSortBy> {
  QueryBuilder<AppUser, AppUser, QAfterSortBy> sortByBlitzRank() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'blitzRank', Sort.asc);
    });
  }

  QueryBuilder<AppUser, AppUser, QAfterSortBy> sortByBlitzRankDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'blitzRank', Sort.desc);
    });
  }

  QueryBuilder<AppUser, AppUser, QAfterSortBy> sortByBlitzRating() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'blitzRating', Sort.asc);
    });
  }

  QueryBuilder<AppUser, AppUser, QAfterSortBy> sortByBlitzRatingDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'blitzRating', Sort.desc);
    });
  }

  QueryBuilder<AppUser, AppUser, QAfterSortBy> sortByBulletRank() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bulletRank', Sort.asc);
    });
  }

  QueryBuilder<AppUser, AppUser, QAfterSortBy> sortByBulletRankDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bulletRank', Sort.desc);
    });
  }

  QueryBuilder<AppUser, AppUser, QAfterSortBy> sortByBulletRating() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bulletRating', Sort.asc);
    });
  }

  QueryBuilder<AppUser, AppUser, QAfterSortBy> sortByBulletRatingDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bulletRating', Sort.desc);
    });
  }

  QueryBuilder<AppUser, AppUser, QAfterSortBy> sortByEmail() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'email', Sort.asc);
    });
  }

  QueryBuilder<AppUser, AppUser, QAfterSortBy> sortByEmailDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'email', Sort.desc);
    });
  }

  QueryBuilder<AppUser, AppUser, QAfterSortBy> sortByLichessID() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lichessID', Sort.asc);
    });
  }

  QueryBuilder<AppUser, AppUser, QAfterSortBy> sortByLichessIDDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lichessID', Sort.desc);
    });
  }

  QueryBuilder<AppUser, AppUser, QAfterSortBy> sortByOverallRank() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'overallRank', Sort.asc);
    });
  }

  QueryBuilder<AppUser, AppUser, QAfterSortBy> sortByOverallRankDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'overallRank', Sort.desc);
    });
  }

  QueryBuilder<AppUser, AppUser, QAfterSortBy> sortByPhoneNumber() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'phoneNumber', Sort.asc);
    });
  }

  QueryBuilder<AppUser, AppUser, QAfterSortBy> sortByPhoneNumberDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'phoneNumber', Sort.desc);
    });
  }

  QueryBuilder<AppUser, AppUser, QAfterSortBy> sortByTeamName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'teamName', Sort.asc);
    });
  }

  QueryBuilder<AppUser, AppUser, QAfterSortBy> sortByTeamNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'teamName', Sort.desc);
    });
  }

  QueryBuilder<AppUser, AppUser, QAfterSortBy> sortByUserName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'userName', Sort.asc);
    });
  }

  QueryBuilder<AppUser, AppUser, QAfterSortBy> sortByUserNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'userName', Sort.desc);
    });
  }

  QueryBuilder<AppUser, AppUser, QAfterSortBy> sortByUserType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'userType', Sort.asc);
    });
  }

  QueryBuilder<AppUser, AppUser, QAfterSortBy> sortByUserTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'userType', Sort.desc);
    });
  }
}

extension AppUserQuerySortThenBy
    on QueryBuilder<AppUser, AppUser, QSortThenBy> {
  QueryBuilder<AppUser, AppUser, QAfterSortBy> thenByBlitzRank() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'blitzRank', Sort.asc);
    });
  }

  QueryBuilder<AppUser, AppUser, QAfterSortBy> thenByBlitzRankDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'blitzRank', Sort.desc);
    });
  }

  QueryBuilder<AppUser, AppUser, QAfterSortBy> thenByBlitzRating() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'blitzRating', Sort.asc);
    });
  }

  QueryBuilder<AppUser, AppUser, QAfterSortBy> thenByBlitzRatingDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'blitzRating', Sort.desc);
    });
  }

  QueryBuilder<AppUser, AppUser, QAfterSortBy> thenByBulletRank() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bulletRank', Sort.asc);
    });
  }

  QueryBuilder<AppUser, AppUser, QAfterSortBy> thenByBulletRankDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bulletRank', Sort.desc);
    });
  }

  QueryBuilder<AppUser, AppUser, QAfterSortBy> thenByBulletRating() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bulletRating', Sort.asc);
    });
  }

  QueryBuilder<AppUser, AppUser, QAfterSortBy> thenByBulletRatingDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bulletRating', Sort.desc);
    });
  }

  QueryBuilder<AppUser, AppUser, QAfterSortBy> thenByEmail() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'email', Sort.asc);
    });
  }

  QueryBuilder<AppUser, AppUser, QAfterSortBy> thenByEmailDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'email', Sort.desc);
    });
  }

  QueryBuilder<AppUser, AppUser, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<AppUser, AppUser, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<AppUser, AppUser, QAfterSortBy> thenByLichessID() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lichessID', Sort.asc);
    });
  }

  QueryBuilder<AppUser, AppUser, QAfterSortBy> thenByLichessIDDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lichessID', Sort.desc);
    });
  }

  QueryBuilder<AppUser, AppUser, QAfterSortBy> thenByOverallRank() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'overallRank', Sort.asc);
    });
  }

  QueryBuilder<AppUser, AppUser, QAfterSortBy> thenByOverallRankDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'overallRank', Sort.desc);
    });
  }

  QueryBuilder<AppUser, AppUser, QAfterSortBy> thenByPhoneNumber() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'phoneNumber', Sort.asc);
    });
  }

  QueryBuilder<AppUser, AppUser, QAfterSortBy> thenByPhoneNumberDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'phoneNumber', Sort.desc);
    });
  }

  QueryBuilder<AppUser, AppUser, QAfterSortBy> thenByTeamName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'teamName', Sort.asc);
    });
  }

  QueryBuilder<AppUser, AppUser, QAfterSortBy> thenByTeamNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'teamName', Sort.desc);
    });
  }

  QueryBuilder<AppUser, AppUser, QAfterSortBy> thenByUserName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'userName', Sort.asc);
    });
  }

  QueryBuilder<AppUser, AppUser, QAfterSortBy> thenByUserNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'userName', Sort.desc);
    });
  }

  QueryBuilder<AppUser, AppUser, QAfterSortBy> thenByUserType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'userType', Sort.asc);
    });
  }

  QueryBuilder<AppUser, AppUser, QAfterSortBy> thenByUserTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'userType', Sort.desc);
    });
  }
}

extension AppUserQueryWhereDistinct
    on QueryBuilder<AppUser, AppUser, QDistinct> {
  QueryBuilder<AppUser, AppUser, QDistinct> distinctByBlitzRank() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'blitzRank');
    });
  }

  QueryBuilder<AppUser, AppUser, QDistinct> distinctByBlitzRating() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'blitzRating');
    });
  }

  QueryBuilder<AppUser, AppUser, QDistinct> distinctByBulletRank() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'bulletRank');
    });
  }

  QueryBuilder<AppUser, AppUser, QDistinct> distinctByBulletRating() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'bulletRating');
    });
  }

  QueryBuilder<AppUser, AppUser, QDistinct> distinctByEmail(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'email', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<AppUser, AppUser, QDistinct> distinctByLichessID(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'lichessID', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<AppUser, AppUser, QDistinct> distinctByOverallRank() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'overallRank');
    });
  }

  QueryBuilder<AppUser, AppUser, QDistinct> distinctByPhoneNumber(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'phoneNumber', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<AppUser, AppUser, QDistinct> distinctByTeamName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'teamName', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<AppUser, AppUser, QDistinct> distinctByUserName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'userName', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<AppUser, AppUser, QDistinct> distinctByUserType() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'userType');
    });
  }
}

extension AppUserQueryProperty
    on QueryBuilder<AppUser, AppUser, QQueryProperty> {
  QueryBuilder<AppUser, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<AppUser, int?, QQueryOperations> blitzRankProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'blitzRank');
    });
  }

  QueryBuilder<AppUser, int?, QQueryOperations> blitzRatingProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'blitzRating');
    });
  }

  QueryBuilder<AppUser, int?, QQueryOperations> bulletRankProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'bulletRank');
    });
  }

  QueryBuilder<AppUser, int?, QQueryOperations> bulletRatingProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'bulletRating');
    });
  }

  QueryBuilder<AppUser, String, QQueryOperations> emailProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'email');
    });
  }

  QueryBuilder<AppUser, String?, QQueryOperations> lichessIDProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'lichessID');
    });
  }

  QueryBuilder<AppUser, int?, QQueryOperations> overallRankProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'overallRank');
    });
  }

  QueryBuilder<AppUser, String?, QQueryOperations> phoneNumberProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'phoneNumber');
    });
  }

  QueryBuilder<AppUser, String?, QQueryOperations> teamNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'teamName');
    });
  }

  QueryBuilder<AppUser, String, QQueryOperations> userNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'userName');
    });
  }

  QueryBuilder<AppUser, UserType, QQueryOperations> userTypeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'userType');
    });
  }
}
