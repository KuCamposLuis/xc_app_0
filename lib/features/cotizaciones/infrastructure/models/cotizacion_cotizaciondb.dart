class VtaPreGv {
  final int id;
  final DateTime fch;
  final String ser_Fol;
  final int ser_Doc;
  final int cltEnt;
  final String est;
  VtaPreGv({
    required this.id,
    required this.fch,
    required this.ser_Fol,
    required this.ser_Doc,
    required this.cltEnt,
    required this.est,
  });

  factory VtaPreGv.fromJson(Map<String, dynamic> json) => VtaPreGv(
        id: json["id"],
        fch: DateTime.parse(json["fch"]),
        ser_Fol: json["ser_fol"] ?? "",
        ser_Doc: json["ser_doc"] ?? 0,
        cltEnt: json["clt_ent"],
        est: json["est"] ?? "",
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "fch": fch.toIso8601String(),
        "ser_fol": ser_Fol,
        "ser_doc": ser_Doc,
        "clt_ent": cltEnt,
        "est": est
      };
}
