import 'package:entire/Models/product.dart';
import 'package:flutter/cupertino.dart';

class ProductsProvider with ChangeNotifier {
  List<Product> _items = [
    Product(
        title: "Jordan 3 Retro",
        picture:
            "https://scontent.fqfd1-1.fna.fbcdn.net/v/t1.15752-9/241118460_535542284420048_6311193577647584473_n.png?_nc_cat=101&ccb=1-5&_nc_sid=ae9488&_nc_ohc=67IR9htIr_UAX92twcW&_nc_ht=scontent.fqfd1-1.fna&oh=a751ea64940c26d856b55820e876e9f1&oe=615702B0",
        price: 234.00,
        isFavorite: true,
        discount: 10),
    Product(
        picture:
            "https://scontent.fqfd1-1.fna.fbcdn.net/v/t1.15752-9/241146567_877139663210568_4746363845956968736_n.png?_nc_cat=103&ccb=1-5&_nc_sid=ae9488&_nc_ohc=i7wW_zzJ5K0AX9CULmj&_nc_ht=scontent.fqfd1-1.fna&oh=dc7542871137911240670b62e931ba36&oe=61546038",
        title: "Canon EOS 550D",
        price: 199.00),
    Product(
        discount: 20,
        title: "Spirit Headphones",
        price: 30.15,
        picture:
            "https://scontent.fqfd1-2.fna.fbcdn.net/v/t1.15752-9/241165311_836855787195783_961998019330795786_n.png?_nc_cat=107&ccb=1-5&_nc_sid=ae9488&_nc_ohc=jXUyPAd7hnUAX9zvCml&_nc_ht=scontent.fqfd1-2.fna&oh=b58b0ebb7d5771e79909c9e18c4a0247&oe=6153D037"),
    Product(
        title: "Kllisre ram DDR4",
        picture:
            "https://scontent.fqfd1-2.fna.fbcdn.net/v/t1.15752-9/241062131_279809513581848_823313457991753556_n.png?_nc_cat=108&ccb=1-5&_nc_sid=ae9488&_nc_ohc=3ai3kdHXTVwAX8_lqOx&tn=ruourDMEKDLn1nQH&_nc_ht=scontent.fqfd1-2.fna&oh=7854e2ba40acc01b4c0c29243340974c&oe=61571811",
        price: 39.32)
  ];
  List<Product> get items => [..._items];
}
