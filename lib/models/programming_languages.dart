import 'package:flutter/material.dart';

class ProgrammingLanguage {
  final String name;
  final Color color;

  const ProgrammingLanguage(this.name, this.color);

  static const ProgrammingLanguage dart =
      ProgrammingLanguage("Dart", Color(0xFF00B4AB));
  static const ProgrammingLanguage java =
      ProgrammingLanguage("Java", Color(0xFFB07219));
  static const ProgrammingLanguage javascript =
      ProgrammingLanguage("Javascript", Color(0xFFF1E05A));
  static const ProgrammingLanguage kotlin =
      ProgrammingLanguage("Kotlin", Color(0xFFF18E33));
}
