import 'package:xc_app_0/features/cotizaciones/infrastructure/models/cotizacion_cotizaciondb.dart';

class CotizacionResponse {
  final int count;
  final int totalCount;
  final List<VtaPreGv> vtaPreGv;

  CotizacionResponse({
    required this.count,
    required this.totalCount,
    required this.vtaPreGv,
  });

  factory CotizacionResponse.fromJson(Map<String, dynamic> json) =>
      CotizacionResponse(
        //!Mas adelante hacer la verificacion de los datos para que admita datos nulos o no nulos
        count: json["count"],
        totalCount: json["total_count"],
        vtaPreGv: List<VtaPreGv>.from(
            json["vta_pre_gv"].map((x) => VtaPreGv.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "count": count,
        "total_count": totalCount,
        "vta_pre_gv": List<dynamic>.from(vtaPreGv.map((x) => x.toJson())),
      };
}
