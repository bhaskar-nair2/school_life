import 'package:flutter/material.dart';

const double _offset = 0.2;
const double _maxLightness = 0.9;
const double _minLightness = 0.15;

class ColorUtils {
  Color getLighterAccent(Color color) {
    var hsl = HSLColor.fromColor(color);
    if (hsl.saturation + _offset > 1) {
      hsl = hsl.withSaturation(1);
    } else {
      hsl = hsl.withSaturation(hsl.saturation + _offset);
    }
    if (hsl.lightness + _offset > _maxLightness) {
      hsl = hsl.withLightness(_maxLightness);
    } else {
      hsl = hsl.withLightness(hsl.lightness + _offset);
    }
    return hsl.toColor();
  }

  Color getDarkerAccent(Color color) {
    var hsl = HSLColor.fromColor(color);
    if (hsl.lightness - _offset < _minLightness) {
      hsl = hsl.withLightness(_minLightness);
    } else {
      hsl = hsl.withLightness(hsl.lightness - _offset);
    }
    return hsl.toColor();
  }

  String toHex(Color color, {bool leadingHashSign = true}) {
    if (color == null) return null;
    var alpha = color.alpha;
    var red = color.red;
    var green = color.green;
    var blue = color.blue;
    return '${leadingHashSign ? '#' : ''}'
        '${alpha.toRadixString(16).padLeft(2, '0')}'
        '${red.toRadixString(16).padLeft(2, '0')}'
        '${green.toRadixString(16).padLeft(2, '0')}'
        '${blue.toRadixString(16).padLeft(2, '0')}';
  }
}
