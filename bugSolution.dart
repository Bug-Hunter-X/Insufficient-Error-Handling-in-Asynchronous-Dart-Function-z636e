```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);
      // Process jsonData
    } else {
      throw HttpException('HTTP error! Status code: ${response.statusCode}', uri: Uri.parse('https://api.example.com/data'));
    }
  } on SocketException catch (e) {
    // Handle socket exceptions (network issues)
    print('Network error: $e');
    // Additional handling logic (retry, display message, etc.)
  } on FormatException catch (e) {
    // Handle JSON decoding errors
    print('JSON decoding error: $e');
    // Additional handling logic
  } on HttpException catch (e) {
    //Handle HTTP exceptions
    print('HTTP Exception: ${e.message}, uri: ${e.uri}');
  } catch (e) {
    // Handle other unexpected exceptions
    print('Unexpected error: $e');
    // Additional handling logic
  }
}
```