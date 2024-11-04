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
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Foto Profil
            Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    spreadRadius: 5,
                    blurRadius: 10,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: CircleAvatar(
                radius: 80,
                backgroundImage: NetworkImage(imgLink),
                backgroundColor: Colors.transparent,
              ),
            ),
            SizedBox(height: 16),

            // Nama dan ID
            Column(
              children: [
                Text(
                  "Herla Gustini",
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: Colors.green[700],
                  ),
                ),
                Text(
                  "22TI006",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.green[300],
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),

            // Biodata dalam Card
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              elevation: 5,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
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
              ),
            ),

            // Pesan Terima Kasih
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 24.0),
              child: Text(
                "Terima kasih telah berkunjung di warung saya. Selamat menikmati dan kutunggu kedatangannya kembali.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  fontStyle: FontStyle.italic,
                  color: Colors.green[600],
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
          leading: Container(
            padding: EdgeInsets.all(6),
            decoration: BoxDecoration(
              color: Colors.green.withOpacity(0.2),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Icon(icon, color: Colors.green),
          ),
          title: Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.green[700],
            ),
          ),
          subtitle: Text(
            subtitle,
            style: TextStyle(
              color: Colors.green[900],
            ),
          ),
        ),
        Divider(color: Colors.grey[300], thickness: 1),
      ],
    );
  }
}
