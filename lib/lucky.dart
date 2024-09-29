import 'dart:io';
import 'dart:math';

class Lucky {
  final int luckyNumber;

  Lucky() : luckyNumber = _generateLuckyNumber();

  static int _generateLuckyNumber() {
    Map<String, String> envVars = Platform.environment;

    // Access the MIN and MAX environment variables
    int min = int.tryParse(envVars['MIN'] ?? '') ?? 10; // Default to 10 if not set
    int max = int.tryParse(envVars['MAX'] ?? '') ?? 100; // Default to 100 if not set

    // Ensure that min is less than or equal to max
    if (min > max) {
      throw Exception('MIN should be less than or equal to MAX.');
    }

    Random random = Random();
    return min + random.nextInt(max - min + 1);
  }
}

