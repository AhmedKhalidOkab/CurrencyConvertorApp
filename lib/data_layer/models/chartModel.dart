class Chartmodel {
  Chartmodel({
    required this.meta,
    required this.data,
  });
  late final Meta meta;
  late final Data data;

  Chartmodel.fromJson(Map<String, dynamic> json) {
    meta = Meta.fromJson(json['meta']);
    data = Data.fromJson(json['data']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['meta'] = meta.toJson();
    _data['data'] = data.toJson();
    return _data;
  }
}

class Meta {
  Meta({
    required this.lastUpdatedAt,
  });
  late final String lastUpdatedAt;

  Meta.fromJson(Map<String, dynamic> json) {
    lastUpdatedAt = json['last_updated_at'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['last_updated_at'] = lastUpdatedAt;
    return _data;
  }
}

class Data {
  Data({
    required this.EUR,
    required this.USD,
  });
  late final double EUR;
  late final double USD;

  Data.fromJson(Map<String, dynamic> json) {
    EUR = json['EUR'];
    USD = json['USD'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['EUR'] = EUR;
    _data['USD'] = USD;
    return _data;
  }
}

class EUR {
  EUR({
    required this.code,
    required this.value,
  });
  late final String code;
  late final double value;

  EUR.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    value = json['value'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['code'] = code;
    _data['value'] = value;
    return _data;
  }
}

class USD {
  USD({
    required this.code,
    required this.value,
  });
  late final String code;
  late final int value;

  USD.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    value = json['value'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['code'] = code;
    _data['value'] = value;
    return _data;
  }
}
