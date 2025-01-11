public final String e = "2.7182818284590452353602874713526624977572470936999595749669676277240766303535475945713821785251664274274663919320030599218174135966290435";  

public void setup() {
  googleBillboard(e);
}

public static void googleBillboard(String e) {
  String tenDigitPrime = "";
  //find first 10 digit prime
  for (int i = 2; i < e.length()-9; i++) { 
    if (isPrime(Double.parseDouble(e.substring(i, i+10))) == true) {
      tenDigitPrime = e.substring(i, i+10);
      break;
    }
  }
  //The digits of f(x) all add to 49
  //Find  fifth 10 digit number that adds to 49
  int n = 0;
  String fOfFive = "";
  for (int i = 2; i < e.length()-9; i++) {
    if (countSum(e.substring(i, i+10)) == 49) {
      n++;
      if (n == 5) {
        fOfFive = e.substring(i, i+10);
      }
    }
  }
  System.out.println("First 10 Digit Prime: " + tenDigitPrime);
  System.out.println("f(5): " + fOfFive);
}

public static boolean isPrime(double d) {
  if (d >= 2) {
    for (int i = 2; i <= Math.sqrt(d); i++) {
      if (d % i == 0) {
        return false;
      }
    }
  } else {
    return false;
  }
  return true;
}

public static int countSum(String s) {
  int sum = 0;
  for (int i = 0; i < s.length(); i++) {
    sum += Integer.parseInt(s.substring(i, i+1));
  }
  return sum;
}
