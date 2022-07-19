void main(List<String> args) {
  var number = int.parse(args[0]);
  if (number == 0) {
    print("$number is zero");
  } else if (number > 0) {
    print("$number is positive");
  } else {
    print("$number is negative");
  }
}
