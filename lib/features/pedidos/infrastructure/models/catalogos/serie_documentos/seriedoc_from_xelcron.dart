class SerDocFromXelcron {
  final int id;
  final String name;
  final String doc_mod_name;
  final int alt_usr;
  final int mod_usr;
  SerDocFromXelcron({
    required this.id,
    required this.name,
    required this.doc_mod_name,
    required this.alt_usr,
    required this.mod_usr,
  });

  factory SerDocFromXelcron.fromJson(Map<String, dynamic> json) =>
      SerDocFromXelcron(
        id: json["id"],
        name: json["name"] ?? "",
        doc_mod_name: json["doc_mod_name"] ?? "",
        alt_usr: json["alt_usr"] ?? 0,
        mod_usr: json["mod_usr"] ?? 0,
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "doc_mod_name": doc_mod_name,
        "alt_usr": alt_usr,
        "mod_usr": mod_usr,
      };
}
