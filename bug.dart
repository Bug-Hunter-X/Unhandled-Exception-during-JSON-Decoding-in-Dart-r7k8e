```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Process the JSON response
      final jsonResponse = json.decode(response.body);
      // Access the data, assuming it's a list of maps
      for (final item in jsonResponse) {
        print(item['name']);
      }
    } else {
      // Handle error response
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    // Handle exceptions (e.g., network errors)
    print('Error: $e');
  }
}
```