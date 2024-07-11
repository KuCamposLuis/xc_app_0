class SerDocCfg {
  final int id;
  final String name;
  final String doc_mod_name;

  SerDocCfg({
    required this.id,
    required this.doc_mod_name,
    required this.name,
  });

  factory SerDocCfg.fromJson(Map<String, dynamic> json) => SerDocCfg(
        id: json["id"],
        name: json["name"] ?? "",
        doc_mod_name: json["doc_mod_name"] ?? "",
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "doc_mod_name": doc_mod_name,
      };
}
