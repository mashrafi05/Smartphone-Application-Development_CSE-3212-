import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Image
          Positioned.fill(
            child: Image.network(
              'https://static.vecteezy.com/system/resources/previews/010/815/468/non_2x/realistic-3d-luggage-and-plane-on-earth-background-placed-to-create-tourism-advertisement-on-blue-background-for-travel-and-transport-concept-design-vector.jpg',
              fit: BoxFit.cover,
            ),
          ),

          // Dark overlay
          Container(color: Colors.black.withOpacity(0.6)),

          SafeArea(
            child: Column(
              children: [
                const SizedBox(height: 40),

                // Header Text
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Welcome Back",
                      style: TextStyle(
                        fontSize: 34,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 10),

                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Login to continue your journey",
                      style: TextStyle(fontSize: 16, color: Colors.white70),
                    ),
                  ),
                ),

                const Spacer(),

                // Login Card
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
                  child: Column(
                    children: [
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

                      const SizedBox(height: 20),

                      // Login Button
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.tealAccent.shade400,
                            padding: const EdgeInsets.symmetric(vertical: 15),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                          child: const Text(
                            "Login",
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),

                      const SizedBox(height: 15),

                      // Forgot Password
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Forgot Password?",
                          style: TextStyle(color: Colors.black54),
                        ),
                      ),

                      const SizedBox(height: 10),

                      // Back Button
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text(
                          "Back",
                          style: TextStyle(
                            color: Colors.teal,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
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
