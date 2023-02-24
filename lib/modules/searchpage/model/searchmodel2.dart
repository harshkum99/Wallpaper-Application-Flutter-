// ignore_for_file: public_member_api_docs, sort_constructors_first
//import 'dart:convert';

class SearchModel2 {
  Result? urls;
  SearchModel2({
    this.urls,
  });

  factory SearchModel2.fromMap(Map<String, dynamic> jsonData) {
    return SearchModel2(urls: Result.fromMap(jsonData["urls"]));
  }
}

class Result {
  String raw;
  String full;
  String regular;
  String small;
  String thumb;
  Result({
    required this.raw,
    required this.full,
    required this.regular,
    required this.small,
    required this.thumb,
  });

  factory Result.fromMap(Map<String, dynamic> jsonData) {
    return Result(raw: jsonData["raw"], full: jsonData["full"], regular: jsonData["regular"], small: jsonData["small"], thumb: jsonData["thumb"]);
  }
}
