import 'package:flutter/material.dart';

extension Dimentions on num {
  SizedBox get hs => SizedBox(height: toDouble());

  SizedBox get ws => SizedBox(width: toDouble());
}
