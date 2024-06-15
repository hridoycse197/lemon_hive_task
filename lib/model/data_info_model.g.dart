// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_info_model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetInfoCollection on Isar {
  IsarCollection<Info> get infos => this.collection();
}

const InfoSchema = CollectionSchema(
  name: r'Info',
  id: -6145260892868792349,
  properties: {
    r'count': PropertySchema(
      id: 0,
      name: r'count',
      type: IsarType.long,
    ),
    r'id': PropertySchema(
      id: 1,
      name: r'id',
      type: IsarType.string,
    ),
    r'next': PropertySchema(
      id: 2,
      name: r'next',
      type: IsarType.string,
    ),
    r'pages': PropertySchema(
      id: 3,
      name: r'pages',
      type: IsarType.long,
    ),
    r'prev': PropertySchema(
      id: 4,
      name: r'prev',
      type: IsarType.string,
    )
  },
  estimateSize: _infoEstimateSize,
  serialize: _infoSerialize,
  deserialize: _infoDeserialize,
  deserializeProp: _infoDeserializeProp,
  idName: r'isarid',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _infoGetId,
  getLinks: _infoGetLinks,
  attach: _infoAttach,
  version: '3.1.0+1',
);

int _infoEstimateSize(
  Info object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.id;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.next;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.prev;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _infoSerialize(
  Info object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.count);
  writer.writeString(offsets[1], object.id);
  writer.writeString(offsets[2], object.next);
  writer.writeLong(offsets[3], object.pages);
  writer.writeString(offsets[4], object.prev);
}

Info _infoDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Info(
    count: reader.readLongOrNull(offsets[0]),
    next: reader.readStringOrNull(offsets[2]),
    pages: reader.readLongOrNull(offsets[3]),
    prev: reader.readStringOrNull(offsets[4]),
  );
  object.id = reader.readStringOrNull(offsets[1]);
  return object;
}

P _infoDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readLongOrNull(offset)) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    case 2:
      return (reader.readStringOrNull(offset)) as P;
    case 3:
      return (reader.readLongOrNull(offset)) as P;
    case 4:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _infoGetId(Info object) {
  return object.isarid;
}

List<IsarLinkBase<dynamic>> _infoGetLinks(Info object) {
  return [];
}

void _infoAttach(IsarCollection<dynamic> col, Id id, Info object) {}

extension InfoQueryWhereSort on QueryBuilder<Info, Info, QWhere> {
  QueryBuilder<Info, Info, QAfterWhere> anyIsarid() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension InfoQueryWhere on QueryBuilder<Info, Info, QWhereClause> {
  QueryBuilder<Info, Info, QAfterWhereClause> isaridEqualTo(Id isarid) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: isarid,
        upper: isarid,
      ));
    });
  }

  QueryBuilder<Info, Info, QAfterWhereClause> isaridNotEqualTo(Id isarid) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: isarid, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: isarid, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: isarid, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: isarid, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<Info, Info, QAfterWhereClause> isaridGreaterThan(Id isarid,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: isarid, includeLower: include),
      );
    });
  }

  QueryBuilder<Info, Info, QAfterWhereClause> isaridLessThan(Id isarid,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: isarid, includeUpper: include),
      );
    });
  }

  QueryBuilder<Info, Info, QAfterWhereClause> isaridBetween(
    Id lowerIsarid,
    Id upperIsarid, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerIsarid,
        includeLower: includeLower,
        upper: upperIsarid,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension InfoQueryFilter on QueryBuilder<Info, Info, QFilterCondition> {
  QueryBuilder<Info, Info, QAfterFilterCondition> countIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'count',
      ));
    });
  }

  QueryBuilder<Info, Info, QAfterFilterCondition> countIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'count',
      ));
    });
  }

  QueryBuilder<Info, Info, QAfterFilterCondition> countEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'count',
        value: value,
      ));
    });
  }

  QueryBuilder<Info, Info, QAfterFilterCondition> countGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'count',
        value: value,
      ));
    });
  }

  QueryBuilder<Info, Info, QAfterFilterCondition> countLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'count',
        value: value,
      ));
    });
  }

  QueryBuilder<Info, Info, QAfterFilterCondition> countBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'count',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Info, Info, QAfterFilterCondition> idIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<Info, Info, QAfterFilterCondition> idIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<Info, Info, QAfterFilterCondition> idEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Info, Info, QAfterFilterCondition> idGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Info, Info, QAfterFilterCondition> idLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Info, Info, QAfterFilterCondition> idBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Info, Info, QAfterFilterCondition> idStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Info, Info, QAfterFilterCondition> idEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Info, Info, QAfterFilterCondition> idContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Info, Info, QAfterFilterCondition> idMatches(String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'id',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Info, Info, QAfterFilterCondition> idIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: '',
      ));
    });
  }

  QueryBuilder<Info, Info, QAfterFilterCondition> idIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'id',
        value: '',
      ));
    });
  }

  QueryBuilder<Info, Info, QAfterFilterCondition> isaridEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isarid',
        value: value,
      ));
    });
  }

  QueryBuilder<Info, Info, QAfterFilterCondition> isaridGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'isarid',
        value: value,
      ));
    });
  }

  QueryBuilder<Info, Info, QAfterFilterCondition> isaridLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'isarid',
        value: value,
      ));
    });
  }

  QueryBuilder<Info, Info, QAfterFilterCondition> isaridBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'isarid',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Info, Info, QAfterFilterCondition> nextIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'next',
      ));
    });
  }

  QueryBuilder<Info, Info, QAfterFilterCondition> nextIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'next',
      ));
    });
  }

  QueryBuilder<Info, Info, QAfterFilterCondition> nextEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'next',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Info, Info, QAfterFilterCondition> nextGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'next',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Info, Info, QAfterFilterCondition> nextLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'next',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Info, Info, QAfterFilterCondition> nextBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'next',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Info, Info, QAfterFilterCondition> nextStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'next',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Info, Info, QAfterFilterCondition> nextEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'next',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Info, Info, QAfterFilterCondition> nextContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'next',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Info, Info, QAfterFilterCondition> nextMatches(String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'next',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Info, Info, QAfterFilterCondition> nextIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'next',
        value: '',
      ));
    });
  }

  QueryBuilder<Info, Info, QAfterFilterCondition> nextIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'next',
        value: '',
      ));
    });
  }

  QueryBuilder<Info, Info, QAfterFilterCondition> pagesIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'pages',
      ));
    });
  }

  QueryBuilder<Info, Info, QAfterFilterCondition> pagesIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'pages',
      ));
    });
  }

  QueryBuilder<Info, Info, QAfterFilterCondition> pagesEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'pages',
        value: value,
      ));
    });
  }

  QueryBuilder<Info, Info, QAfterFilterCondition> pagesGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'pages',
        value: value,
      ));
    });
  }

  QueryBuilder<Info, Info, QAfterFilterCondition> pagesLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'pages',
        value: value,
      ));
    });
  }

  QueryBuilder<Info, Info, QAfterFilterCondition> pagesBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'pages',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Info, Info, QAfterFilterCondition> prevIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'prev',
      ));
    });
  }

  QueryBuilder<Info, Info, QAfterFilterCondition> prevIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'prev',
      ));
    });
  }

  QueryBuilder<Info, Info, QAfterFilterCondition> prevEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'prev',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Info, Info, QAfterFilterCondition> prevGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'prev',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Info, Info, QAfterFilterCondition> prevLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'prev',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Info, Info, QAfterFilterCondition> prevBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'prev',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Info, Info, QAfterFilterCondition> prevStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'prev',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Info, Info, QAfterFilterCondition> prevEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'prev',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Info, Info, QAfterFilterCondition> prevContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'prev',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Info, Info, QAfterFilterCondition> prevMatches(String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'prev',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Info, Info, QAfterFilterCondition> prevIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'prev',
        value: '',
      ));
    });
  }

  QueryBuilder<Info, Info, QAfterFilterCondition> prevIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'prev',
        value: '',
      ));
    });
  }
}

extension InfoQueryObject on QueryBuilder<Info, Info, QFilterCondition> {}

extension InfoQueryLinks on QueryBuilder<Info, Info, QFilterCondition> {}

extension InfoQuerySortBy on QueryBuilder<Info, Info, QSortBy> {
  QueryBuilder<Info, Info, QAfterSortBy> sortByCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'count', Sort.asc);
    });
  }

  QueryBuilder<Info, Info, QAfterSortBy> sortByCountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'count', Sort.desc);
    });
  }

  QueryBuilder<Info, Info, QAfterSortBy> sortById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<Info, Info, QAfterSortBy> sortByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<Info, Info, QAfterSortBy> sortByNext() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'next', Sort.asc);
    });
  }

  QueryBuilder<Info, Info, QAfterSortBy> sortByNextDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'next', Sort.desc);
    });
  }

  QueryBuilder<Info, Info, QAfterSortBy> sortByPages() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pages', Sort.asc);
    });
  }

  QueryBuilder<Info, Info, QAfterSortBy> sortByPagesDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pages', Sort.desc);
    });
  }

  QueryBuilder<Info, Info, QAfterSortBy> sortByPrev() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'prev', Sort.asc);
    });
  }

  QueryBuilder<Info, Info, QAfterSortBy> sortByPrevDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'prev', Sort.desc);
    });
  }
}

extension InfoQuerySortThenBy on QueryBuilder<Info, Info, QSortThenBy> {
  QueryBuilder<Info, Info, QAfterSortBy> thenByCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'count', Sort.asc);
    });
  }

  QueryBuilder<Info, Info, QAfterSortBy> thenByCountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'count', Sort.desc);
    });
  }

  QueryBuilder<Info, Info, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<Info, Info, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<Info, Info, QAfterSortBy> thenByIsarid() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isarid', Sort.asc);
    });
  }

  QueryBuilder<Info, Info, QAfterSortBy> thenByIsaridDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isarid', Sort.desc);
    });
  }

  QueryBuilder<Info, Info, QAfterSortBy> thenByNext() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'next', Sort.asc);
    });
  }

  QueryBuilder<Info, Info, QAfterSortBy> thenByNextDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'next', Sort.desc);
    });
  }

  QueryBuilder<Info, Info, QAfterSortBy> thenByPages() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pages', Sort.asc);
    });
  }

  QueryBuilder<Info, Info, QAfterSortBy> thenByPagesDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pages', Sort.desc);
    });
  }

  QueryBuilder<Info, Info, QAfterSortBy> thenByPrev() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'prev', Sort.asc);
    });
  }

  QueryBuilder<Info, Info, QAfterSortBy> thenByPrevDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'prev', Sort.desc);
    });
  }
}

extension InfoQueryWhereDistinct on QueryBuilder<Info, Info, QDistinct> {
  QueryBuilder<Info, Info, QDistinct> distinctByCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'count');
    });
  }

  QueryBuilder<Info, Info, QDistinct> distinctById(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'id', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Info, Info, QDistinct> distinctByNext(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'next', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Info, Info, QDistinct> distinctByPages() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'pages');
    });
  }

  QueryBuilder<Info, Info, QDistinct> distinctByPrev(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'prev', caseSensitive: caseSensitive);
    });
  }
}

extension InfoQueryProperty on QueryBuilder<Info, Info, QQueryProperty> {
  QueryBuilder<Info, int, QQueryOperations> isaridProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isarid');
    });
  }

  QueryBuilder<Info, int?, QQueryOperations> countProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'count');
    });
  }

  QueryBuilder<Info, String?, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<Info, String?, QQueryOperations> nextProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'next');
    });
  }

  QueryBuilder<Info, int?, QQueryOperations> pagesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'pages');
    });
  }

  QueryBuilder<Info, String?, QQueryOperations> prevProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'prev');
    });
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Info _$InfoFromJson(Map<String, dynamic> json) => Info(
      count: (json['count'] as num?)?.toInt(),
      pages: (json['pages'] as num?)?.toInt(),
      next: json['next'] as String?,
      prev: json['prev'] as String?,
    )..id = json['id'] as String?;

Map<String, dynamic> _$InfoToJson(Info instance) => <String, dynamic>{
      'id': instance.id,
      'count': instance.count,
      'pages': instance.pages,
      'next': instance.next,
      'prev': instance.prev,
    };
