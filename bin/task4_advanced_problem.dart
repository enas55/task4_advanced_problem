void main() {
  List strs = ["flower", "flow", "flight"];

  var result = longestCommonPrefix(strs);

  print(result);
}

String longestCommonPrefix(List list) {
  if (list.isEmpty) {
    return '';
  }
  list.sort();

  String firstString = list.first;
  String lastString = list.last;
  for (int i = 0; i < firstString.length && i < lastString.length; i++) {
    if (firstString[i] != lastString[i]) {
      break;
    }
  }
  return firstString.substring(0, list.length - 1);
}
