bool isPalindrome(String s) {

if (s.length < 3)
    return false;

  String r = "";

  for (var idx = s.length - 1; idx >= 0; idx--) {
    r += s[idx];
  }

  if (r == s)
    return true;

  return false;
}

String longestPalindrome(String s) {
  if (s.length < 3) return 'none';
  String longest = '';
  String current = '';
  for (int i = 0; i < s.length; i++) {
    for (int j = i; j < s.length; j++) {
      current = s.substring(i, j + 1);
      if (isPalindrome(current) && current.length > longest.length) {
        longest = current;
      }
    }
  }
  return longest != '' ? longest : 'none';
}
