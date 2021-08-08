class Concept {
  final String title;
  final String keyword;
  final String poster;
  final bool like;

  Concept.fromMap(Map<String, dynamic> map)
  : title = map['title'],
    keyword = map['keyword'],
    poster = map['poster'],
    like = map['like'];

  @override
  String toString() => "Concept<$title:$keyword>";
}