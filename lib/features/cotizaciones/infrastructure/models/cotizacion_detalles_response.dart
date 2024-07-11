import 'package:xc_app_0/features/cotizaciones/infrastructure/models/cotizacion_detalles.dart';

class CotizacionDetallesResponse {
  final int count;
  final int totalCount;
  final List<CotizacionDetalles> vtaPreGv;

  CotizacionDetallesResponse({
    required this.count,
    required this.totalCount,
    required this.vtaPreGv,
  });

  factory CotizacionDetallesResponse.fromJson(Map<String, dynamic> json) =>
      CotizacionDetallesResponse(
        count: json["count"],
        totalCount: json["total_count"],
        vtaPreGv: List<CotizacionDetalles>.from(
            json["vta_pre_gv"].map((x) => CotizacionDetalles.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "count": count,
        "total_count": totalCount,
        "vta_pre_gv": List<dynamic>.from(vtaPreGv.map((x) => x.toJson())),
      };
}
