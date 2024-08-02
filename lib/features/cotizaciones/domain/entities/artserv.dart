import 'package:isar/isar.dart';

part 'artserv.g.dart';

@collection
class Artserv {
  Id? idLocal;
  final int id;
  int vtaPre;
  String art;
  double pre;
  double can;

  Artserv({
    required this.id,
    required this.vtaPre,
    required this.art,
    required this.pre,
    required this.can,
  });
}
