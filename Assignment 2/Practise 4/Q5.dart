void main() {
  Map<String, dynamic> person = {
    "name": "Ali",
    "address": "Mejortila",
    "age": 22,
    "country": "Bangladesh",
  };

  // Update country
  person["country"] = "India";

  person.forEach((key, value) {
    print("$key: $value");
  });
}
