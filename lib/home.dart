import 'package:flutter/material.dart';
import 'package:warung_makan_herla/rendang.dart';
import 'package:warung_makan_herla/soto.dart';

import 'ayamgeprek.dart';
import 'ayamgoreng.dart';
import 'baksourat.dart';
import 'ikanbakar.dart';
import 'martabakmanis.dart';
import 'mieayam.dart';
import 'pelecingkangkung.dart';
import 'sate.dart';

class MyHome extends StatelessWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("Warung Makan Herla"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              MenuItem(
                title: "Ayam Geprek",
                subtitle: "Rp10.000",
                imageUrl:
                    "https://www.masakapahariini.com/wp-content/uploads/2023/03/shutterstock_1949306203-500x300.jpg",
                onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => AyamGeprekPage())),
              ),
              MenuItem(
                title: "Sate",
                subtitle: "Rp10.000",
                imageUrl:
                    "https://img-global.cpcdn.com/recipes/a6ca9f36b02b089b/680x482cq70/sate-ayam-khas-madura-foto-resep-utama.jpg",
                onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SatePage())),
              ),
              MenuItem(
                title: "Mie Ayam",
                subtitle: "Rp12.000",
                imageUrl:
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTsJAFxS63FSelT415mp2Hyd5ibkWIcdR7mUg&s",
                onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MieayamPage())),
              ),
              MenuItem(
                title: "Martabak Manis",
                subtitle: "Rp25.000",
                imageUrl:
                    "https://assets.promediateknologi.id/crop/0x0:0x0/750x500/webp/photo/2022/05/11/2954825312.jpg",
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => MartabakmanisPage())),
              ),
              MenuItem(
                title: "Pelecing Kangkung",
                subtitle: "Rp10.000",
                imageUrl:
                    "https://awsimages.detik.net.id/community/media/visual/2021/11/30/resep-plecing-kangkung-khas-lombok.jpeg?w=600&q=90",
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => PelecingkangkungPage())),
              ),
              MenuItem(
                title: "Bakso Urat",
                subtitle: "Rp15.000",
                imageUrl:
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSPHDTkblZB519_RoxztpFNGAO3Tm8eOK8ciQ&s",
                onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => BaksouratPage())),
              ),
              MenuItem(
                title: "Ayam Goreng",
                subtitle: "Rp15.000",
                imageUrl:
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTQ8RmQXkvUlHGnSwapIKn_C1WJGrbL979ayg&s",
                onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => AyamGorengPage())),
              ),
              MenuItem(
                title: "Soto",
                subtitle: "Rp15.000",
                imageUrl:
                    "https://cdn0-production-images-kly.akamaized.net/9OhNK313sh_FOfF_y0Nymo0qp_0=/1200x1200/smart/filters:quality(75):strip_icc():format(webp)/kly-media-production/medias/3134970/original/081486000_1590134591-resep-soto-ayam.jpg",
                onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SotoPage())),
              ),
              MenuItem(
                title: "Rendang ",
                subtitle: "Rp25.000",
                imageUrl:
                    "https://cdn0-production-images-kly.akamaized.net/vIx_lxR1UfFl79d67T7pjvy1tXw=/800x450/smart/filters:quality(75):strip_icc():format(webp)/kly-media-production/medias/1253731/original/213c98558a7233f0f923c91df2b986f9beef-curry-recipe-stew-beef-in-coconut-curry.jpg",
                onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => RendangPage())),
              ),
              MenuItem(
                title: "Ikan Bakar",
                subtitle: "Rp25.000",
                imageUrl:
                    "https://cdn0-production-images-kly.akamaized.net/-xpXl30QSUCgpbUkCpDRbHD2QXM=/1x69:1000x632/800x450/filters:quality(75):strip_icc():format(webp)/kly-media-production/medias/3382058/original/005419200_1613794550-shutterstock_1646912323.jpg",
                onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => IkanbakarPage())),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MenuItem extends StatelessWidget {
  final String title;
  final String subtitle;
  final String imageUrl;
  final VoidCallback onTap;

  const MenuItem({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.imageUrl,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      margin: const EdgeInsets.symmetric(vertical: 8),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: ListTile(
        onTap: onTap,
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.network(
            imageUrl,
            width: 50,
            height: 50,
            fit: BoxFit.cover,
          ),
        ),
        title: Text(
          title,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        ),
        subtitle: Text(
          subtitle,
          style: TextStyle(color: Colors.grey[700]),
        ),
        trailing: Icon(Icons.arrow_forward_ios, size: 16, color: Colors.white),
      ),
    );
  }
}
