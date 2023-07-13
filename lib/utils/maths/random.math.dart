import 'dart:math';
import 'dart:ui';

String randomString(int len) {
  const characters = '1234567890/\\\'".,:;[]{}!@#`~|\$%^&*()+-_*=?AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz';
  Random random = Random();
  return String.fromCharCodes(Iterable.generate(len, (_) => characters.codeUnitAt(random.nextInt(characters.length))));
}

Color randomColor(List<Color> colors) {
  if (colors.isEmpty) return const Color(0xffffffff);
  final random = Random().nextInt((colors.length - 1) - 0);
  return colors[random];
}

Color repeatedColor(List<Color> colors, index) {
  if (colors.isEmpty) return const Color(0xffffffff);
  if (index > (colors.length - 1)) index = index % (colors.length);
  return colors[index];
}
