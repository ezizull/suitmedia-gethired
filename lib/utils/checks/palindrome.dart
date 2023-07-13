bool isPalindrome(String sentence) {
  String newString = sentence.replaceAll(RegExp(r"\s+"), "").toLowerCase();
  return newString == newString.split('').reversed.join();
}
