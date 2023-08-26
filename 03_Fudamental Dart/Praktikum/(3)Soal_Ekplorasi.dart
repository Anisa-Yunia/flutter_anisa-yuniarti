String kata = "kasur rusak";

bool isPalindrome(String kata) {
  String putarKata = kata.split('').reversed.join('');
  return kata == putarKata;
}

void main() {
  
  if (isPalindrome(kata)) {
    print("$kata is a palindrome.");
  } else {
    print("$kata is not a palindrome.");
  }
}
