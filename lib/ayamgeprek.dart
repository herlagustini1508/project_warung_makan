import 'package:flutter/material.dart';

class AyamGeprekPage extends StatelessWidget {
  const AyamGeprekPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ayam Geprek"),
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
                    "https://awsimages.detik.net.id/api/wm/2021/04/19/ayam-geprek_169.jpeg?wid=54&w=650&v=1&t=jpeg",
                title: "Geprek Kekalik - Kekalik Jaya",
                rating: "4.5 (1rb+)",
                originalPrice: "Rp6.000",
                discountTags: ["Diskon 50%"],
                deliveryTime: "15 menit",
              ),
              _buildMenuItem(
                imageUrl:
                    "https://o-cdn-cas.oramiland.com/parenting/original_images/ayam_geprek_original.png",
                title: "Ayam Geprek Jempong",
                rating: "4.6 (972)",
                originalPrice: "Rp10.000",
                discountTags: ["Diskon Rp8.000"],
                deliveryTime: "35 menit",
              ),
              _buildMenuItem(
                imageUrl:
                    "https://pict.sindonews.net/dyn/850/pena/news/2021/01/20/185/307384/resep-ayam-geprek-crispy-dan-pedas-bikin-makan-berselera-mwy.jpg",
                title: "Ayam Geprek kekalik",
                rating: "4.8 (100)",
                originalPrice: "Rp6.000",
                discountTags: ["Diskon 50%"],
                deliveryTime: "20 menit",
              ),
              _buildMenuItem(
                imageUrl:
                    "https://siarindomedia.com/wp-content/uploads/2024/03/1914-Resep-Ayam-Geprek-Krispy.jpg",
                title: "Ayam Geprek Gerung",
                rating: "4.8 (100)",
                originalPrice: "Rp6.000",
                discountTags: ["Diskon 50%"],
                deliveryTime: "20 menit",
              ),
              _buildMenuItem(
                imageUrl:
                    "https://dcostseafood.id/wp-content/uploads/2021/12/Nasi-Ayam-Geprek-Sambal-Korek.jpg",
                title: "Ayam Geprek Gomong",
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
