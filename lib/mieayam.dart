import 'package:flutter/material.dart';

class MieayamPage extends StatelessWidget {
  const MieayamPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Mieayam"),
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Item Menu
              _buildMenuItem(
                imageUrl:
                    "https://img-global.cpcdn.com/recipes/f9846f56b774ec9b/680x482cq70/mie-ayam-ceker-foto-resep-utama.jpg",
                title: "Mieayam bakso Kekalik - Kekalik Jaya",
                rating: "4.5 (1rb+)",
                originalPrice: "Rp6.000",
                discountTags: ["Diskon 50%"],
                deliveryTime: "15 menit",
              ),
              _buildMenuItem(
                imageUrl:
                    "https://static.promediateknologi.id/crop/0x0:0x0/750x500/webp/photo/p1/1005/2024/02/03/Screenshot_20240203-205621_Instagram1-57500681.jpg",
                title: "Mieayam Jempong",
                rating: "4.6 (972)",
                originalPrice: "Rp10.000",
                discountTags: ["Diskon Rp8.000"],
                deliveryTime: "35 menit",
              ),
              _buildMenuItem(
                imageUrl:
                    "https://i.pinimg.com/736x/3e/24/f8/3e24f8eb09b7a36a03a5267dc76d48a6.jpg",
                title: "Mieayam bakso ceker kekalik",
                rating: "4.8 (100)",
                originalPrice: "Rp6.000",
                discountTags: ["Diskon 50%"],
                deliveryTime: "20 menit",
              ),
              _buildMenuItem(
                imageUrl:
                    "https://come2indonesia.com/wp-content/uploads/2021/04/Mie-Ayam-Pangsit-4.jpg",
                title: "Mieayam Gerung",
                rating: "4.8 (100)",
                originalPrice: "Rp6.000",
                discountTags: ["Diskon 50%"],
                deliveryTime: "20 menit",
              ),
              _buildMenuItem(
                imageUrl:
                    "https://kurio-img.kurioapps.com/21/12/01/8175ae1a-5ca4-4620-8568-7dc04affbbc2.jpe",
                title: "Mieayam bakso Gomong",
                rating: "4.8 (100)",
                originalPrice: "Rp6.000",
                discountTags: ["Diskon 50%"],
                deliveryTime: "20 menit",
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildMenuItem({
    required String imageUrl,
    required String title,
    required String rating,
    required String deliveryTime,
    String? originalPrice,
    String? discountPrice,
    List<String>? discountTags,
    bool isFlashSale = false,
    bool isSponsored = false,
  }) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Gambar dengan Badge
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.network(
                    imageUrl,
                    width: 80,
                    height: 80,
                    fit: BoxFit.cover,
                  ),
                ),
                if (isFlashSale)
                  Positioned(
                    top: 4,
                    left: 4,
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                      color: Colors.orange,
                      child: Text(
                        "Diskon Kilat",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                        ),
                      ),
                    ),
                  ),
                if (isSponsored)
                  Positioned(
                    top: 4,
                    right: 4,
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                      color: Colors.grey[300],
                      child: Text(
                        "Iklan",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 10,
                        ),
                      ),
                    ),
                  ),
              ],
            ),
            SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Nama Restoran
                  Text(
                    title,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: 4),
                  // Rating dan Jenis Makanan
                  Row(
                    children: [
                      Icon(Icons.star, color: Colors.orange, size: 16),
                      SizedBox(width: 4),
                      Text(
                        rating,
                        style: TextStyle(fontSize: 12),
                      ),
                      SizedBox(width: 8),
                      Text(
                        "Rp 20.000",
                        style: TextStyle(color: Colors.grey[600], fontSize: 12),
                      ),
                    ],
                  ),
                  SizedBox(height: 4),
                  // Harga, Status Gratis, dan Waktu Pengiriman
                  Row(
                    children: [
                      Text(
                        "Diskon",
                        style: TextStyle(
                          color: Colors.orange,
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                        ),
                      ),
                      SizedBox(width: 4),
                      if (originalPrice != null)
                        Text(
                          originalPrice,
                          style: TextStyle(
                            color: Colors.grey,
                            decoration: TextDecoration.lineThrough,
                            fontSize: 12,
                          ),
                        ),
                      if (discountPrice != null)
                        Text(
                          " $discountPrice",
                          style: TextStyle(
                            color: Colors.green,
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                          ),
                        ),
                      SizedBox(width: 8),
                      Text(
                        "Mulai dari $deliveryTime",
                        style: TextStyle(color: Colors.grey[600], fontSize: 12),
                      ),
                    ],
                  ),
                  SizedBox(height: 8),
                  // Tags Diskon
                  Wrap(
                    spacing: 4.0,
                    children: discountTags
                            ?.map((tag) => Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 6, vertical: 2),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color: Colors.orange.withOpacity(0.2),
                                  ),
                                  child: Text(
                                    tag,
                                    style: TextStyle(
                                      fontSize: 10,
                                      color: Colors.orange,
                                    ),
                                  ),
                                ))
                            .toList() ??
                        [],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
