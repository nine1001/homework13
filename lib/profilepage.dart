import 'package:flutter/material.dart';
import 'package:homework13/platform_aware_asset_image.dart';

class ProfilePage extends StatefulWidget {
  ProfilePage({Key? key}) : super(key: key);


  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          /*CircleAvatar(
            radius: 90.0,
            backgroundImage: AssetImage('${kIsWeb ? 'assets/' : ''}assets/images/profile.png'),
          ),*/
          ClipRRect(
            borderRadius: BorderRadius.circular(90.0),
            child: Container(
              width: 180.0,
              height: 180.0,
              child: PlatformAwareAssetImage(
                assetPath: 'assets/images/profile.jpg',
              ),
              ),
            ),

          SizedBox(height: 10.0),
          Text('Thanachit Thammasalee',
              style: TextStyle(fontSize:14)),
          SizedBox(height: 8.0),
          Text('thanachit210@hotmail.com', style: TextStyle(fontSize: 14.0)),
        ],
      ),
    );
  }
}
