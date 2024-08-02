// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cotizacionl.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetCotizacionlCollection on Isar {
  IsarCollection<Cotizacionl> get cotizacionls => this.collection();
}

const CotizacionlSchema = CollectionSchema(
  name: r'Cotizacionl',
  id: 6602551447178838171,
  properties: {
    r'cltEnt': PropertySchema(
      id: 0,
      name: r'cltEnt',
      type: IsarType.long,
    ),
    r'emp': PropertySchema(
      id: 1,
      name: r'emp',
      type: IsarType.string,
    ),
    r'empDiv': PropertySchema(
      id: 2,
      name: r'empDiv',
      type: IsarType.string,
    ),
    r'est': PropertySchema(
      id: 3,
      name: r'est',
      type: IsarType.string,
    ),
    r'fch': PropertySchema(
      id: 4,
      name: r'fch',
      type: IsarType.dateTime,
    ),
    r'fol': PropertySchema(
      id: 5,
      name: r'fol',
      type: IsarType.long,
    ),
    r'hor': PropertySchema(
      id: 6,
      name: r'hor',
      type: IsarType.dateTime,
    ),
    r'id': PropertySchema(
      id: 7,
      name: r'id',
      type: IsarType.long,
    ),
    r'mon': PropertySchema(
      id: 8,
      name: r'mon',
      type: IsarType.long,
    ),
    r'monTc': PropertySchema(
      id: 9,
      name: r'monTc',
      type: IsarType.long,
    ),
    r'ser': PropertySchema(
      id: 10,
      name: r'ser',
      type: IsarType.string,
    ),
    r'serDoc': PropertySchema(
      id: 11,
      name: r'serDoc',
      type: IsarType.long,
    ),
    r'serFol': PropertySchema(
      id: 12,
      name: r'serFol',
      type: IsarType.string,
    )
  },
  estimateSize: _cotizacionlEstimateSize,
  serialize: _cotizacionlSerialize,
  deserialize: _cotizacionlDeserialize,
  deserializeProp: _cotizacionlDeserializeProp,
  idName: r'idLocal',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _cotizacionlGetId,
  getLinks: _cotizacionlGetLinks,
  attach: _cotizacionlAttach,
  version: '3.1.0+1',
);

int _cotizacionlEstimateSize(
  Cotizacionl object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.emp.length * 3;
  bytesCount += 3 + object.empDiv.length * 3;
  bytesCount += 3 + object.est.length * 3;
  bytesCount += 3 + object.ser.length * 3;
  bytesCount += 3 + object.serFol.length * 3;
  return bytesCount;
}

void _cotizacionlSerialize(
  Cotizacionl object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.cltEnt);
  writer.writeString(offsets[1], object.emp);
  writer.writeString(offsets[2], object.empDiv);
  writer.writeString(offsets[3], object.est);
  writer.writeDateTime(offsets[4], object.fch);
  writer.writeLong(offsets[5], object.fol);
  writer.writeDateTime(offsets[6], object.hor);
  writer.writeLong(offsets[7], object.id);
  writer.writeLong(offsets[8], object.mon);
  writer.writeLong(offsets[9], object.monTc);
  writer.writeString(offsets[10], object.ser);
  writer.writeLong(offsets[11], object.serDoc);
  writer.writeString(offsets[12], object.serFol);
}

Cotizacionl _cotizacionlDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Cotizacionl(
    cltEnt: reader.readLong(offsets[0]),
    emp: reader.readString(offsets[1]),
    empDiv: reader.readString(offsets[2]),
    est: reader.readString(offsets[3]),
    fch: reader.readDateTime(offsets[4]),
    fol: reader.readLong(offsets[5]),
    hor: reader.readDateTime(offsets[6]),
    id: reader.readLong(offsets[7]),
    mon: reader.readLong(offsets[8]),
    monTc: reader.readLong(offsets[9]),
    ser: reader.readString(offsets[10]),
    serDoc: reader.readLong(offsets[11]),
    serFol: reader.readString(offsets[12]),
  );
  object.idLocal = id;
  return object;
}

P _cotizacionlDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readLong(offset)) as P;
    case 1:
      return (reader.readString(offset)) as P;
    case 2:
      return (reader.readString(offset)) as P;
    case 3:
      return (reader.readString(offset)) as P;
    case 4:
      return (reader.readDateTime(offset)) as P;
    case 5:
      return (reader.readLong(offset)) as P;
    case 6:
      return (reader.readDateTime(offset)) as P;
    case 7:
      return (reader.readLong(offset)) as P;
    case 8:
      return (reader.readLong(offset)) as P;
    case 9:
      return (reader.readLong(offset)) as P;
    case 10:
      return (reader.readString(offset)) as P;
    case 11:
      return (reader.readLong(offset)) as P;
    case 12:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _cotizacionlGetId(Cotizacionl object) {
  return object.idLocal ?? Isar.autoIncrement;
}

List<IsarLinkBase<dynamic>> _cotizacionlGetLinks(Cotizacionl object) {
  return [];
}

void _cotizacionlAttach(
    IsarCollection<dynamic> col, Id id, Cotizacionl object) {
  object.idLocal = id;
}

extension CotizacionlQueryWhereSort
    on QueryBuilder<Cotizacionl, Cotizacionl, QWhere> {
  QueryBuilder<Cotizacionl, Cotizacionl, QAfterWhere> anyIdLocal() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension CotizacionlQueryWhere
    on QueryBuilder<Cotizacionl, Cotizacionl, QWhereClause> {
  QueryBuilder<Cotizacionl, Cotizacionl, QAfterWhereClause> idLocalEqualTo(
      Id idLocal) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: idLocal,
        upper: idLocal,
      ));
    });
  }

  QueryBuilder<Cotizacionl, Cotizacionl, QAfterWhereClause> idLocalNotEqualTo(
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

  QueryBuilder<Cotizacionl, Cotizacionl, QAfterWhereClause> idLocalGreaterThan(
      Id idLocal,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: idLocal, includeLower: include),
      );
    });
  }

  QueryBuilder<Cotizacionl, Cotizacionl, QAfterWhereClause> idLocalLessThan(
      Id idLocal,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: idLocal, includeUpper: include),
      );
    });
  }

  QueryBuilder<Cotizacionl, Cotizacionl, QAfterWhereClause> idLocalBetween(
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

extension CotizacionlQueryFilter
    on QueryBuilder<Cotizacionl, Cotizacionl, QFilterCondition> {
  QueryBuilder<Cotizacionl, Cotizacionl, QAfterFilterCondition> cltEntEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'cltEnt',
        value: value,
      ));
    });
  }

  QueryBuilder<Cotizacionl, Cotizacionl, QAfterFilterCondition>
      cltEntGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'cltEnt',
        value: value,
      ));
    });
  }

  QueryBuilder<Cotizacionl, Cotizacionl, QAfterFilterCondition> cltEntLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'cltEnt',
        value: value,
      ));
    });
  }

  QueryBuilder<Cotizacionl, Cotizacionl, QAfterFilterCondition> cltEntBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'cltEnt',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Cotizacionl, Cotizacionl, QAfterFilterCondition> empEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'emp',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Cotizacionl, Cotizacionl, QAfterFilterCondition> empGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'emp',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Cotizacionl, Cotizacionl, QAfterFilterCondition> empLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'emp',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Cotizacionl, Cotizacionl, QAfterFilterCondition> empBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'emp',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Cotizacionl, Cotizacionl, QAfterFilterCondition> empStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'emp',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Cotizacionl, Cotizacionl, QAfterFilterCondition> empEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'emp',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Cotizacionl, Cotizacionl, QAfterFilterCondition> empContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'emp',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Cotizacionl, Cotizacionl, QAfterFilterCondition> empMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'emp',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Cotizacionl, Cotizacionl, QAfterFilterCondition> empIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'emp',
        value: '',
      ));
    });
  }

  QueryBuilder<Cotizacionl, Cotizacionl, QAfterFilterCondition>
      empIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'emp',
        value: '',
      ));
    });
  }

  QueryBuilder<Cotizacionl, Cotizacionl, QAfterFilterCondition> empDivEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'empDiv',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Cotizacionl, Cotizacionl, QAfterFilterCondition>
      empDivGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'empDiv',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Cotizacionl, Cotizacionl, QAfterFilterCondition> empDivLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'empDiv',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Cotizacionl, Cotizacionl, QAfterFilterCondition> empDivBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'empDiv',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Cotizacionl, Cotizacionl, QAfterFilterCondition>
      empDivStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'empDiv',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Cotizacionl, Cotizacionl, QAfterFilterCondition> empDivEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'empDiv',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Cotizacionl, Cotizacionl, QAfterFilterCondition> empDivContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'empDiv',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Cotizacionl, Cotizacionl, QAfterFilterCondition> empDivMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'empDiv',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Cotizacionl, Cotizacionl, QAfterFilterCondition>
      empDivIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'empDiv',
        value: '',
      ));
    });
  }

  QueryBuilder<Cotizacionl, Cotizacionl, QAfterFilterCondition>
      empDivIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'empDiv',
        value: '',
      ));
    });
  }

  QueryBuilder<Cotizacionl, Cotizacionl, QAfterFilterCondition> estEqualTo(
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

  QueryBuilder<Cotizacionl, Cotizacionl, QAfterFilterCondition> estGreaterThan(
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

  QueryBuilder<Cotizacionl, Cotizacionl, QAfterFilterCondition> estLessThan(
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

  QueryBuilder<Cotizacionl, Cotizacionl, QAfterFilterCondition> estBetween(
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

  QueryBuilder<Cotizacionl, Cotizacionl, QAfterFilterCondition> estStartsWith(
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

  QueryBuilder<Cotizacionl, Cotizacionl, QAfterFilterCondition> estEndsWith(
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

  QueryBuilder<Cotizacionl, Cotizacionl, QAfterFilterCondition> estContains(
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

  QueryBuilder<Cotizacionl, Cotizacionl, QAfterFilterCondition> estMatches(
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

  QueryBuilder<Cotizacionl, Cotizacionl, QAfterFilterCondition> estIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'est',
        value: '',
      ));
    });
  }

  QueryBuilder<Cotizacionl, Cotizacionl, QAfterFilterCondition>
      estIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'est',
        value: '',
      ));
    });
  }

  QueryBuilder<Cotizacionl, Cotizacionl, QAfterFilterCondition> fchEqualTo(
      DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fch',
        value: value,
      ));
    });
  }

  QueryBuilder<Cotizacionl, Cotizacionl, QAfterFilterCondition> fchGreaterThan(
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

  QueryBuilder<Cotizacionl, Cotizacionl, QAfterFilterCondition> fchLessThan(
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

  QueryBuilder<Cotizacionl, Cotizacionl, QAfterFilterCondition> fchBetween(
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

  QueryBuilder<Cotizacionl, Cotizacionl, QAfterFilterCondition> folEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fol',
        value: value,
      ));
    });
  }

  QueryBuilder<Cotizacionl, Cotizacionl, QAfterFilterCondition> folGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'fol',
        value: value,
      ));
    });
  }

  QueryBuilder<Cotizacionl, Cotizacionl, QAfterFilterCondition> folLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'fol',
        value: value,
      ));
    });
  }

  QueryBuilder<Cotizacionl, Cotizacionl, QAfterFilterCondition> folBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'fol',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Cotizacionl, Cotizacionl, QAfterFilterCondition> horEqualTo(
      DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'hor',
        value: value,
      ));
    });
  }

  QueryBuilder<Cotizacionl, Cotizacionl, QAfterFilterCondition> horGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'hor',
        value: value,
      ));
    });
  }

  QueryBuilder<Cotizacionl, Cotizacionl, QAfterFilterCondition> horLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'hor',
        value: value,
      ));
    });
  }

  QueryBuilder<Cotizacionl, Cotizacionl, QAfterFilterCondition> horBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'hor',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Cotizacionl, Cotizacionl, QAfterFilterCondition> idEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Cotizacionl, Cotizacionl, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<Cotizacionl, Cotizacionl, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<Cotizacionl, Cotizacionl, QAfterFilterCondition> idBetween(
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

  QueryBuilder<Cotizacionl, Cotizacionl, QAfterFilterCondition>
      idLocalIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'idLocal',
      ));
    });
  }

  QueryBuilder<Cotizacionl, Cotizacionl, QAfterFilterCondition>
      idLocalIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'idLocal',
      ));
    });
  }

  QueryBuilder<Cotizacionl, Cotizacionl, QAfterFilterCondition> idLocalEqualTo(
      Id? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'idLocal',
        value: value,
      ));
    });
  }

  QueryBuilder<Cotizacionl, Cotizacionl, QAfterFilterCondition>
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

  QueryBuilder<Cotizacionl, Cotizacionl, QAfterFilterCondition> idLocalLessThan(
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

  QueryBuilder<Cotizacionl, Cotizacionl, QAfterFilterCondition> idLocalBetween(
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

  QueryBuilder<Cotizacionl, Cotizacionl, QAfterFilterCondition> monEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'mon',
        value: value,
      ));
    });
  }

  QueryBuilder<Cotizacionl, Cotizacionl, QAfterFilterCondition> monGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'mon',
        value: value,
      ));
    });
  }

  QueryBuilder<Cotizacionl, Cotizacionl, QAfterFilterCondition> monLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'mon',
        value: value,
      ));
    });
  }

  QueryBuilder<Cotizacionl, Cotizacionl, QAfterFilterCondition> monBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'mon',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Cotizacionl, Cotizacionl, QAfterFilterCondition> monTcEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'monTc',
        value: value,
      ));
    });
  }

  QueryBuilder<Cotizacionl, Cotizacionl, QAfterFilterCondition>
      monTcGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'monTc',
        value: value,
      ));
    });
  }

  QueryBuilder<Cotizacionl, Cotizacionl, QAfterFilterCondition> monTcLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'monTc',
        value: value,
      ));
    });
  }

  QueryBuilder<Cotizacionl, Cotizacionl, QAfterFilterCondition> monTcBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'monTc',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Cotizacionl, Cotizacionl, QAfterFilterCondition> serEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'ser',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Cotizacionl, Cotizacionl, QAfterFilterCondition> serGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'ser',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Cotizacionl, Cotizacionl, QAfterFilterCondition> serLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'ser',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Cotizacionl, Cotizacionl, QAfterFilterCondition> serBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'ser',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Cotizacionl, Cotizacionl, QAfterFilterCondition> serStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'ser',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Cotizacionl, Cotizacionl, QAfterFilterCondition> serEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'ser',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Cotizacionl, Cotizacionl, QAfterFilterCondition> serContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'ser',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Cotizacionl, Cotizacionl, QAfterFilterCondition> serMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'ser',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Cotizacionl, Cotizacionl, QAfterFilterCondition> serIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'ser',
        value: '',
      ));
    });
  }

  QueryBuilder<Cotizacionl, Cotizacionl, QAfterFilterCondition>
      serIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'ser',
        value: '',
      ));
    });
  }

  QueryBuilder<Cotizacionl, Cotizacionl, QAfterFilterCondition> serDocEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'serDoc',
        value: value,
      ));
    });
  }

  QueryBuilder<Cotizacionl, Cotizacionl, QAfterFilterCondition>
      serDocGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'serDoc',
        value: value,
      ));
    });
  }

  QueryBuilder<Cotizacionl, Cotizacionl, QAfterFilterCondition> serDocLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'serDoc',
        value: value,
      ));
    });
  }

  QueryBuilder<Cotizacionl, Cotizacionl, QAfterFilterCondition> serDocBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'serDoc',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Cotizacionl, Cotizacionl, QAfterFilterCondition> serFolEqualTo(
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

  QueryBuilder<Cotizacionl, Cotizacionl, QAfterFilterCondition>
      serFolGreaterThan(
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

  QueryBuilder<Cotizacionl, Cotizacionl, QAfterFilterCondition> serFolLessThan(
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

  QueryBuilder<Cotizacionl, Cotizacionl, QAfterFilterCondition> serFolBetween(
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

  QueryBuilder<Cotizacionl, Cotizacionl, QAfterFilterCondition>
      serFolStartsWith(
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

  QueryBuilder<Cotizacionl, Cotizacionl, QAfterFilterCondition> serFolEndsWith(
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

  QueryBuilder<Cotizacionl, Cotizacionl, QAfterFilterCondition> serFolContains(
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

  QueryBuilder<Cotizacionl, Cotizacionl, QAfterFilterCondition> serFolMatches(
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

  QueryBuilder<Cotizacionl, Cotizacionl, QAfterFilterCondition>
      serFolIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'serFol',
        value: '',
      ));
    });
  }

  QueryBuilder<Cotizacionl, Cotizacionl, QAfterFilterCondition>
      serFolIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'serFol',
        value: '',
      ));
    });
  }
}

extension CotizacionlQueryObject
    on QueryBuilder<Cotizacionl, Cotizacionl, QFilterCondition> {}

extension CotizacionlQueryLinks
    on QueryBuilder<Cotizacionl, Cotizacionl, QFilterCondition> {}

extension CotizacionlQuerySortBy
    on QueryBuilder<Cotizacionl, Cotizacionl, QSortBy> {
  QueryBuilder<Cotizacionl, Cotizacionl, QAfterSortBy> sortByCltEnt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cltEnt', Sort.asc);
    });
  }

  QueryBuilder<Cotizacionl, Cotizacionl, QAfterSortBy> sortByCltEntDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cltEnt', Sort.desc);
    });
  }

  QueryBuilder<Cotizacionl, Cotizacionl, QAfterSortBy> sortByEmp() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'emp', Sort.asc);
    });
  }

  QueryBuilder<Cotizacionl, Cotizacionl, QAfterSortBy> sortByEmpDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'emp', Sort.desc);
    });
  }

  QueryBuilder<Cotizacionl, Cotizacionl, QAfterSortBy> sortByEmpDiv() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'empDiv', Sort.asc);
    });
  }

  QueryBuilder<Cotizacionl, Cotizacionl, QAfterSortBy> sortByEmpDivDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'empDiv', Sort.desc);
    });
  }

  QueryBuilder<Cotizacionl, Cotizacionl, QAfterSortBy> sortByEst() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'est', Sort.asc);
    });
  }

  QueryBuilder<Cotizacionl, Cotizacionl, QAfterSortBy> sortByEstDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'est', Sort.desc);
    });
  }

  QueryBuilder<Cotizacionl, Cotizacionl, QAfterSortBy> sortByFch() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fch', Sort.asc);
    });
  }

  QueryBuilder<Cotizacionl, Cotizacionl, QAfterSortBy> sortByFchDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fch', Sort.desc);
    });
  }

  QueryBuilder<Cotizacionl, Cotizacionl, QAfterSortBy> sortByFol() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fol', Sort.asc);
    });
  }

  QueryBuilder<Cotizacionl, Cotizacionl, QAfterSortBy> sortByFolDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fol', Sort.desc);
    });
  }

  QueryBuilder<Cotizacionl, Cotizacionl, QAfterSortBy> sortByHor() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hor', Sort.asc);
    });
  }

  QueryBuilder<Cotizacionl, Cotizacionl, QAfterSortBy> sortByHorDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hor', Sort.desc);
    });
  }

  QueryBuilder<Cotizacionl, Cotizacionl, QAfterSortBy> sortById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<Cotizacionl, Cotizacionl, QAfterSortBy> sortByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<Cotizacionl, Cotizacionl, QAfterSortBy> sortByMon() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mon', Sort.asc);
    });
  }

  QueryBuilder<Cotizacionl, Cotizacionl, QAfterSortBy> sortByMonDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mon', Sort.desc);
    });
  }

  QueryBuilder<Cotizacionl, Cotizacionl, QAfterSortBy> sortByMonTc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'monTc', Sort.asc);
    });
  }

  QueryBuilder<Cotizacionl, Cotizacionl, QAfterSortBy> sortByMonTcDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'monTc', Sort.desc);
    });
  }

  QueryBuilder<Cotizacionl, Cotizacionl, QAfterSortBy> sortBySer() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ser', Sort.asc);
    });
  }

  QueryBuilder<Cotizacionl, Cotizacionl, QAfterSortBy> sortBySerDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ser', Sort.desc);
    });
  }

  QueryBuilder<Cotizacionl, Cotizacionl, QAfterSortBy> sortBySerDoc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'serDoc', Sort.asc);
    });
  }

  QueryBuilder<Cotizacionl, Cotizacionl, QAfterSortBy> sortBySerDocDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'serDoc', Sort.desc);
    });
  }

  QueryBuilder<Cotizacionl, Cotizacionl, QAfterSortBy> sortBySerFol() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'serFol', Sort.asc);
    });
  }

  QueryBuilder<Cotizacionl, Cotizacionl, QAfterSortBy> sortBySerFolDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'serFol', Sort.desc);
    });
  }
}

extension CotizacionlQuerySortThenBy
    on QueryBuilder<Cotizacionl, Cotizacionl, QSortThenBy> {
  QueryBuilder<Cotizacionl, Cotizacionl, QAfterSortBy> thenByCltEnt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cltEnt', Sort.asc);
    });
  }

  QueryBuilder<Cotizacionl, Cotizacionl, QAfterSortBy> thenByCltEntDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cltEnt', Sort.desc);
    });
  }

  QueryBuilder<Cotizacionl, Cotizacionl, QAfterSortBy> thenByEmp() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'emp', Sort.asc);
    });
  }

  QueryBuilder<Cotizacionl, Cotizacionl, QAfterSortBy> thenByEmpDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'emp', Sort.desc);
    });
  }

  QueryBuilder<Cotizacionl, Cotizacionl, QAfterSortBy> thenByEmpDiv() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'empDiv', Sort.asc);
    });
  }

  QueryBuilder<Cotizacionl, Cotizacionl, QAfterSortBy> thenByEmpDivDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'empDiv', Sort.desc);
    });
  }

  QueryBuilder<Cotizacionl, Cotizacionl, QAfterSortBy> thenByEst() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'est', Sort.asc);
    });
  }

  QueryBuilder<Cotizacionl, Cotizacionl, QAfterSortBy> thenByEstDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'est', Sort.desc);
    });
  }

  QueryBuilder<Cotizacionl, Cotizacionl, QAfterSortBy> thenByFch() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fch', Sort.asc);
    });
  }

  QueryBuilder<Cotizacionl, Cotizacionl, QAfterSortBy> thenByFchDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fch', Sort.desc);
    });
  }

  QueryBuilder<Cotizacionl, Cotizacionl, QAfterSortBy> thenByFol() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fol', Sort.asc);
    });
  }

  QueryBuilder<Cotizacionl, Cotizacionl, QAfterSortBy> thenByFolDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fol', Sort.desc);
    });
  }

  QueryBuilder<Cotizacionl, Cotizacionl, QAfterSortBy> thenByHor() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hor', Sort.asc);
    });
  }

  QueryBuilder<Cotizacionl, Cotizacionl, QAfterSortBy> thenByHorDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hor', Sort.desc);
    });
  }

  QueryBuilder<Cotizacionl, Cotizacionl, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<Cotizacionl, Cotizacionl, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<Cotizacionl, Cotizacionl, QAfterSortBy> thenByIdLocal() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'idLocal', Sort.asc);
    });
  }

  QueryBuilder<Cotizacionl, Cotizacionl, QAfterSortBy> thenByIdLocalDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'idLocal', Sort.desc);
    });
  }

  QueryBuilder<Cotizacionl, Cotizacionl, QAfterSortBy> thenByMon() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mon', Sort.asc);
    });
  }

  QueryBuilder<Cotizacionl, Cotizacionl, QAfterSortBy> thenByMonDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mon', Sort.desc);
    });
  }

  QueryBuilder<Cotizacionl, Cotizacionl, QAfterSortBy> thenByMonTc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'monTc', Sort.asc);
    });
  }

  QueryBuilder<Cotizacionl, Cotizacionl, QAfterSortBy> thenByMonTcDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'monTc', Sort.desc);
    });
  }

  QueryBuilder<Cotizacionl, Cotizacionl, QAfterSortBy> thenBySer() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ser', Sort.asc);
    });
  }

  QueryBuilder<Cotizacionl, Cotizacionl, QAfterSortBy> thenBySerDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ser', Sort.desc);
    });
  }

  QueryBuilder<Cotizacionl, Cotizacionl, QAfterSortBy> thenBySerDoc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'serDoc', Sort.asc);
    });
  }

  QueryBuilder<Cotizacionl, Cotizacionl, QAfterSortBy> thenBySerDocDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'serDoc', Sort.desc);
    });
  }

  QueryBuilder<Cotizacionl, Cotizacionl, QAfterSortBy> thenBySerFol() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'serFol', Sort.asc);
    });
  }

  QueryBuilder<Cotizacionl, Cotizacionl, QAfterSortBy> thenBySerFolDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'serFol', Sort.desc);
    });
  }
}

extension CotizacionlQueryWhereDistinct
    on QueryBuilder<Cotizacionl, Cotizacionl, QDistinct> {
  QueryBuilder<Cotizacionl, Cotizacionl, QDistinct> distinctByCltEnt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'cltEnt');
    });
  }

  QueryBuilder<Cotizacionl, Cotizacionl, QDistinct> distinctByEmp(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'emp', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Cotizacionl, Cotizacionl, QDistinct> distinctByEmpDiv(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'empDiv', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Cotizacionl, Cotizacionl, QDistinct> distinctByEst(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'est', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Cotizacionl, Cotizacionl, QDistinct> distinctByFch() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'fch');
    });
  }

  QueryBuilder<Cotizacionl, Cotizacionl, QDistinct> distinctByFol() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'fol');
    });
  }

  QueryBuilder<Cotizacionl, Cotizacionl, QDistinct> distinctByHor() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'hor');
    });
  }

  QueryBuilder<Cotizacionl, Cotizacionl, QDistinct> distinctById() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'id');
    });
  }

  QueryBuilder<Cotizacionl, Cotizacionl, QDistinct> distinctByMon() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'mon');
    });
  }

  QueryBuilder<Cotizacionl, Cotizacionl, QDistinct> distinctByMonTc() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'monTc');
    });
  }

  QueryBuilder<Cotizacionl, Cotizacionl, QDistinct> distinctBySer(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'ser', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Cotizacionl, Cotizacionl, QDistinct> distinctBySerDoc() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'serDoc');
    });
  }

  QueryBuilder<Cotizacionl, Cotizacionl, QDistinct> distinctBySerFol(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'serFol', caseSensitive: caseSensitive);
    });
  }
}

extension CotizacionlQueryProperty
    on QueryBuilder<Cotizacionl, Cotizacionl, QQueryProperty> {
  QueryBuilder<Cotizacionl, int, QQueryOperations> idLocalProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'idLocal');
    });
  }

  QueryBuilder<Cotizacionl, int, QQueryOperations> cltEntProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'cltEnt');
    });
  }

  QueryBuilder<Cotizacionl, String, QQueryOperations> empProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'emp');
    });
  }

  QueryBuilder<Cotizacionl, String, QQueryOperations> empDivProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'empDiv');
    });
  }

  QueryBuilder<Cotizacionl, String, QQueryOperations> estProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'est');
    });
  }

  QueryBuilder<Cotizacionl, DateTime, QQueryOperations> fchProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'fch');
    });
  }

  QueryBuilder<Cotizacionl, int, QQueryOperations> folProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'fol');
    });
  }

  QueryBuilder<Cotizacionl, DateTime, QQueryOperations> horProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'hor');
    });
  }

  QueryBuilder<Cotizacionl, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<Cotizacionl, int, QQueryOperations> monProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'mon');
    });
  }

  QueryBuilder<Cotizacionl, int, QQueryOperations> monTcProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'monTc');
    });
  }

  QueryBuilder<Cotizacionl, String, QQueryOperations> serProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'ser');
    });
  }

  QueryBuilder<Cotizacionl, int, QQueryOperations> serDocProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'serDoc');
    });
  }

  QueryBuilder<Cotizacionl, String, QQueryOperations> serFolProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'serFol');
    });
  }
}
