import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String imgLink =
        "https://assets-a1.kompasiana.com/items/album/2024/03/15/8d5ec0cd7efb650367c2b60511ebfeec-65f3a59c1470931e216feed3.jpg";

    return Scaffold(
      appBar: AppBar(
        title: Text("Profil"),
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Foto Profil
            CircleAvatar(
              radius: 80,
              backgroundImage: NetworkImage(imgLink),
              backgroundColor: Colors.transparent,
            ),
            SizedBox(height: 16),

            // Nama
            Text(
              "Herla Gustini",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Text(
              "22TI006",
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey[600],
              ),
            ),
            SizedBox(height: 24),

            // Biodata dalam ListView
            Column(
              children: [
                ProfileListTile(
                  icon: Icons.location_on,
                  title: "Alamat",
                  subtitle: "Pujut, Lombok Tengah",
                ),
                ProfileListTile(
                  icon: Icons.class_,
                  title: "Kelas",
                  subtitle: "TIA 1",
                ),
                ProfileListTile(
                  icon: Icons.school,
                  title: "Prodi",
                  subtitle: "Teknik Informatika",
                ),
                ProfileListTile(
                  icon: Icons.calendar_today,
                  title: "Semester",
                  subtitle: "5",
                ),
              ],
            ),

            // Pesan Terima Kasih
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 24.0, horizontal: 8.0),
              child: Text(
                "Terima kasih telah berkunjung di warung saya. Selamat menikmati dan kutunggu kedatangannya kembali.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  fontStyle: FontStyle.italic,
                  color: Colors.grey[700],
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add edit functionality here
        },
        backgroundColor: Colors.green,
        child: Icon(Icons.edit),
      ),
    );
  }
}

// Custom ListTile widget for profile details
class ProfileListTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;

  const ProfileListTile({
    Key? key,
    required this.icon,
    required this.title,
    required this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: Icon(icon, color: Colors.green),
          title: Text(
            title,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          subtitle: Text(subtitle),
        ),
        Divider(color: Colors.grey[300]),
      ],
    );
  }
}
