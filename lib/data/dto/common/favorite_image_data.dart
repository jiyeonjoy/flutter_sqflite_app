// ignore_for_file: non_constant_identifier_names
class FavoriteImageData {
  String datetime;
  String display_sitename;
  String doc_url;
  String image_url;
  String thumbnail_url;
  bool isFavorite;

  FavoriteImageData({
    this.datetime = '',
    this.display_sitename = '',
    this.doc_url = '',
    this.image_url = '',
    this.thumbnail_url = '',
    this.isFavorite = false,
  });

  void changeFavorite() {
    isFavorite = !isFavorite;
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> map = {};
    map['datetime'] = datetime;
    map['display_sitename'] = display_sitename;
    map['doc_url'] = doc_url;
    map['image_url'] = image_url;
    map['thumbnail_url'] = thumbnail_url;
    map['isFavorite'] = isFavorite;

    return map;
  }

  static FavoriteImageData fromJson(Map<String, dynamic> json) {
    return FavoriteImageData(
      datetime: json['datetime'],
      display_sitename: json['display_sitename'],
      doc_url: json['doc_url'],
      image_url: json['image_url'],
      thumbnail_url: json['thumbnail_url'],
      isFavorite: json['isFavorite'],
    );
  }
}
