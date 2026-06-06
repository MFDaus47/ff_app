import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class LocationPage extends StatelessWidget {
  const LocationPage({super.key});
  Future<void> openGoogleMaps() async {
  final Uri url = Uri.parse(
      'https://www.google.com/maps/search/?api=1&query=1.852276,103.074121');

  if (await canLaunchUrl(url)) {
    await launchUrl(url);
  }
}

  @override
  Widget build(BuildContext context) {

    const LatLng storeLocation =
        LatLng(1.852276, 103.074121);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Store Location'),
      ),
      body: Column(
  children: [
    Expanded(
      child: GoogleMap(
        initialCameraPosition: const CameraPosition(
          target: storeLocation,
          zoom: 15,
        ),
        markers: {
          const Marker(
            markerId: MarkerId('store'),
            position: storeLocation,
            infoWindow: InfoWindow(
              title: 'FluffyFriend Pet Store',
              snippet: 'Pura Kencana, Johor',
            ),
          ),
        },
      ),
    ),

    Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'FluffyFriend Pet Store',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),

          SizedBox(height: 8),

          Text(
            'Address:',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),

          ElevatedButton.icon(
            onPressed: openGoogleMaps,
            icon: const Icon(Icons.map),
  label: const Text('Open in Google Maps'),
),

          Text(
            'Taman Universiti, Batu Pahat, Johor',
          ),

          SizedBox(height: 8),

          Text(
            'Operating Hours:',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),

          Text(
            'Monday - Sunday: 9:00 AM - 8:00 PM',
          ),
        ],
      ),
    ),
  ],
),

      
    );
  }
}