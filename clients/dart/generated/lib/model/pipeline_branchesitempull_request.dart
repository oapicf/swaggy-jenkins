//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PipelineBranchesitempullRequest {
  /// Returns a new [PipelineBranchesitempullRequest] instance.
  PipelineBranchesitempullRequest({
    this.links,
    this.author,
    this.id,
    this.title,
    this.url,
    this.class_,
  });

  PipelineBranchesitempullRequestlinks links;

  String author;

  String id;

  String title;

  String url;

  String class_;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PipelineBranchesitempullRequest &&
     other.links == links &&
     other.author == author &&
     other.id == id &&
     other.title == title &&
     other.url == url &&
     other.class_ == class_;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (links == null ? 0 : links.hashCode) +
    (author == null ? 0 : author.hashCode) +
    (id == null ? 0 : id.hashCode) +
    (title == null ? 0 : title.hashCode) +
    (url == null ? 0 : url.hashCode) +
    (class_ == null ? 0 : class_.hashCode);

  @override
  String toString() => 'PipelineBranchesitempullRequest[links=$links, author=$author, id=$id, title=$title, url=$url, class_=$class_]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (links != null) {
      json[r'_links'] = links;
    }
    if (author != null) {
      json[r'author'] = author;
    }
    if (id != null) {
      json[r'id'] = id;
    }
    if (title != null) {
      json[r'title'] = title;
    }
    if (url != null) {
      json[r'url'] = url;
    }
    if (class_ != null) {
      json[r'_class'] = class_;
    }
    return json;
  }

  /// Returns a new [PipelineBranchesitempullRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PipelineBranchesitempullRequest fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return PipelineBranchesitempullRequest(
        links: PipelineBranchesitempullRequestlinks.fromJson(json[r'_links']),
        author: mapValueOfType<String>(json, r'author'),
        id: mapValueOfType<String>(json, r'id'),
        title: mapValueOfType<String>(json, r'title'),
        url: mapValueOfType<String>(json, r'url'),
        class_: mapValueOfType<String>(json, r'_class'),
      );
    }
    return null;
  }

  static List<PipelineBranchesitempullRequest> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(PipelineBranchesitempullRequest.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <PipelineBranchesitempullRequest>[];

  static Map<String, PipelineBranchesitempullRequest> mapFromJson(dynamic json) {
    final map = <String, PipelineBranchesitempullRequest>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = PipelineBranchesitempullRequest.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of PipelineBranchesitempullRequest-objects as value to a dart map
  static Map<String, List<PipelineBranchesitempullRequest>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<PipelineBranchesitempullRequest>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = PipelineBranchesitempullRequest.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

