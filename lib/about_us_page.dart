import 'package:flutter/material.dart';
import 'location_page.dart'; // Import your Google Maps page

class AboutUsPage extends StatelessWidget {
  const AboutUsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About Us'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Image.asset(
                'assets/images/logo.png',
                height: 120,
              ),

              const SizedBox(height: 20),

              const Text(
                'FluffyFriend',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 10),

              const Text(
                'FluffyFriend is an online pet supply platform that provides pet food, toys, accessories, and subscription services for pet owners.',
                textAlign: TextAlign.center,
              ),

              const SizedBox(height: 30),

              const Divider(),

              ListTile(
                leading: const Icon(Icons.location_on),
                title: const Text('View Store Location'),
                trailing: const Icon(Icons.arrow_forward_ios),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const LocationPage(),
                    ),
                  );
                },
              ),

              const Divider(),

              const SizedBox(height: 20),

              const Text(
                'Contact Information',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 10),

              const ListTile(
                leading: Icon(Icons.email),
                title: Text('support@fluffyfriend.com'),
              ),

              const ListTile(
                leading: Icon(Icons.phone),
                title: Text('+60 12-345 6789'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}