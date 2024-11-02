import 'package:flutter/material.dart';

class SatePage extends StatelessWidget {
  const SatePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sate"),
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
                    "https://i.ytimg.com/vi/R0mDzP0A_DQ/hq720.jpg?sqp=-oaymwEhCK4FEIIDSFryq4qpAxMIARUAAAAAGAElAADIQj0AgKJD&rs=AOn4CLCKevZCAetrLVnQIhN9FBW8vvPfcg",
                title: "Sate Kekalik - Kekalik Jaya",
                rating: "4.5 (1rb+)",
                originalPrice: "Rp6.000",
                discountTags: ["Diskon 50%"],
                deliveryTime: "15 menit",
              ),
              _buildMenuItem(
                imageUrl:
                    "https://cdn1-production-images-kly.akamaized.net/bLDquq0oaVBpG2NE_Lq0QTthaDo=/800x450/smart/filters:quality(75):strip_icc():format(webp)/kly-media-production/medias/4485302/original/008851000_1687970322-aa.jpg",
                title: "Sate Jempong",
                rating: "4.6 (972)",
                originalPrice: "Rp10.000",
                discountTags: ["Diskon Rp8.000"],
                deliveryTime: "35 menit",
              ),
              _buildMenuItem(
                imageUrl:
                    "https://www.blibli.com/friends-backend/wp-content/uploads/2023/04/B300045-Cover-resep-sate-ayam-scaled.jpg",
                title: "Sate kekalik",
                rating: "4.8 (100)",
                originalPrice: "Rp6.000",
                discountTags: ["Diskon 50%"],
                deliveryTime: "20 menit",
              ),
              _buildMenuItem(
                imageUrl:
                    "https://asset.kompas.com/crops/BJdOTeUCdwHWS6ImI9qDnf3s8nI=/0x0:1000x667/1200x800/data/photo/2023/12/19/6580e31d4d33e.jpeg",
                title: "Sate Gerung",
                rating: "4.8 (100)",
                originalPrice: "Rp6.000",
                discountTags: ["Diskon 50%"],
                deliveryTime: "20 menit",
              ),
              _buildMenuItem(
                imageUrl:
                    "https://www.visitsingapore.com/content/dam/desktop/global/dining-drinks-singapore/local-dishes/satay-carousel1-940x940.jpg",
                title: "Sate Gomong",
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
