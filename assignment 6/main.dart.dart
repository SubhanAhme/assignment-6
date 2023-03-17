void main() {
// //Q1: Write a Dart function that returns whether a passed string is palindrome or not?
// * A palindrome is word, phrase, or sequence that reads the same backward as forward,
//  e.g., madam, non, mom etc.
  print("ANSWER 1");
  print(isPalindrome("maham"));
  print(isPalindrome("madam"));
  print(isPalindrome("rahim"));
// Write a Dart function that returns a passed string with letters in alphabetical orders.
  print("ANSWER 2");
  print(alphaOrder("hello"));
  print(alphaOrder("rahim"));
  // Q3: Write a Dart function that accepts a string as a parameter
  //and converts the first letter of each word of the string in upper case.
  print("ANSWER 3");
  print(firstLetter("the quick style"));
  // Q4: Write a Dart function which will take an array of numbers stored and
  // find the second lowest and second greatest numbers, respectively.
  print("ANSWER 4");
  second([5, 4, 9, 2, 11, 6]);
  // Q5: Write a Dart function that accepts two arguments, a string and a letter and the
  // function will count the number of occurrences of the specified letter within the string.
  print("ANSWER 5");
  count("my name is abdul rahim naz", "a");
  count('w3resource.com', 'o');
//  Q6: Write a Dart function that accept a list of country names
//  as input and returns the longest country name as output.
  print("ANSWER 6");
  Get_Longest_Country([
    "Australia",
    "vietnam",
    "Germany",
    "United States of America",
    "united arab emirates ",
    "united states of soviet union"
  ]);
}

//FUNCTIONS
bool isPalindrome(String str) {
  int i = 0;
  int j = str.length - 1;

  while (i < j) {
    if (str[i] != str[j]) {
      return false;
    }
    i++;
    j--;
  }

  return true;
}

alphaOrder(String str) {
  List<String> c = str.split('');
  c.sort();
  return c.join('');
}

firstLetter(String str) {
  List<String> d = str.split(' ');
  for (int i = 0; i < d.length; i++) {
    String word = d[i];
    if (word.isNotEmpty) {
      d[i] = '${word[0].toUpperCase()}${word.substring(1)}';
    }
  }
  return d.join(' ');
}

second(List a) {
  a.sort();
  print(a[1]);
  var b = List.of(a.reversed);
  print(b[1]);
}

count(String str, String a) {
  int cou = 0;
  for (int i = 0; i < str.length; i++) {
    if (str[i] == a) {
      cou++;
    }
  }
  print(cou);
}

Get_Longest_Country(List<String> j) {
  String longest = " ";
  for (String country in j) {
    if (country.length > longest.length) {
      longest = country;
    }
  }
  print(longest);
}
