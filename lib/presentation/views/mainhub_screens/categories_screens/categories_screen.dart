import 'package:fateshny/presentation/views/mainhub_screens/categories_screens/filtered_items.dart';
import 'package:flutter/material.dart';
import 'package:flutter_layout_grid/flutter_layout_grid.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          title: Text("الأقسام", style: TextStyle(fontFamily: 'lama', fontWeight: FontWeight.bold, fontSize: 25)),
          centerTitle: true,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios),
          ),
        ),
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 0.9,
          child: SingleChildScrollView(
            child: Center(
              child: LayoutGrid(
                textDirection: TextDirection.rtl,
                columnSizes: [2.fr, 2.fr, 2.fr],
                columnGap: 5,
                rowSizes: const [auto, auto, auto],
                rowGap: 20,
                children: [
                  InkWell(
                    child: Categories(
                      icon: 'assets/images/bake.svg',
                      title: 'مخبوزات',
                    ),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return FilteredItems(title: 'مخبوزات');
                      },));
                    },
                  ),
                  InkWell(
                    child: Categories(
                      icon: 'assets/images/health.svg',
                      title: 'صحة',
                    ),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return FilteredItems(title: 'صحة');
                      },));
                    },
                  ),
                  InkWell(
                    child: Categories(
                      icon: 'assets/images/furniture.svg',
                      title: 'أثاث',
                    ),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return FilteredItems(title: 'أثاث');
                      },));
                    },
                  ),
                  InkWell(
                    child: Categories(
                      icon: 'assets/images/sebaka.svg',
                      title: 'سباكة',
                    ),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return FilteredItems(title: 'سباكة');
                      },));
                    },
                  ),
                  InkWell(
                    child: Categories(
                      icon: 'assets/images/dehanat.svg',
                      title: 'دهانات',
                    ),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return FilteredItems(title: 'دهانات');
                      },));
                    },
                  ),
                  InkWell(
                    child: Categories(
                      icon: 'assets/images/camera.svg',
                      title: 'كاميرات',
                    ),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return FilteredItems(title: 'كاميرات');
                      },));
                    },
                  ),
                  InkWell(
                    child: Categories(
                      icon: 'assets/images/electronic.svg',
                      title: 'أجهزة كهربائية',
                    ),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return FilteredItems(title: 'أجهزة كهربائية');
                      },));
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class Categories extends StatelessWidget {
  const Categories({
    super.key,
    required this.icon,
    required this.title,
  });

  final String icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 12, right: 12),
      child: Column(
        children: [
          Material(
            borderRadius: BorderRadius.circular(30),
            color: Colors.transparent,
            elevation: 10,
            child: SvgPicture.asset(
              icon,
              height: 100,
              width: 100,
            ),
          ),
          const SizedBox(
            height: 7,
          ),
          Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontFamily: 'lama',
              fontSize: 16,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
