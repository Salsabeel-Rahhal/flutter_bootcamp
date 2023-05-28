import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../widget/custom_bars/home_app_bar.dart';
import 'map2.dart';

class MapPage extends StatefulWidget {
  MapPage({super.key});

  @override
  State<MapPage> createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  final Completer<GoogleMapController> _controller = Completer();
  final controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize:
              const Size.fromHeight(200.0), // here the desired height
          child: HomeAppBar(textController: controller)),
      body: Container(
        child: Stack(
          children: <Widget>[
            RoundedMap(),
            _BuildContainer(),
          ],
        ),
      ),
    );
  }

  Widget _BuildContainer() {
    return Align(
      alignment: Alignment.bottomLeft,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 20),
        height: 150,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: const [
            SizedBox(
              width: 10,
            ),
            // Padding(
            //   padding: const EdgeInsets.all(8),
            //   child: _Boxes(
            //       "https://www.bing.com/images/search?view=detailV2&ccid=jPcJWSca&id=43A691A41CBDE2F5EA21CFB0E77534F80604CC3A&thid=OIP.jPcJWScaZ2CCzecS6Fpt4wAAAA&mediaurl=https%3a%2f%2fwww.halabazaar.com%2fuploads%2fgallery%2f4-%d8%a7%d9%81%d8%b7%d8%a7%d8%b1_%d9%85%d8%b7%d8%b9%d9%85_%d9%88%d8%b1%d8%af_%d9%81%d9%8a_%d8%b1%d9%85%d8%b6%d8%a7%d9%86_2018_-_%d8%b9%d8%b1%d9%88%d8%b6_%d8%b9%d8%b1%d8%b6_%d8%a8%d9%88%d9%81%d9%8a%d9%87_%d8%a7%d9%81%d8%b7%d8%a7%d8%b1_%d9%85%d9%81%d8%aa%d9%88%d8%ad_%d9%85%d8%b7%d8%b9%d9%85_%d9%88%d8%b1%d8%af_%d8%b1%d9%85%d8%b6%d8%a7%d9%86_2018_%d8%a7%d9%84%d8%a7%d8%b1%d8%af%d9%86_Ward_Restaurants_Ramadan_Iftar_Buffet_2018_Amman_Jordan.jpg&cdnurl=https%3a%2f%2fth.bing.com%2fth%2fid%2fR.8cf70959271a676082cde712e85a6de3%3frik%3dOswEBvg0deewzw%26pid%3dImgRaw%26r%3d0&exph=316&expw=474&q=%d9%85%d8%b7%d8%b9%d9%85+%d9%88%d8%b1%d8%af&simid=608008314084070630&FORM=IRPRST&ck=7C45DD5D4263D63F725BB1E870C01218&selectedIndex=9",
            //       30.054216,
            //       31.337261,
            //       "ward"),
            // ),
            //  Padding(
            //   padding: const EdgeInsets.all(8),
            //   child: _Boxes(
            //       "https://www.bing.com/images/search?view=detailV2&ccid=jPcJWSca&id=43A691A41CBDE2F5EA21CFB0E77534F80604CC3A&thid=OIP.jPcJWScaZ2CCzecS6Fpt4wAAAA&mediaurl=https%3a%2f%2fwww.halabazaar.com%2fuploads%2fgallery%2f4-%d8%a7%d9%81%d8%b7%d8%a7%d8%b1_%d9%85%d8%b7%d8%b9%d9%85_%d9%88%d8%b1%d8%af_%d9%81%d9%8a_%d8%b1%d9%85%d8%b6%d8%a7%d9%86_2018_-_%d8%b9%d8%b1%d9%88%d8%b6_%d8%b9%d8%b1%d8%b6_%d8%a8%d9%88%d9%81%d9%8a%d9%87_%d8%a7%d9%81%d8%b7%d8%a7%d8%b1_%d9%85%d9%81%d8%aa%d9%88%d8%ad_%d9%85%d8%b7%d8%b9%d9%85_%d9%88%d8%b1%d8%af_%d8%b1%d9%85%d8%b6%d8%a7%d9%86_2018_%d8%a7%d9%84%d8%a7%d8%b1%d8%af%d9%86_Ward_Restaurants_Ramadan_Iftar_Buffet_2018_Amman_Jordan.jpg&cdnurl=https%3a%2f%2fth.bing.com%2fth%2fid%2fR.8cf70959271a676082cde712e85a6de3%3frik%3dOswEBvg0deewzw%26pid%3dImgRaw%26r%3d0&exph=316&expw=474&q=%d9%85%d8%b7%d8%b9%d9%85+%d9%88%d8%b1%d8%af&simid=608008314084070630&FORM=IRPRST&ck=7C45DD5D4263D63F725BB1E870C01218&selectedIndex=9",
            //       30.054216,
            //       31.337261,
            //       "ward"),
            //  ),
            // Padding(
            //   padding: const EdgeInsets.all(8),
            //   child: _Boxes(
            //       "https://www.bing.com/images/search?view=detailV2&ccid=jPcJWSca&id=43A691A41CBDE2F5EA21CFB0E77534F80604CC3A&thid=OIP.jPcJWScaZ2CCzecS6Fpt4wAAAA&mediaurl=https%3a%2f%2fwww.halabazaar.com%2fuploads%2fgallery%2f4-%d8%a7%d9%81%d8%b7%d8%a7%d8%b1_%d9%85%d8%b7%d8%b9%d9%85_%d9%88%d8%b1%d8%af_%d9%81%d9%8a_%d8%b1%d9%85%d8%b6%d8%a7%d9%86_2018_-_%d8%b9%d8%b1%d9%88%d8%b6_%d8%b9%d8%b1%d8%b6_%d8%a8%d9%88%d9%81%d9%8a%d9%87_%d8%a7%d9%81%d8%b7%d8%a7%d8%b1_%d9%85%d9%81%d8%aa%d9%88%d8%ad_%d9%85%d8%b7%d8%b9%d9%85_%d9%88%d8%b1%d8%af_%d8%b1%d9%85%d8%b6%d8%a7%d9%86_2018_%d8%a7%d9%84%d8%a7%d8%b1%d8%af%d9%86_Ward_Restaurants_Ramadan_Iftar_Buffet_2018_Amman_Jordan.jpg&cdnurl=https%3a%2f%2fth.bing.com%2fth%2fid%2fR.8cf70959271a676082cde712e85a6de3%3frik%3dOswEBvg0deewzw%26pid%3dImgRaw%26r%3d0&exph=316&expw=474&q=%d9%85%d8%b7%d8%b9%d9%85+%d9%88%d8%b1%d8%af&simid=608008314084070630&FORM=IRPRST&ck=7C45DD5D4263D63F725BB1E870C01218&selectedIndex=9",
            //       30.054216,
            //       31.337261,
            //       "ward"),
            // )
          ],
        ),
      ),
    );
  }

  Widget _GoogleMap(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: GoogleMap(
          mapType: MapType.normal,
          initialCameraPosition: const CameraPosition(
              target: LatLng(30.054216, 31.337261), zoom: 15),
          onMapCreated: (GoogleMapController controller) {
            _controller.complete(controller);
          },
          markers: {myMarker, myMarker1}),
    );
  }
}

Marker myMarker = Marker(
  markerId: const MarkerId("marker"),
  position: const LatLng(50.054216, 31.337261),
  infoWindow: const InfoWindow(
    title: "Ward",
  ),
  icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueViolet),
);

Marker myMarker1 = Marker(
  markerId: const MarkerId("marker1"),
  position: const LatLng(30.054216, 31.337261),
  infoWindow: const InfoWindow(
    title: "alreem",
  ),
  icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueViolet),
);
