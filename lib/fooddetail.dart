import 'package:flutter/material.dart';



import 'foodpage.dart';
import 'platform_aware_asset_image.dart';class FoodDetail extends StatefulWidget {
  FoodDetail({Key? key}) : super(key: key);
  static const routeName = '/detail';

  @override
  _FoodDetailState createState() => _FoodDetailState();
}

class _FoodDetailState extends State<FoodDetail> {

  @override
  Widget build(BuildContext context) {
    var detail = ModalRoute.of(context)!.settings.arguments as FoodList;
    return Scaffold(
      appBar: AppBar(
        title:  Text("${detail.nameFood}"),
      ),
      body: Center(
        child: SizedBox(
          height: 400,
          width: 400,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,

            children: [
/*CircleAvatar(
            radius: 90.0,
            backgroundImage: AssetImage('${kIsWeb ? 'assets/' : ''}assets/images/profile.png'),
          ),*/

              Container(
                width: 300.0,
                height: 300.0,
                child: PlatformAwareAssetImage(
                  assetPath: 'assets/images/${detail.imgName}',
                ),
              ),


              SizedBox(height: 10.0),
              Text('${detail.nameFood}',
                  style: TextStyle(fontSize:20)),
              SizedBox(height: 8.0),
              Text('ราคา ${detail.priceFood}', style: TextStyle(fontSize: 20.0)),
            ],
          ),
        )
      ),
    );
  }
}
/*SizedBox(
child: Column(
mainAxisSize: MainAxisSize.min,
mainAxisAlignment: MainAxisAlignment.center,
crossAxisAlignment: CrossAxisAlignment.center,
children: [
/*CircleAvatar(
            radius: 90.0,
            backgroundImage: AssetImage('${kIsWeb ? 'assets/' : ''}assets/images/profile.png'),
          ),*/

Container(
width: 180.0,
height: 180.0,
child: PlatformAwareAssetImage(
assetPath: 'assets/images/${detail.imgName}',
),
),


SizedBox(height: 10.0),
Text('${detail.nameFood}',
style: TextStyle(fontSize:14)),
SizedBox(height: 8.0),
Text('ราคา ${detail.priceFood}', style: TextStyle(fontSize: 14.0)),
],
),
)
*/
