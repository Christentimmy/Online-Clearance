import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AdminProfileScreen extends StatelessWidget {
  const AdminProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          'Profile',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: Get.height * 0.02),
            // Profile Header
            const Row(
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage("assets/images/avater.png"),
                ),
                SizedBox(width: 16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Admin',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'admin@shapely.com',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 45),

            // Security Section
            ListTile(
              title: const Text(
                'Security',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              subtitle: const Text(
                'Change password',
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                color: Colors.white,
              ),
              onTap: () {
                // Navigate to change password screen
              },
            ),

            // System Preferences Section
            ListTile(
              title: const Text(
                'Language',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              subtitle: const Text(
                'English',
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                color: Colors.white,
              ),
              onTap: () {
                // Navigate to language settings
              },
            ),
            ListTile(
              title: const Text(
                'Time zone',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              subtitle: const Text(
                'US/Pacific',
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                color: Colors.white,
              ),
              onTap: () {
                // Navigate to time zone settings
              },
            ),

            // Logout Section
            ListTile(
              title: const Text(
                'Logout',
                style: TextStyle(
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                ),
              ),
              onTap: () {
                // Handle logout action
              },
            ),
          ],
        ),
      ),
    );
  }
}
