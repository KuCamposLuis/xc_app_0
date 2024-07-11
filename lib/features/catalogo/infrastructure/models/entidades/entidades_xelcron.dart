class EntidadesXelcron {
  final int id;
  final String name;
  final String emp;
  final String empDiv;
  final int cfgErp;

  EntidadesXelcron({
    required this.id,
    required this.name,
    required this.emp,
    required this.empDiv,
    required this.cfgErp,
  });

  factory EntidadesXelcron.fromJson(Map<String, dynamic> json) =>
      EntidadesXelcron(
        id: json["id"] ?? 0,
        name: json["name"] ?? "",
        emp: json["emp"] ?? "",
        empDiv: json["emp_div"] ?? "",
        cfgErp: json["cfg_erp"] ?? 0,
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "emp": emp,
        "emp_div": empDiv,
        "cfg_erp": cfgErp,
      };
}
