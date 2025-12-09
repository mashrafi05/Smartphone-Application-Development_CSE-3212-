import 'package:flutter/material.dart';

// ignore: camel_case_types
class converterPage extends StatefulWidget {
  const converterPage({super.key});

  @override
  State<converterPage> createState() => _converterPageState();
}

// ignore: camel_case_types
class _converterPageState extends State<converterPage> {
  TextEditingController distanceController = TextEditingController();
  String? distanceError;
  double convertedValue = 0;
  bool isKmToMiles = true; // true = KM → Miles, false = Miles → KM

  void convertDistance() {
    String input = distanceController.text.trim();

    if (input.isEmpty) {
      distanceError = "Enter a distance!";
    } else {
      distanceError = null;
      double value = double.parse(input);

      if (isKmToMiles) {
        convertedValue = value * 0.621371; // KM → Miles
      } else {
        convertedValue = value / 0.621371; // Miles → KM
      }
    }

    setState(() {});
  }

  void switchMode() {
    setState(() {
      isKmToMiles = !isKmToMiles;
      convertedValue = 0;
      distanceController.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.teal,
        title: const Text("Travel Distance Converter"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Card(
          elevation: 6,
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.map, size: 60, color: Colors.teal),

                const SizedBox(height: 15),

                Text(
                  isKmToMiles
                      ? "Kilometer → Mile Converter"
                      : "Mile → Kilometer Converter",
                  style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),

                const SizedBox(height: 15),

                TextField(
                  controller: distanceController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: "Enter distance",
                    prefixIcon: const Icon(Icons.straighten),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    errorText: distanceError,
                  ),
                ),

                const SizedBox(height: 20),

                ElevatedButton(
                  onPressed: convertDistance,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.teal,
                    padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 14),
                  ),
                  child: const Text("Convert", style: TextStyle(fontSize: 18)),
                ),

                const SizedBox(height: 15),

                Text(
                  convertedValue == 0
                      ? ""
                      : isKmToMiles
                          ? "${convertedValue.toStringAsFixed(2)} Miles"
                          : "${convertedValue.toStringAsFixed(2)} Kilometers",
                  style: const TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
                ),

                const SizedBox(height: 30),

                TextButton(
                  onPressed: switchMode,
                  child: Text(
                    isKmToMiles
                        ? "Switch to Mile → KM"
                        : "Switch to KM → Mile",
                    style: const TextStyle(fontSize: 16, color: Colors.teal),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
