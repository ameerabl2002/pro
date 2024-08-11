class SectionMain {
  int? idMainSection;
  String? nameMainSection;
  String? nameImg;

  SectionMain({this.idMainSection, this.nameMainSection, this.nameImg});

  SectionMain.fromJson(Map<String, dynamic> json) {
    idMainSection = json['id_main_section'];
    nameMainSection = json['name_main_section'];
    nameImg = json['name_img'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id_main_section'] = this.idMainSection;
    data['name_main_section'] = this.nameMainSection;
    data['name_img'] = this.nameImg;
    return data;
  }
}
