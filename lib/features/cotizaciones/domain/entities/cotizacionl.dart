import 'package:isar/isar.dart';

part 'cotizacionl.g.dart';

@collection
class Cotizacionl {
  Id? idLocal;
  final int id;
  String emp;
  String empDiv;
  DateTime fch;
  DateTime hor;
  String ser;
  int fol;
  String serFol;
  int cltEnt;
  int serDoc;
  int mon;
  int monTc;
  String est;

  Cotizacionl({
    required this.id,
    required this.emp,
    required this.empDiv,
    required this.fch,
    required this.hor,
    required this.ser,
    required this.fol,
    required this.serFol,
    required this.cltEnt,
    required this.serDoc,
    required this.mon,
    required this.monTc,
    required this.est,
  });
}

// {
//   "emp": "001 001",
//   "emp_div": "001 001 001",
//   "fch": "2024-07-22",
//   "hor": "12:20",
//   "ser": "VTA_PRE",
//   "fol": 50,
//   "ser_fol": "VTA_PRE-00050",
//   "clt_ent": 2,
//   "ser_doc": 20,
//   "mon": 1,
//   "mon_tc": 1,
//   "est": "1",
// }