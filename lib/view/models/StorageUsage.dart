import 'dart:convert';

import 'package:flutter/material.dart';

class StorageUsageViewModel {
  final double percent;
  final String usage;
  final Color color;
  StorageUsageViewModel({
    this.percent,
    this.usage,
    this.color,
  });

  StorageUsageViewModel copyWith({
    int percent,
    String usage,
    String color,
  }) {
    return StorageUsageViewModel(
      percent: percent ?? this.percent,
      usage: usage ?? this.usage,
      color: color ?? this.color,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'percent': percent,
      'usage': usage,
      'color': color,
    };
  }

  factory StorageUsageViewModel.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return StorageUsageViewModel(
      percent: map['percent']?.toInt(),
      usage: map['usage'],
      color: map['color'],
    );
  }

  String toJson() => json.encode(toMap());

  factory StorageUsageViewModel.fromJson(String source) =>
      StorageUsageViewModel.fromMap(json.decode(source));

  @override
  String toString() =>
      'StorageUsageViewModel(percent: $percent, usage: $usage, color: $color)';

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is StorageUsageViewModel &&
        o.percent == percent &&
        o.usage == usage &&
        o.color == color;
  }

  @override
  int get hashCode => percent.hashCode ^ usage.hashCode ^ color.hashCode;
}
