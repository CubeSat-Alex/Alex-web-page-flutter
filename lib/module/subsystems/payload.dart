
import 'package:flutter/material.dart';
import '../../component/constant.dart';
import '../../responsiv.dart';


// ignore: must_be_immutable
class Payload extends StatelessWidget {
  const Payload({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 80,bottom: 80,left:Responsive.isMobile(context)?10:width/(height/70),right:Responsive.isMobile(context)?0:width/(height/70)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:  [
          const Center(
            child: Text("Payload",style: TextStyle(fontSize: 40,fontWeight: FontWeight.w700,color: Colors.black87
            ),),
          ),
          const SizedBox(height: 70,),
          const Text("Introduction: ",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700,color: Colors.black87)),
          const SizedBox(height: 15),
          const Text("The goal of the payload is to performs the mission desired of the satellite which in "
              "our case is to take images and videos to the specific area.\n",
              style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: Colors.black87,height: 1.5
              )),
          const SizedBox(height: 15),
          const Text("Our mission statements: ",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700,color: Colors.black87)),
          const SizedBox(height: 15),
          const Text("Need is Imaging CubeSat to capture images and videos of earth to use it later in various Remote Sensing and Geographic Information Systems \"GIS\" applications."
          "So, we need camera to take images and videos to this area and save this data in local storage then send them to ground station at session time.\n",
              style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: Colors.black87,height: 1.5
              )),
          const SizedBox(height: 15),

          const Text("Hardware :",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700,color: Colors.black87)),
          const SizedBox(height: 15),
          const Text('We used Raspberry pi camera as our payload.'),
          Center(child: Image.asset('images/payload/camera.png',width: 500,height: 300,)),
          const SizedBox(height: 30),
          const Text("Specification of camera:",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700,color: Colors.black87)),
          const SizedBox(height: 30),
          Center(
            child: Container(
                width: 700,
                height: 700,
                child: Image.asset('images/payload/specification.png')),
          ),
        ],
      ),
    );
  }
}
