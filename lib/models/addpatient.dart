class addpatient {
  String? patientname;
  String? patientid;

  addpatient(this.patientname, this.patientid);

  addpatient.fromjson(Map<String, dynamic> json) {
    patientid = json['Patientid'];
    patientname = json['patientname'];
  }
  // factory addpatient.fromjsoin(jisondata) {
  //   return addpatient(jisondata['patientname'], jisondata['patientid']);
  // }
}
