// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'artserv.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetArtservCollection on Isar {
  IsarCollection<Artserv> get artservs => this.collection();
}

const ArtservSchema = CollectionSchema(
  name: r'Artserv',
  id: 3003495227717453717,
  properties: {
    r'art': PropertySchema(
      id: 0,
      name: r'art',
      type: IsarType.string,
    ),
    r'can': PropertySchema(
      id: 1,
      name: r'can',
      type: IsarType.double,
    ),
    r'id': PropertySchema(
      id: 2,
      name: r'id',
      type: IsarType.long,
    ),
    r'pre': PropertySchema(
      id: 3,
      name: r'pre',
      type: IsarType.double,
    ),
    r'vtaPre': PropertySchema(
      id: 4,
      name: r'vtaPre',
      type: IsarType.long,
    )
  },
  estimateSize: _artservEstimateSize,
  serialize: _artservSerialize,
  deserialize: _artservDeserialize,
  deserializeProp: _artservDeserializeProp,
  idName: r'idLocal',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _artservGetId,
  getLinks: _artservGetLinks,
  attach: _artservAttach,
  version: '3.1.0+1',
);

int _artservEstimateSize(
  Artserv object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.art.length * 3;
  return bytesCount;
}

void _artservSerialize(
  Artserv object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.art);
  writer.writeDouble(offsets[1], object.can);
  writer.writeLong(offsets[2], object.id);
  writer.writeDouble(offsets[3], object.pre);
  writer.writeLong(offsets[4], object.vtaPre);
}

Artserv _artservDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Artserv(
    art: reader.readString(offsets[0]),
    can: reader.readDouble(offsets[1]),
    id: reader.readLong(offsets[2]),
    pre: reader.readDouble(offsets[3]),
    vtaPre: reader.readLong(offsets[4]),
  );
  object.idLocal = id;
  return object;
}

P _artservDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readString(offset)) as P;
    case 1:
      return (reader.readDouble(offset)) as P;
    case 2:
      return (reader.readLong(offset)) as P;
    case 3:
      return (reader.readDouble(offset)) as P;
    case 4:
      return (reader.readLong(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _artservGetId(Artserv object) {
  return object.idLocal ?? Isar.autoIncrement;
}

List<IsarLinkBase<dynamic>> _artservGetLinks(Artserv object) {
  return [];
}

void _artservAttach(IsarCollection<dynamic> col, Id id, Artserv object) {
  object.idLocal = id;
}

extension ArtservQueryWhereSort on QueryBuilder<Artserv, Artserv, QWhere> {
  QueryBuilder<Artserv, Artserv, QAfterWhere> anyIdLocal() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension ArtservQueryWhere on QueryBuilder<Artserv, Artserv, QWhereClause> {
  QueryBuilder<Artserv, Artserv, QAfterWhereClause> idLocalEqualTo(Id idLocal) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: idLocal,
        upper: idLocal,
      ));
    });
  }

  QueryBuilder<Artserv, Artserv, QAfterWhereClause> idLocalNotEqualTo(
      Id idLocal) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: idLocal, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: idLocal, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: idLocal, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: idLocal, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<Artserv, Artserv, QAfterWhereClause> idLocalGreaterThan(
      Id idLocal,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: idLocal, includeLower: include),
      );
    });
  }

  QueryBuilder<Artserv, Artserv, QAfterWhereClause> idLocalLessThan(Id idLocal,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: idLocal, includeUpper: include),
      );
    });
  }

  QueryBuilder<Artserv, Artserv, QAfterWhereClause> idLocalBetween(
    Id lowerIdLocal,
    Id upperIdLocal, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerIdLocal,
        includeLower: includeLower,
        upper: upperIdLocal,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension ArtservQueryFilter
    on QueryBuilder<Artserv, Artserv, QFilterCondition> {
  QueryBuilder<Artserv, Artserv, QAfterFilterCondition> artEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'art',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Artserv, Artserv, QAfterFilterCondition> artGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'art',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Artserv, Artserv, QAfterFilterCondition> artLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'art',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Artserv, Artserv, QAfterFilterCondition> artBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'art',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Artserv, Artserv, QAfterFilterCondition> artStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'art',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Artserv, Artserv, QAfterFilterCondition> artEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'art',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Artserv, Artserv, QAfterFilterCondition> artContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'art',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Artserv, Artserv, QAfterFilterCondition> artMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'art',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Artserv, Artserv, QAfterFilterCondition> artIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'art',
        value: '',
      ));
    });
  }

  QueryBuilder<Artserv, Artserv, QAfterFilterCondition> artIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'art',
        value: '',
      ));
    });
  }

  QueryBuilder<Artserv, Artserv, QAfterFilterCondition> canEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'can',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Artserv, Artserv, QAfterFilterCondition> canGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'can',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Artserv, Artserv, QAfterFilterCondition> canLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'can',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Artserv, Artserv, QAfterFilterCondition> canBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'can',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Artserv, Artserv, QAfterFilterCondition> idEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Artserv, Artserv, QAfterFilterCondition> idGreaterThan(
    int value, {
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

  QueryBuilder<Artserv, Artserv, QAfterFilterCondition> idLessThan(
    int value, {
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

  QueryBuilder<Artserv, Artserv, QAfterFilterCondition> idBetween(
    int lower,
    int upper, {
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

  QueryBuilder<Artserv, Artserv, QAfterFilterCondition> idLocalIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'idLocal',
      ));
    });
  }

  QueryBuilder<Artserv, Artserv, QAfterFilterCondition> idLocalIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'idLocal',
      ));
    });
  }

  QueryBuilder<Artserv, Artserv, QAfterFilterCondition> idLocalEqualTo(
      Id? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'idLocal',
        value: value,
      ));
    });
  }

  QueryBuilder<Artserv, Artserv, QAfterFilterCondition> idLocalGreaterThan(
    Id? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'idLocal',
        value: value,
      ));
    });
  }

  QueryBuilder<Artserv, Artserv, QAfterFilterCondition> idLocalLessThan(
    Id? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'idLocal',
        value: value,
      ));
    });
  }

  QueryBuilder<Artserv, Artserv, QAfterFilterCondition> idLocalBetween(
    Id? lower,
    Id? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'idLocal',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Artserv, Artserv, QAfterFilterCondition> preEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'pre',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Artserv, Artserv, QAfterFilterCondition> preGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'pre',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Artserv, Artserv, QAfterFilterCondition> preLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'pre',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Artserv, Artserv, QAfterFilterCondition> preBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'pre',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Artserv, Artserv, QAfterFilterCondition> vtaPreEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'vtaPre',
        value: value,
      ));
    });
  }

  QueryBuilder<Artserv, Artserv, QAfterFilterCondition> vtaPreGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'vtaPre',
        value: value,
      ));
    });
  }

  QueryBuilder<Artserv, Artserv, QAfterFilterCondition> vtaPreLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'vtaPre',
        value: value,
      ));
    });
  }

  QueryBuilder<Artserv, Artserv, QAfterFilterCondition> vtaPreBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'vtaPre',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension ArtservQueryObject
    on QueryBuilder<Artserv, Artserv, QFilterCondition> {}

extension ArtservQueryLinks
    on QueryBuilder<Artserv, Artserv, QFilterCondition> {}

extension ArtservQuerySortBy on QueryBuilder<Artserv, Artserv, QSortBy> {
  QueryBuilder<Artserv, Artserv, QAfterSortBy> sortByArt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'art', Sort.asc);
    });
  }

  QueryBuilder<Artserv, Artserv, QAfterSortBy> sortByArtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'art', Sort.desc);
    });
  }

  QueryBuilder<Artserv, Artserv, QAfterSortBy> sortByCan() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'can', Sort.asc);
    });
  }

  QueryBuilder<Artserv, Artserv, QAfterSortBy> sortByCanDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'can', Sort.desc);
    });
  }

  QueryBuilder<Artserv, Artserv, QAfterSortBy> sortById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<Artserv, Artserv, QAfterSortBy> sortByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<Artserv, Artserv, QAfterSortBy> sortByPre() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pre', Sort.asc);
    });
  }

  QueryBuilder<Artserv, Artserv, QAfterSortBy> sortByPreDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pre', Sort.desc);
    });
  }

  QueryBuilder<Artserv, Artserv, QAfterSortBy> sortByVtaPre() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'vtaPre', Sort.asc);
    });
  }

  QueryBuilder<Artserv, Artserv, QAfterSortBy> sortByVtaPreDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'vtaPre', Sort.desc);
    });
  }
}

extension ArtservQuerySortThenBy
    on QueryBuilder<Artserv, Artserv, QSortThenBy> {
  QueryBuilder<Artserv, Artserv, QAfterSortBy> thenByArt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'art', Sort.asc);
    });
  }

  QueryBuilder<Artserv, Artserv, QAfterSortBy> thenByArtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'art', Sort.desc);
    });
  }

  QueryBuilder<Artserv, Artserv, QAfterSortBy> thenByCan() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'can', Sort.asc);
    });
  }

  QueryBuilder<Artserv, Artserv, QAfterSortBy> thenByCanDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'can', Sort.desc);
    });
  }

  QueryBuilder<Artserv, Artserv, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<Artserv, Artserv, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<Artserv, Artserv, QAfterSortBy> thenByIdLocal() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'idLocal', Sort.asc);
    });
  }

  QueryBuilder<Artserv, Artserv, QAfterSortBy> thenByIdLocalDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'idLocal', Sort.desc);
    });
  }

  QueryBuilder<Artserv, Artserv, QAfterSortBy> thenByPre() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pre', Sort.asc);
    });
  }

  QueryBuilder<Artserv, Artserv, QAfterSortBy> thenByPreDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pre', Sort.desc);
    });
  }

  QueryBuilder<Artserv, Artserv, QAfterSortBy> thenByVtaPre() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'vtaPre', Sort.asc);
    });
  }

  QueryBuilder<Artserv, Artserv, QAfterSortBy> thenByVtaPreDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'vtaPre', Sort.desc);
    });
  }
}

extension ArtservQueryWhereDistinct
    on QueryBuilder<Artserv, Artserv, QDistinct> {
  QueryBuilder<Artserv, Artserv, QDistinct> distinctByArt(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'art', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Artserv, Artserv, QDistinct> distinctByCan() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'can');
    });
  }

  QueryBuilder<Artserv, Artserv, QDistinct> distinctById() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'id');
    });
  }

  QueryBuilder<Artserv, Artserv, QDistinct> distinctByPre() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'pre');
    });
  }

  QueryBuilder<Artserv, Artserv, QDistinct> distinctByVtaPre() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'vtaPre');
    });
  }
}

extension ArtservQueryProperty
    on QueryBuilder<Artserv, Artserv, QQueryProperty> {
  QueryBuilder<Artserv, int, QQueryOperations> idLocalProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'idLocal');
    });
  }

  QueryBuilder<Artserv, String, QQueryOperations> artProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'art');
    });
  }

  QueryBuilder<Artserv, double, QQueryOperations> canProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'can');
    });
  }

  QueryBuilder<Artserv, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<Artserv, double, QQueryOperations> preProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'pre');
    });
  }

  QueryBuilder<Artserv, int, QQueryOperations> vtaPreProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'vtaPre');
    });
  }
}
