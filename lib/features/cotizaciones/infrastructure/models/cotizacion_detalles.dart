class CotizacionDetalles {
  final int id;
  // final String emp;
  // final String empDiv;
  // final DateTime fch;
  // final String hor;
  // final String ser;
  // final int fol;
  final String serFol;
  // final int cltEnt;
  final int serDoc;
  // final int mon;
  // final int ageVtaEnt;
  // final int monTc;
  // final String cndPag;
  // final int numLinTot;
  // final String est;
  // final String estAut;
  // final String obs;
  // final DateTime fchVig;
  // final int totBas;
  // final int totImptoF;
  // final int totImptoL;
  // final int totRetF;
  // final int totRetL;
  // final int totMe;
  // final int totMn;

  CotizacionDetalles({
    required this.id,
    // required this.emp,
    // required this.empDiv,
    // required this.fch,
    // required this.hor,
    // required this.ser,
    // required this.fol,
    required this.serFol,
    // required this.cltEnt,
    required this.serDoc,
    // required this.mon,
    // required this.ageVtaEnt,
    // required this.monTc,
    // required this.cndPag,
    // required this.numLinTot,
    // required this.est,
    // required this.estAut,
    // required this.obs,
    // required this.fchVig,
    // required this.totBas,
    // required this.totImptoF,
    // required this.totImptoL,
    // required this.totRetF,
    // required this.totRetL,
    // required this.totMe,
    // required this.totMn,
  });

  factory CotizacionDetalles.fromJson(Map<String, dynamic> json) =>
      CotizacionDetalles(
        id: json["id"] ?? 0,
        // emp: json["emp"] ?? "",
        // empDiv: json["emp_div"] ?? "",
        // fch: DateTime.parse(json["fch"]),
        // hor: json["hor"] ?? "",
        // ser: json["ser"] ?? "",
        // fol: json["fol"] ?? 0,
        serFol: json["ser_fol"] ?? "",
        // cltEnt: json["clt_ent"] ?? 0,
        serDoc: json["ser_doc"] ?? 0,
        // mon: json["mon"] ?? 0,
        // ageVtaEnt: json["age_vta_ent"] ?? 0,
        // monTc: json["mon_tc"] ?? 0,
        // cndPag: json["cnd_pag"] ?? "",
        // numLinTot: json["num_lin_tot"] ?? 0,
        // est: json["est"] ?? "",
        // estAut: json["est_aut"] ?? "",
        // obs: json["obs"] ?? "",
        // fchVig: DateTime.parse(json["fch_vig"]),
        // totBas: json["tot_bas"] ?? 0,
        // totImptoF: json["tot_impto_f"] ?? 0,
        // totImptoL: json["tot_impto_l"] ?? 0,
        // totRetF: json["tot_ret_f"] ?? 0,
        // totRetL: json["tot_ret_l"] ?? 0,
        // totMe: json["tot_me"] ?? 0,
        // totMn: json["tot_mn"] ?? 0,
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        // "emp": emp,
        // "emp_div": empDiv,
        // "fch": fch.toIso8601String(),
        // "hor": hor,
        // "ser": ser,
        // "fol": fol,
        "ser_fol": serFol,
        // "clt_ent": cltEnt,
        "ser_doc": serDoc,
        // "mon": mon,
        // "age_vta_ent": ageVtaEnt,
        // "mon_tc": monTc,
        // "cnd_pag": cndPag,
        // "num_lin_tot": numLinTot,
        // "est": est,
        // "est_aut": estAut,
        // "obs": obs,
        // "fch_vig": fchVig.toIso8601String(),
        // "tot_bas": totBas,
        // "tot_impto_f": totImptoF,
        // "tot_impto_l": totImptoL,
        // "tot_ret_f": totRetF,
        // "tot_ret_l": totRetL,
        // "tot_me": totMe,
        // "tot_mn": totMn,
      };
}
