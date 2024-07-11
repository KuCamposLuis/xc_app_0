import 'package:xc_app_0/features/catalogo/infrastructure/models/entidades/entidades_xelcron.dart';

class EntidadesResponse {
  final int count;
  final int totalCount;
  final List<EntidadesXelcron> entEn;

  EntidadesResponse({
    required this.count,
    required this.totalCount,
    required this.entEn,
  });

  factory EntidadesResponse.fromJson(Map<String, dynamic> json) =>
      EntidadesResponse(
        count: json["count"],
        totalCount: json["total_count"],
        entEn: List<EntidadesXelcron>.from(
            json["ent_en"].map((x) => EntidadesXelcron.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "count": count,
        "total_count": totalCount,
        "ent_en": List<dynamic>.from(entEn.map((x) => x.toJson())),
      };
}
