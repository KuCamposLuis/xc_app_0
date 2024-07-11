import 'package:xc_app_0/infrastructure/models/xelcrondb/Cotizaciones/cotizacion_cotizaciondb.dart';

class CotizacionDbResponse {
  final int count;
  final int totalCount;
  final List<VtaPreGvFromXelcron> vtaPreGv;

  CotizacionDbResponse({
    required this.count,
    required this.totalCount,
    required this.vtaPreGv,
  });

  factory CotizacionDbResponse.fromJson(Map<String, dynamic> json) =>
      CotizacionDbResponse(
        //!Mas adelante hacer la verificacion de los datos para que admita datos nulos o no nulos
        count: json["count"],
        totalCount: json["total_count"],
        vtaPreGv: List<VtaPreGvFromXelcron>.from(
            json["vta_pre_gv"].map((x) => VtaPreGvFromXelcron.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "count": count,
        "total_count": totalCount,
        "vta_pre_gv": List<dynamic>.from(vtaPreGv.map((x) => x.toJson())),
      };
}
