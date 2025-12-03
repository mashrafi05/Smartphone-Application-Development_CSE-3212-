import 'package:flutter/material.dart';
import 'package:flutter_application_1/adventure_page.dart';

class skipButton extends StatelessWidget {
  const skipButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background colors & shapes (using Container gradients and Positioned shapes)
          Container(
            color: const Color(0xff2ED1B8), // teal background on top
          ),

          // Bottom color band (dark)
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            height: 100,
            child: Container(
              color: const Color(0xff012A3A),
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              child: Row(
                children: [
                  // Page indicators
                  Row(
                    children: [
                      _buildIndicator(true),
                      const SizedBox(width: 6),
                      _buildIndicator(false),
                      const SizedBox(width: 6),
                      _buildIndicator(false),
                    ],
                  ),
                  const Spacer(),
                  // Start Tour text/button
                  const Text(
                    "Start Tour",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
          ),

          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Top header row with text and profile image
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "Traveller's ",
                              style: TextStyle(
                                fontSize: 22,
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              "Name",
                              style: TextStyle(
                                fontSize: 32,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),

                      // Profile picture circle
                      Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                          image: const DecorationImage(
                            image: NetworkImage(
                              "https://www.shutterstock.com/image-illustration/male-avatar-profile-picture-silhouette-260nw-257929223.jpg",
                            ), // placeholder avatar image
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 12),

                  // Subtitle text
                  const Text(
                    "We focus a lot on helping the first time or inexperienced traveler head out",
                    style: TextStyle(fontSize: 14, color: Colors.black54),
                  ),

                  const SizedBox(height: 30),

                  // Cards section
                  Expanded(
                    child: ListView(
                      physics: const NeverScrollableScrollPhysics(),
                      children: [
                        _buildInfoCard(
                          icon: Icons.airplane_ticket_outlined,
                          iconColor: Colors.teal.shade400,
                          title: "Tickets",
                          description:
                              "Make your booking with Flexify and enjoy",
                          bgColor: const Color(0xffFFF9E6),
                        ),
                        const SizedBox(height: 20),
                        _buildInfoCard(
                          icon: Icons.hotel,
                          iconColor: Colors.blueGrey.shade700,
                          title: "Hotels",
                          description: "The Ideal Hotel at a Great Price",
                          bgColor: const Color(0xffffe9e7),
                        ),
                        const SizedBox(height: 20),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return adventure_page();
                                },
                              ),
                            );
                          },
                          child: _buildInfoCard(
                            icon: Icons.explore_outlined,
                            iconColor: Colors.green.shade600,
                            title: "Adventure",

                            description:
                                "Find & book tours, adventures, activities",
                            bgColor: const Color(0xffbff1f0),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  // Helper widget to build each card
  Widget _buildInfoCard({
    required IconData icon,
    required Color iconColor,
    required String title,
    required String description,
    required Color bgColor,
  }) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          // Icon container
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: iconColor.withOpacity(0.2),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Icon(icon, size: 32, color: iconColor),
          ),

          const SizedBox(width: 20),

          // Text section
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 18,
                  ),
                ),
                const SizedBox(height: 6),
                Text(
                  description,
                  style: const TextStyle(fontSize: 14, color: Colors.black54),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // Helper to build page indicator dot
  Widget _buildIndicator(bool isActive) {
    return Container(
      width: isActive ? 16 : 6,
      height: 6,
      decoration: BoxDecoration(
        color: isActive ? Colors.white : Colors.white54,
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}
