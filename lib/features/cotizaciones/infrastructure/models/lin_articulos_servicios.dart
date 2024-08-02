class VtaPreLinGv {
  final int id;
  final int vtaPre;
  final int art;
  final double pre;
  final double can;

  VtaPreLinGv({
    required this.id,
    required this.vtaPre,
    required this.art,
    required this.pre,
    required this.can,
  });

  factory VtaPreLinGv.fromJson(Map<String, dynamic> json) => VtaPreLinGv(
        id: json["id"] ?? 0,
        vtaPre: json["vta_pre"] ?? 0,
        art: json["art"] ?? 0,
        pre: (json["pre"] ?? 0.0).toDouble(),
        can: (json["can"] ?? 0.0).toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "vta_pre": vtaPre,
        "art": art,
        "pre": pre,
        "can": can,
      };
}
