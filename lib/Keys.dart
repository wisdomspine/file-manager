import 'dart:convert';

class Keys {
  final String syncfusionLicense;
  Keys({
    this.syncfusionLicense,
  });

  Keys copyWith({
    String syncfusionLicense,
  }) {
    return Keys(
      syncfusionLicense: syncfusionLicense ?? this.syncfusionLicense,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'syncfusionLicense': syncfusionLicense,
    };
  }

  factory Keys.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return Keys(
      syncfusionLicense: map['syncfusionLicense'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Keys.fromJson(String source) => Keys.fromMap(json.decode(source));

  @override
  String toString() => 'Keys(syncfusionLicense: $syncfusionLicense)';

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is Keys && o.syncfusionLicense == syncfusionLicense;
  }

  @override
  int get hashCode => syncfusionLicense.hashCode;
}
