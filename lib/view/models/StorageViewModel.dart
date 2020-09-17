import 'dart:convert';

import 'package:flutter/material.dart';

class StorageViewModel {
  final double used;
  final double capacity;
  StorageViewModel({
    @required this.used,
    @required this.capacity,
  });

  StorageViewModel copyWith({
    @required double used,
    @required double capacity,
  }) {
    return StorageViewModel(
      used: used ?? this.used,
      capacity: capacity ?? this.capacity,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'used': used,
      'capacity': capacity,
    };
  }

  double get available => capacity - used;
  double get percentUsed => used / capacity * 100;

  factory StorageViewModel.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return StorageViewModel(
      used: map['used']?.todouble(),
      capacity: map['capacity']?.todouble(),
    );
  }

  String toJson() => json.encode(toMap());

  factory StorageViewModel.fromJson(String source) =>
      StorageViewModel.fromMap(json.decode(source));

  @override
  String toString() => 'StorageViewModel(used: $used, capacity: $capacity)';

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is StorageViewModel && o.used == used && o.capacity == capacity;
  }

  @override
  int get hashCode => (used.hashCode ^ capacity.hashCode).toInt();
}
