part of openapi.api;

class ScmOrganisations {
  ScmOrganisations();

  @override
  String toString() {
    return 'ScmOrganisations[]';
  }

  ScmOrganisations.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
    };
  }

  static List<ScmOrganisations> listFromJson(List<dynamic> json) {
    return json == null ? new List<ScmOrganisations>() : json.map((value) => new ScmOrganisations.fromJson(value)).toList();
  }

  static Map<String, ScmOrganisations> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ScmOrganisations>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ScmOrganisations.fromJson(value));
    }
    return map;
  }
}

