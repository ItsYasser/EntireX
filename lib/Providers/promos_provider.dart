import 'package:entire/Models/promo.dart';
import 'package:flutter/cupertino.dart';

class PromosProvider with ChangeNotifier {
  List<Promo> _promos = [
    Promo(
        id: DateTime.now().toString(),
        picture:
            "https://scontent.fqfd1-1.fna.fbcdn.net/v/t1.15752-9/241144103_1309798492772396_1527060324115156710_n.png?_nc_cat=100&ccb=1-5&_nc_sid=ae9488&_nc_ohc=GGKcgmIpTbgAX99bfQe&_nc_oc=AQkM9I9T6vq1LQoO_yqPcki0AXd7fM4qgCK6svNSEOofs-i7W5OG2j-Jao5xCj2_1DQ&_nc_ht=scontent.fqfd1-1.fna&oh=d728f7e372c0d3a224111e8f4c090058&oe=61541437"),
    Promo(
        id: DateTime.now().toString(),
        picture:
            "https://scontent.fqfd1-1.fna.fbcdn.net/v/t1.15752-9/241144103_1309798492772396_1527060324115156710_n.png?_nc_cat=100&ccb=1-5&_nc_sid=ae9488&_nc_ohc=GGKcgmIpTbgAX99bfQe&_nc_oc=AQkM9I9T6vq1LQoO_yqPcki0AXd7fM4qgCK6svNSEOofs-i7W5OG2j-Jao5xCj2_1DQ&_nc_ht=scontent.fqfd1-1.fna&oh=d728f7e372c0d3a224111e8f4c090058&oe=61541437"),
  ];
  List<Promo> get promos => [..._promos];
}
