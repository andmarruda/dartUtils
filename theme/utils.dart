import 'dart:ui';

class utils{
  static List hexToRgb(String hex)
  {
    return [
      int.parse(hex.substring(0, 2), radix:16),
      int.parse(hex.substring(2, 4), radix:16),
      int.parse(hex.substring(4, 6), radix:16)
    ];
  }

  static Color fromHex(String hex, int alpha)
  {
    List rgb = hexToRgb(hex);
    return Color.fromARGB(alpha, rgb[0], rgb[1], rgb[2]);
  }
}
