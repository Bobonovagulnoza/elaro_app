import 'package:elaro_app/core/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class LocationScreen extends StatelessWidget {
  const LocationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Do'konlar")),
      body: Column(
        children: [
          ListTile(
            onTap: () async {
              final uri = Uri.parse(
                Utils.generateGoogleMapsLink(38.8361833, 65.782186),
              );
              if (await canLaunchUrl(uri)) {
                await launchUrl(uri, mode: LaunchMode.externalApplication);
              } else {
                throw "coudnot launch $uri";
              }
            },
            leading: Icon(Icons.location_on_outlined),
            title: Text(
              "Qashqadaryo viloyati, Qarshi shahri, Nasaf ko‘chasi, 180100",
              maxLines: 3,
            ),
            subtitle: Text("9:00-21:00"),
            trailing: Icon(Icons.arrow_forward_ios, size: 16),
          ),
        ],
      ),
    );
  }
}
