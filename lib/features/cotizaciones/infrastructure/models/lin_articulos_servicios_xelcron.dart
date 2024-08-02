import 'package:xc_app_0/features/cotizaciones/infrastructure/models/lin_articulos_servicios.dart';

class LpArticulosServ {
  final int count;
  final int totalCount;
  final List<VtaPreLinGv> vtaPreLinGv;

  LpArticulosServ({
    required this.count,
    required this.totalCount,
    required this.vtaPreLinGv,
  });

  factory LpArticulosServ.fromJson(Map<String, dynamic> json) =>
      LpArticulosServ(
        count: json["count"],
        totalCount: json["total_count"],
        vtaPreLinGv: List<VtaPreLinGv>.from(
            json["vta_pre_lin_gv"].map((x) => VtaPreLinGv.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "count": count,
        "total_count": totalCount,
        "vta_pre_lin_gv":
            List<dynamic>.from(vtaPreLinGv.map((x) => x.toJson())),
      };
}
