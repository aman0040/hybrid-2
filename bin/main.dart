import 'package:lucky_number_app/lucky.dart';

void main(List<String> arguments) {
  if (arguments.isEmpty) {
    print('Please provide a list of names.');
    return;
  }

  for (var name in arguments) {
    String capitalized = name[0].toUpperCase() + name.substring(1).toLowerCase();
    Lucky lucky = Lucky();
    print('Hello $capitalized. Your lucky number is ${lucky.luckyNumber}.');
  }
}
