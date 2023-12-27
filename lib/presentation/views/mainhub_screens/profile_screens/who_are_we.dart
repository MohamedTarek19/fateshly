import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WhoAreWe extends StatelessWidget {
  const WhoAreWe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          title: Text("البيانات الشخصية", style: TextStyle(fontWeight: FontWeight.w600,fontFamily: 'lama',fontSize: 20,)),
          centerTitle: true,
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: Container(
          height: MediaQuery.of(context).size.height*0.92,
          width:  MediaQuery.of(context).size.width,
          margin: EdgeInsets.only(right: 10,top: 30,left: 10),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SvgPicture.asset("assets/images/LogoInApp1.svg"),
                Divider(
                  height: 20,
                  color: Colors.red,
                ),
                SizedBox(height: 50,),
                Text('لوريم إيبسوم دولور سيت أميت، consectetur adipiscing إيليت. ,Etiam eu turpis molestie، '
                    'القول المأثور هو، ماتيس يخبرنا. ,ومع ذلك، فإن الكرامة، والتواضع غير المحدود،'
                    ' يبرز دون الحاجة إلى طلب، ولكن بين الفينة والأخرى يخبرنا أنه يبرز. ,Maecenas eget condimentum velit،'
                    ' sit amet feugiat lectus. ,فئة مناسبة من النشاط الاجتماعي والعاطفي لكل منا، لأفكارنا. '
                    ',Praesent auctor Purus luctus enim egestas، ac scelerisque ante pulvinar،'
                    ' condimentum velit، sit amet feugiat lectus.'
                    ' ,فئة مناسبة من النشاط الاجتماعي والعاطفي لكل منا، لأفكارنا. '
                    ',المؤلف الحالي Purus luctus enim egestas، ac scelerisque '
                    'ante.', textAlign: TextAlign.center,style: TextStyle(fontFamily: 'lama',fontWeight: FontWeight.w400,fontSize: 19,height: 1.3),),

              ],
            ),
          ),
        ),

      ),
    );
  }
}
