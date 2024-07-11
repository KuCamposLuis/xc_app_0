class VtaPreGv {
  final int id;
  final String
      ser_Fol; //! Esta variable es importante para La informacion de la cotizacion general
  final int
      ser_Doc; //! Esta variable es importante para La informacion de la cotizacion general //! Esta variable es importante para La informacion de la cotizacion general

  VtaPreGv({
    required this.id,
    required this.ser_Fol,
    required this.ser_Doc,
  });

  factory VtaPreGv.fromJson(Map<String, dynamic> json) => VtaPreGv(
        id: json["id"],
        ser_Fol: json["ser_fol"] ?? "",
        ser_Doc: json["ser_doc"] ?? 0,
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "ser_fol": ser_Fol,
        "ser_doc": ser_Doc,
      };
}
