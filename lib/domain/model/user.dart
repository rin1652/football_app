import 'dart:io';

import 'package:football_app/domain/model/yard.dart';

class User {
  User({
    required this.id,
    required this.name,
    required this.image,
    required this.location,
    required this.teamName,
    required this.yard,
    required this.quantity,
    this.note,
  });
  final String id;
  final String name;
  final File image;
  final String location;
  final String teamName;
  final Yard yard;
  final int quantity;
  final String? note;
}
