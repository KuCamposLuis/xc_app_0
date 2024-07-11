import 'seriedoc_xelcron.dart';

class SeriedocumentoResponse {
  final int count;
  final int totalCount;
  final List<SerDocCfg> serDocCfg;

  SeriedocumentoResponse({
    required this.count,
    required this.totalCount,
    required this.serDocCfg,
  });

  factory SeriedocumentoResponse.fromJson(Map<String, dynamic> json) =>
      SeriedocumentoResponse(
        count: json["count"],
        totalCount: json["total_count"],
        serDocCfg: List<SerDocCfg>.from(
            json["ser_doc_cfg"].map((x) => SerDocCfg.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "count": count,
        "total_count": totalCount,
        "ser_doc_cfg": List<dynamic>.from(serDocCfg.map((x) => x.toJson())),
      };
}
