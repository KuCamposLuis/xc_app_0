class ArtMa {
  final int id;
  final String name;
  final String dsc;
  final int uniMed;
  final int altUsr;

  ArtMa({
    required this.id,
    required this.name,
    required this.dsc,
    required this.uniMed,
    required this.altUsr,
  });

  factory ArtMa.fromJson(Map<String, dynamic> json) => ArtMa(
        id: json["id"],
        name: json["name"] ?? "",
        dsc: json["dsc"] ?? "",
        uniMed: json["uni_med"] ?? 0,
        altUsr: json["alt_usr"] ?? 0,
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "dsc": dsc,
        "uni_med": uniMed,
        "alt_usr": altUsr,
      };
}
