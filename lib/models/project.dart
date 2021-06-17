class MyProject {
  String title;
  String description;
  String link;
  int id;

  MyProject({this.title, this.description, this.link, this.id});

  MyProject.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    description = json['description'];
    link = json['link'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    data['description'] = this.description;
    data['link'] = this.link;
    data['id'] = this.id;
    return data;
  }
}
