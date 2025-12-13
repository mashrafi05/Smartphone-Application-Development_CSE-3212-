import 'package:flutter/material.dart';
import 'package:flutter_application_2/login.dart';

class CreateAccount extends StatelessWidget {
  const CreateAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Image
          Positioned.fill(
            child: Image.network(
              "https://static.vecteezy.com/system/resources/previews/010/815/468/non_2x/realistic-3d-luggage-and-plane-on-earth-background-placed-to-create-tourism-advertisement-on-blue-background-for-travel-and-transport-concept-design-vector.jpg",
              fit: BoxFit.cover,
            ),
          ),

          // Dark Overlay
          Container(color: Colors.black.withOpacity(0.6)),

          SafeArea(
            child: Column(
              children: [
                const SizedBox(height: 40),

                // Header
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Create Account",
                      style: TextStyle(
                        fontSize: 34,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 8),

                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Start your journey with us",
                      style: TextStyle(fontSize: 16, color: Colors.white70),
                    ),
                  ),
                ),

                const Spacer(),

                // Form Card
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(25),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    ),
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        // Name
                        TextField(
                          decoration: InputDecoration(
                            labelText: "Full Name",
                            prefixIcon: const Icon(Icons.person),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                        ),

                        const SizedBox(height: 15),

                        // Email
                        TextField(
                          decoration: InputDecoration(
                            labelText: "Email",
                            prefixIcon: const Icon(Icons.email),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                        ),

                        const SizedBox(height: 15),

                        // Password
                        TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            labelText: "Password",
                            prefixIcon: const Icon(Icons.lock),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                        ),

                        const SizedBox(height: 15),

                        // Confirm Password
                        TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            labelText: "Confirm Password",
                            prefixIcon: const Icon(Icons.lock_outline),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                        ),

                        const SizedBox(height: 25),

                        // Create Account Button
                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.deepOrangeAccent,
                              padding: const EdgeInsets.symmetric(vertical: 15),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                            child: const Text(
                              "Create Account",
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),

                        const SizedBox(height: 15),

                        // Already have account
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              "Already have an account? ",
                              style: TextStyle(color: Colors.black54),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) {
                                      return Login();
                                    },
                                  ),
                                );
                              },
                              child: const Text(
                                "Login",

                                style: TextStyle(
                                  color: Colors.teal,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),

                        const SizedBox(height: 10),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
