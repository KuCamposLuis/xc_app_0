import 'seriedoc_from_xelcron.dart';

class SerieDocumentoDbResponse {
  final int count;
  final int totalCount;
  final List<SerDocFromXelcron> serDocCfg;

  SerieDocumentoDbResponse({
    required this.count,
    required this.totalCount,
    required this.serDocCfg,
  });

  factory SerieDocumentoDbResponse.fromJson(Map<String, dynamic> json) =>
      SerieDocumentoDbResponse(
        count: json["count"],
        totalCount: json["total_count"],
        serDocCfg: List<SerDocFromXelcron>.from(
            json["ser_doc_cfg"].map((x) => SerDocFromXelcron.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "count": count,
        "total_count": totalCount,
        "ser_doc_cfg": List<dynamic>.from(serDocCfg.map((x) => x.toJson())),
      };
}
