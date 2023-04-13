validatePincode(int pincode) {
    if (pincode.toString().length < 6) {
      return false;
    } else {
      List<String> lstring = pincode.toString().split('');
      List<int> numbers = lstring.map(int.parse).toList();

      int c = 0;

      for (var i = 0; i <= numbers.length - 1; i++) {
        if (c == 3) {
          return false;
        }

        if (i < numbers.length - 2) {
          if (lstring[i].contains(lstring[i + 1]) &&
              lstring[i].contains(lstring[i + 2])) {
            return false;
          }

          if (numbers[i] + 1 == numbers[i + 1] &&
              numbers[i + 1] + 1 == numbers[i + 2]) {
            return false;
          }

          if (numbers[i] - 1 == numbers[i + 1] &&
              numbers[i + 1] - 1 == numbers[i + 2]) {
            return false;
          }
        }
        if (i < lstring.length - 1) {
          if (lstring[i].contains(lstring[i + 1])) {
            c++;
          }
        }
      }

      return true;
    }
  }