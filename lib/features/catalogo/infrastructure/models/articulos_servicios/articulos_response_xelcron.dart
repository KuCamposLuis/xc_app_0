import 'articulos_xelcron.dart';

class ArticulosServiciosResponse {
  final int count;
  final int totalCount;
  final List<ArtMa> artMa;

  ArticulosServiciosResponse({
    required this.count,
    required this.totalCount,
    required this.artMa,
  });

  factory ArticulosServiciosResponse.fromJson(Map<String, dynamic> json) =>
      ArticulosServiciosResponse(
        count: json["count"],
        totalCount: json["total_count"],
        artMa: List<ArtMa>.from(json["art_ma"].map((x) => ArtMa.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "count": count,
        "total_count": totalCount,
        "art_ma": List<dynamic>.from(artMa.map((x) => x.toJson())),
      };
}
