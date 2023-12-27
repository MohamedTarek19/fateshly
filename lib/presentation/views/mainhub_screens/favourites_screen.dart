import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_layout_grid/flutter_layout_grid.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FavouritesScreen extends StatelessWidget {
  const FavouritesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'المفضلة',
            style: TextStyle(fontWeight: FontWeight.bold, fontFamily: 'lama', fontSize: 25),
          ),
          centerTitle: true,
        ),
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 0.78,
          child: Center(
            child: SingleChildScrollView(
              child: LayoutGrid(
                columnSizes: [1.fr,1.fr],
                columnGap: 5,

                rowSizes: const [auto, auto,auto],
                rowGap: 15,
                children: [
                  for (var i = 0; i < 6; i++)
                  SuggestionsItem(image: 'assets/images/image!.png',),
                ],
              ),
            ),
          ),

        ),
      ),
    );
  }
}

class SuggestionsItem extends StatelessWidget {
  SuggestionsItem({
    super.key,
    required this.image,
  });

  String image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 12),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
              ),
              child: Image.asset(
                image,
                fit: BoxFit.cover,
                height: 220,
                width: MediaQuery.of(context).size.width * 0.43,
              ),
            ),
            Positioned(
              bottom: 0,
              child: BlurryContainer(
                padding: EdgeInsets.zero,
                borderRadius: const BorderRadius.only(topLeft: Radius.circular(0), topRight: Radius.circular(0)),
                height: 110,
                width: MediaQuery.of(context).size.width * 0.45,
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.8,
                  padding: EdgeInsets.only(
                    top: 220 * 0.07,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text(
                        'اسم البائع',
                        style: TextStyle(fontSize: 18, fontFamily: 'lama', fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                      SizedBox(height: 5),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.yellow[500],
                            size: 20,
                          ),
                          Text("(+999) 4.8", style: const TextStyle(fontSize: 12, color: Colors.white, fontWeight: FontWeight.w400, fontFamily: 'lama'))
                        ],
                      ),
                      SizedBox(height: 5),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("الرياض, حي النزهة", style: const TextStyle(fontSize: 12, color: Colors.white, fontWeight: FontWeight.w500, fontFamily: 'lama')),
                          SizedBox(width: 1),
                          SvgPicture.asset('assets/images/marker2.svg'),
                          SizedBox(width: 1),
                          Text("1.2 كم", style: const TextStyle(fontSize: 12, color: Colors.white, fontWeight: FontWeight.w500, fontFamily: 'lama')),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              top: 220 * 0.25,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(200),
                child: CircleAvatar(
                  maxRadius: 38,
                  minRadius: 38,
                  child: Image.asset(
                    'assets/images/ic.jpg',
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
