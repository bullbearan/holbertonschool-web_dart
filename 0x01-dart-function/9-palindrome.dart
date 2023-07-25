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
