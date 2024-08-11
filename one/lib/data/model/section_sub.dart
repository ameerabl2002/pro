class SectionSub {
  int? idMainSection;
  int? idSubSection;
  String? nameSubSection;
  String? nameImg;

  SectionSub(
      {this.idMainSection,
      this.idSubSection,
      this.nameSubSection,
      this.nameImg});

  SectionSub.fromJson(Map<String, dynamic> json) {
    idMainSection = json['id_main_section'];
    idSubSection = json['id_sub_section'];
    nameSubSection = json['name_sub_section'];
    nameImg = json['name_img'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id_main_section'] = this.idMainSection;
    data['id_sub_section'] = this.idSubSection;
    data['name_sub_section'] = this.nameSubSection;
    data['name_img'] = this.nameImg;
    return data;
  }
}
