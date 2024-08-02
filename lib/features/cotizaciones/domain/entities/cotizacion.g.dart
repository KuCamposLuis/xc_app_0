// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cotizacion.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetCotizacionCollection on Isar {
  IsarCollection<Cotizacion> get cotizacions => this.collection();
}

const CotizacionSchema = CollectionSchema(
  name: r'Cotizacion',
  id: 1109779404150332189,
  properties: {
    r'cltEnt': PropertySchema(
      id: 0,
      name: r'cltEnt',
      type: IsarType.string,
    ),
    r'est': PropertySchema(
      id: 1,
      name: r'est',
      type: IsarType.string,
    ),
    r'fch': PropertySchema(
      id: 2,
      name: r'fch',
      type: IsarType.dateTime,
    ),
    r'id': PropertySchema(
      id: 3,
      name: r'id',
      type: IsarType.long,
    ),
    r'serDoc': PropertySchema(
      id: 4,
      name: r'serDoc',
      type: IsarType.string,
    ),
    r'serFol': PropertySchema(
      id: 5,
      name: r'serFol',
      type: IsarType.string,
    )
  },
  estimateSize: _cotizacionEstimateSize,
  serialize: _cotizacionSerialize,
  deserialize: _cotizacionDeserialize,
  deserializeProp: _cotizacionDeserializeProp,
  idName: r'idLocal',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _cotizacionGetId,
  getLinks: _cotizacionGetLinks,
  attach: _cotizacionAttach,
  version: '3.1.0+1',
);

int _cotizacionEstimateSize(
  Cotizacion object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.cltEnt.length * 3;
  bytesCount += 3 + object.est.length * 3;
  bytesCount += 3 + object.serDoc.length * 3;
  bytesCount += 3 + object.serFol.length * 3;
  return bytesCount;
}

void _cotizacionSerialize(
  Cotizacion object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.cltEnt);
  writer.writeString(offsets[1], object.est);
  writer.writeDateTime(offsets[2], object.fch);
  writer.writeLong(offsets[3], object.id);
  writer.writeString(offsets[4], object.serDoc);
  writer.writeString(offsets[5], object.serFol);
}

Cotizacion _cotizacionDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Cotizacion(
    cltEnt: reader.readString(offsets[0]),
    est: reader.readString(offsets[1]),
    fch: reader.readDateTime(offsets[2]),
    id: reader.readLong(offsets[3]),
    serDoc: reader.readString(offsets[4]),
    serFol: reader.readString(offsets[5]),
  );
  object.idLocal = id;
  return object;
}

P _cotizacionDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readString(offset)) as P;
    case 1:
      return (reader.readString(offset)) as P;
    case 2:
      return (reader.readDateTime(offset)) as P;
    case 3:
      return (reader.readLong(offset)) as P;
    case 4:
      return (reader.readString(offset)) as P;
    case 5:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _cotizacionGetId(Cotizacion object) {
  return object.idLocal ?? Isar.autoIncrement;
}

List<IsarLinkBase<dynamic>> _cotizacionGetLinks(Cotizacion object) {
  return [];
}

void _cotizacionAttach(IsarCollection<dynamic> col, Id id, Cotizacion object) {
  object.idLocal = id;
}

extension CotizacionQueryWhereSort
    on QueryBuilder<Cotizacion, Cotizacion, QWhere> {
  QueryBuilder<Cotizacion, Cotizacion, QAfterWhere> anyIdLocal() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension CotizacionQueryWhere
    on QueryBuilder<Cotizacion, Cotizacion, QWhereClause> {
  QueryBuilder<Cotizacion, Cotizacion, QAfterWhereClause> idLocalEqualTo(
      Id idLocal) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: idLocal,
        upper: idLocal,
      ));
    });
  }

  QueryBuilder<Cotizacion, Cotizacion, QAfterWhereClause> idLocalNotEqualTo(
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

  QueryBuilder<Cotizacion, Cotizacion, QAfterWhereClause> idLocalGreaterThan(
      Id idLocal,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: idLocal, includeLower: include),
      );
    });
  }

  QueryBuilder<Cotizacion, Cotizacion, QAfterWhereClause> idLocalLessThan(
      Id idLocal,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: idLocal, includeUpper: include),
      );
    });
  }

  QueryBuilder<Cotizacion, Cotizacion, QAfterWhereClause> idLocalBetween(
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

extension CotizacionQueryFilter
    on QueryBuilder<Cotizacion, Cotizacion, QFilterCondition> {
  QueryBuilder<Cotizacion, Cotizacion, QAfterFilterCondition> cltEntEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'cltEnt',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Cotizacion, Cotizacion, QAfterFilterCondition> cltEntGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'cltEnt',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Cotizacion, Cotizacion, QAfterFilterCondition> cltEntLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'cltEnt',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Cotizacion, Cotizacion, QAfterFilterCondition> cltEntBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'cltEnt',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Cotizacion, Cotizacion, QAfterFilterCondition> cltEntStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'cltEnt',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Cotizacion, Cotizacion, QAfterFilterCondition> cltEntEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'cltEnt',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Cotizacion, Cotizacion, QAfterFilterCondition> cltEntContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'cltEnt',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Cotizacion, Cotizacion, QAfterFilterCondition> cltEntMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'cltEnt',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Cotizacion, Cotizacion, QAfterFilterCondition> cltEntIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'cltEnt',
        value: '',
      ));
    });
  }

  QueryBuilder<Cotizacion, Cotizacion, QAfterFilterCondition>
      cltEntIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'cltEnt',
        value: '',
      ));
    });
  }

  QueryBuilder<Cotizacion, Cotizacion, QAfterFilterCondition> estEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'est',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Cotizacion, Cotizacion, QAfterFilterCondition> estGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'est',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Cotizacion, Cotizacion, QAfterFilterCondition> estLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'est',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Cotizacion, Cotizacion, QAfterFilterCondition> estBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'est',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Cotizacion, Cotizacion, QAfterFilterCondition> estStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'est',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Cotizacion, Cotizacion, QAfterFilterCondition> estEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'est',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Cotizacion, Cotizacion, QAfterFilterCondition> estContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'est',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Cotizacion, Cotizacion, QAfterFilterCondition> estMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'est',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Cotizacion, Cotizacion, QAfterFilterCondition> estIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'est',
        value: '',
      ));
    });
  }

  QueryBuilder<Cotizacion, Cotizacion, QAfterFilterCondition> estIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'est',
        value: '',
      ));
    });
  }

  QueryBuilder<Cotizacion, Cotizacion, QAfterFilterCondition> fchEqualTo(
      DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fch',
        value: value,
      ));
    });
  }

  QueryBuilder<Cotizacion, Cotizacion, QAfterFilterCondition> fchGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'fch',
        value: value,
      ));
    });
  }

  QueryBuilder<Cotizacion, Cotizacion, QAfterFilterCondition> fchLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'fch',
        value: value,
      ));
    });
  }

  QueryBuilder<Cotizacion, Cotizacion, QAfterFilterCondition> fchBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'fch',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Cotizacion, Cotizacion, QAfterFilterCondition> idEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Cotizacion, Cotizacion, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<Cotizacion, Cotizacion, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<Cotizacion, Cotizacion, QAfterFilterCondition> idBetween(
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

  QueryBuilder<Cotizacion, Cotizacion, QAfterFilterCondition> idLocalIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'idLocal',
      ));
    });
  }

  QueryBuilder<Cotizacion, Cotizacion, QAfterFilterCondition>
      idLocalIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'idLocal',
      ));
    });
  }

  QueryBuilder<Cotizacion, Cotizacion, QAfterFilterCondition> idLocalEqualTo(
      Id? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'idLocal',
        value: value,
      ));
    });
  }

  QueryBuilder<Cotizacion, Cotizacion, QAfterFilterCondition>
      idLocalGreaterThan(
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

  QueryBuilder<Cotizacion, Cotizacion, QAfterFilterCondition> idLocalLessThan(
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

  QueryBuilder<Cotizacion, Cotizacion, QAfterFilterCondition> idLocalBetween(
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

  QueryBuilder<Cotizacion, Cotizacion, QAfterFilterCondition> serDocEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'serDoc',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Cotizacion, Cotizacion, QAfterFilterCondition> serDocGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'serDoc',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Cotizacion, Cotizacion, QAfterFilterCondition> serDocLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'serDoc',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Cotizacion, Cotizacion, QAfterFilterCondition> serDocBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'serDoc',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Cotizacion, Cotizacion, QAfterFilterCondition> serDocStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'serDoc',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Cotizacion, Cotizacion, QAfterFilterCondition> serDocEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'serDoc',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Cotizacion, Cotizacion, QAfterFilterCondition> serDocContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'serDoc',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Cotizacion, Cotizacion, QAfterFilterCondition> serDocMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'serDoc',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Cotizacion, Cotizacion, QAfterFilterCondition> serDocIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'serDoc',
        value: '',
      ));
    });
  }

  QueryBuilder<Cotizacion, Cotizacion, QAfterFilterCondition>
      serDocIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'serDoc',
        value: '',
      ));
    });
  }

  QueryBuilder<Cotizacion, Cotizacion, QAfterFilterCondition> serFolEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'serFol',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Cotizacion, Cotizacion, QAfterFilterCondition> serFolGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'serFol',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Cotizacion, Cotizacion, QAfterFilterCondition> serFolLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'serFol',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Cotizacion, Cotizacion, QAfterFilterCondition> serFolBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'serFol',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Cotizacion, Cotizacion, QAfterFilterCondition> serFolStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'serFol',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Cotizacion, Cotizacion, QAfterFilterCondition> serFolEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'serFol',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Cotizacion, Cotizacion, QAfterFilterCondition> serFolContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'serFol',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Cotizacion, Cotizacion, QAfterFilterCondition> serFolMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'serFol',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Cotizacion, Cotizacion, QAfterFilterCondition> serFolIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'serFol',
        value: '',
      ));
    });
  }

  QueryBuilder<Cotizacion, Cotizacion, QAfterFilterCondition>
      serFolIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'serFol',
        value: '',
      ));
    });
  }
}

extension CotizacionQueryObject
    on QueryBuilder<Cotizacion, Cotizacion, QFilterCondition> {}

extension CotizacionQueryLinks
    on QueryBuilder<Cotizacion, Cotizacion, QFilterCondition> {}

extension CotizacionQuerySortBy
    on QueryBuilder<Cotizacion, Cotizacion, QSortBy> {
  QueryBuilder<Cotizacion, Cotizacion, QAfterSortBy> sortByCltEnt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cltEnt', Sort.asc);
    });
  }

  QueryBuilder<Cotizacion, Cotizacion, QAfterSortBy> sortByCltEntDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cltEnt', Sort.desc);
    });
  }

  QueryBuilder<Cotizacion, Cotizacion, QAfterSortBy> sortByEst() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'est', Sort.asc);
    });
  }

  QueryBuilder<Cotizacion, Cotizacion, QAfterSortBy> sortByEstDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'est', Sort.desc);
    });
  }

  QueryBuilder<Cotizacion, Cotizacion, QAfterSortBy> sortByFch() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fch', Sort.asc);
    });
  }

  QueryBuilder<Cotizacion, Cotizacion, QAfterSortBy> sortByFchDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fch', Sort.desc);
    });
  }

  QueryBuilder<Cotizacion, Cotizacion, QAfterSortBy> sortById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<Cotizacion, Cotizacion, QAfterSortBy> sortByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<Cotizacion, Cotizacion, QAfterSortBy> sortBySerDoc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'serDoc', Sort.asc);
    });
  }

  QueryBuilder<Cotizacion, Cotizacion, QAfterSortBy> sortBySerDocDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'serDoc', Sort.desc);
    });
  }

  QueryBuilder<Cotizacion, Cotizacion, QAfterSortBy> sortBySerFol() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'serFol', Sort.asc);
    });
  }

  QueryBuilder<Cotizacion, Cotizacion, QAfterSortBy> sortBySerFolDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'serFol', Sort.desc);
    });
  }
}

extension CotizacionQuerySortThenBy
    on QueryBuilder<Cotizacion, Cotizacion, QSortThenBy> {
  QueryBuilder<Cotizacion, Cotizacion, QAfterSortBy> thenByCltEnt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cltEnt', Sort.asc);
    });
  }

  QueryBuilder<Cotizacion, Cotizacion, QAfterSortBy> thenByCltEntDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cltEnt', Sort.desc);
    });
  }

  QueryBuilder<Cotizacion, Cotizacion, QAfterSortBy> thenByEst() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'est', Sort.asc);
    });
  }

  QueryBuilder<Cotizacion, Cotizacion, QAfterSortBy> thenByEstDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'est', Sort.desc);
    });
  }

  QueryBuilder<Cotizacion, Cotizacion, QAfterSortBy> thenByFch() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fch', Sort.asc);
    });
  }

  QueryBuilder<Cotizacion, Cotizacion, QAfterSortBy> thenByFchDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fch', Sort.desc);
    });
  }

  QueryBuilder<Cotizacion, Cotizacion, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<Cotizacion, Cotizacion, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<Cotizacion, Cotizacion, QAfterSortBy> thenByIdLocal() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'idLocal', Sort.asc);
    });
  }

  QueryBuilder<Cotizacion, Cotizacion, QAfterSortBy> thenByIdLocalDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'idLocal', Sort.desc);
    });
  }

  QueryBuilder<Cotizacion, Cotizacion, QAfterSortBy> thenBySerDoc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'serDoc', Sort.asc);
    });
  }

  QueryBuilder<Cotizacion, Cotizacion, QAfterSortBy> thenBySerDocDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'serDoc', Sort.desc);
    });
  }

  QueryBuilder<Cotizacion, Cotizacion, QAfterSortBy> thenBySerFol() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'serFol', Sort.asc);
    });
  }

  QueryBuilder<Cotizacion, Cotizacion, QAfterSortBy> thenBySerFolDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'serFol', Sort.desc);
    });
  }
}

extension CotizacionQueryWhereDistinct
    on QueryBuilder<Cotizacion, Cotizacion, QDistinct> {
  QueryBuilder<Cotizacion, Cotizacion, QDistinct> distinctByCltEnt(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'cltEnt', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Cotizacion, Cotizacion, QDistinct> distinctByEst(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'est', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Cotizacion, Cotizacion, QDistinct> distinctByFch() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'fch');
    });
  }

  QueryBuilder<Cotizacion, Cotizacion, QDistinct> distinctById() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'id');
    });
  }

  QueryBuilder<Cotizacion, Cotizacion, QDistinct> distinctBySerDoc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'serDoc', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Cotizacion, Cotizacion, QDistinct> distinctBySerFol(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'serFol', caseSensitive: caseSensitive);
    });
  }
}

extension CotizacionQueryProperty
    on QueryBuilder<Cotizacion, Cotizacion, QQueryProperty> {
  QueryBuilder<Cotizacion, int, QQueryOperations> idLocalProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'idLocal');
    });
  }

  QueryBuilder<Cotizacion, String, QQueryOperations> cltEntProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'cltEnt');
    });
  }

  QueryBuilder<Cotizacion, String, QQueryOperations> estProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'est');
    });
  }

  QueryBuilder<Cotizacion, DateTime, QQueryOperations> fchProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'fch');
    });
  }

  QueryBuilder<Cotizacion, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<Cotizacion, String, QQueryOperations> serDocProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'serDoc');
    });
  }

  QueryBuilder<Cotizacion, String, QQueryOperations> serFolProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'serFol');
    });
  }
}
