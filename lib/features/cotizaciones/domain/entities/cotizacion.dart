import 'package:isar/isar.dart';

part 'cotizacion.g.dart';

@collection
class Cotizacion {
  Id? idLocal;
  final int id;
  DateTime fch;
  String serFol;
  String serDoc;
  String cltEnt;
  String est;

  //TODO: AGREGAR VALORES FALTANTES DE MIS COTIZACIONES.
  Cotizacion({
    required this.id,
    required this.fch,
    required this.serFol,
    required this.serDoc,
    required this.cltEnt,
    required this.est,
  });
}
