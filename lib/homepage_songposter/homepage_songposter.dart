class HomepageSongposter {
  String? imageUrl;
  String? name;
  String? subname;

  HomepageSongposter({this.imageUrl, this.name, this.subname});

  factory HomepageSongposter.fromJson(Map<String, dynamic> json) {
    return HomepageSongposter(
      imageUrl: json['imageUrl'] as String?,
      name: json['name'] as String?,
      subname: json['subname'] as String?,
    );
  }

  Map<String, dynamic> toJson() => {
        'imageUrl': imageUrl,
        'name': name,
        'subname': subname,
      };
}
