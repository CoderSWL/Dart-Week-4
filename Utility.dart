import 'dart:io';

void main() {
  // String Manipulation
  String userInput = 'Dart is Fun';
  print('Original String: $userInput');
  String reversedString = reverseString(userInput);
  print('Reversed String: $reversedString');
  String upperCaseString = userInput.toUpperCase();
  print('Uppercase String: $upperCaseString');
  String lowerCaseString = userInput.toLowerCase();
  print('Lowercase String: $lowerCaseString');
  
  // Collections
  List<String> stringList = ['apple', 'banana', 'cherry'];
  Set<int> numberSet = {1, 2, 3, 3};  // Set automatically removes duplicates
  Map<String, String> fruitColors = {'apple': 'red', 'banana': 'yellow', 'cherry': 'red'};
  print('List of fruits: $stringList');
  print('Set of numbers (duplicates removed): $numberSet');
  print('Fruit colors map: $fruitColors');

  // File Handling
  String inputFile = 'input.txt';  // Make sure the input.txt exists or create it
  String outputFile = 'output.txt';
  String fileContent = readFile(inputFile);
  writeFile(outputFile, fileContent);

  // Date and Time
  DateTime now = DateTime.now();
  print('Current Date and Time: $now');
  String formattedDate = formatDate(now);
  print('Formatted Date: $formattedDate');
  DateTime futureDate = now.add(Duration(days: 10));
  print('Date 10 days from now: $futureDate');
  
  // Log date/time and string manipulation results
  logDateTime('User entry processed');
}

String reverseString(String input) {
  return input.split('').reversed.join('');
}

String readFile(String filePath) {
  try {
    final file = File(filePath);
    String contents = file.readAsStringSync();
    print('File Read Successful');
    return contents;
  } catch (e) {
    print('Error reading file: $e');
    return '';
  }
}

void writeFile(String filePath, String content) {
  try {
    final file = File(filePath);
    file.writeAsStringSync(content);
    print('File Written Successfully');
  } catch (e) {
    print('Error writing to file: $e');
  }
}

String formatDate(DateTime dateTime) {
  return '${dateTime.day}-${dateTime.month}-${dateTime.year} ${dateTime.hour}:${dateTime.minute}:${dateTime.second}';
}

void logDateTime(String message) {
  DateTime logTime = DateTime.now();
  print('$message at ${formatDate(logTime)}');
}
