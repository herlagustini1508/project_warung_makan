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
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.green, Colors.teal],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
        elevation: 4,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Foto Profil dengan animasi saat ditekan
            GestureDetector(
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text("Foto Profil Diklik")),
                );
              },
              child: AnimatedContainer(
                duration: Duration(milliseconds: 300),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.green.withOpacity(0.4),
                      spreadRadius: 8,
                      blurRadius: 12,
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
            ),
            SizedBox(height: 16),

            // Nama dan ID
            Column(
              children: [
                Text(
                  "Herla Gustini",
                  style: TextStyle(
                    fontSize: 28,
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

            // Biodata dalam Card yang lebih stylish
            Card(
              color: Colors.green[50],
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              elevation: 6,
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
                    ProfileListTile(
                      icon: Icons.phone,
                      title: "Nomor HP",
                      subtitle: "081913089634",
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
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text("Edit Profil")),
          );
        },
        backgroundColor: Colors.green,
        child: Icon(Icons.edit),
      ),
    );
  }
}

// Custom ListTile widget with enhanced style
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
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Colors.green.withOpacity(0.15),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Icon(icon, color: Colors.green[700]),
          ),
          title: Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.green[900],
            ),
          ),
          subtitle: Text(
            subtitle,
            style: TextStyle(
              color: Colors.green[800],
            ),
          ),
          trailing: Icon(Icons.arrow_forward_ios, color: Colors.green[600]),
        ),
        Divider(color: Colors.green[200], thickness: 1),
      ],
    );
  }
}
