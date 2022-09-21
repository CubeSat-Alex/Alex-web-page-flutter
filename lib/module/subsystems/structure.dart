import 'package:flutter/material.dart';
import '../../component/constant.dart';
import '../../responsiv.dart';


// ignore: must_be_immutable
class Structure extends StatelessWidget {
  const Structure({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 120,bottom: 80,left:Responsive.isMobile(context)?10:width/(height/70),right:Responsive.isMobile(context)?0:width/(height/70)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:  [
          const Center(
            child: Text("Structure",style: TextStyle(fontSize: 40,fontWeight: FontWeight.w700,color: Colors.black87
            ),),
          ),
          const SizedBox(height: 70,),
          const Text("Introduction:",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700,color: Colors.black87)),
          const SizedBox(height: 15),
          const Text("We made a 3d structure using Fusion360 program for payload and cube. in the structure we put 2 Arduino "
              "and Raspberry pi as a stack, a veroboard contain components of subsystems.\n",
              style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: Colors.black87,height: 1.5
              )),
          const SizedBox(height: 30),
          const Text("payload subsystem:",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700,color: Colors.black87)),
          const SizedBox(height: 15),
          Row(
            children: [
              Image.asset('images/Structure/payload-1.jpg',width: 400,height: 400,),
              Image.asset('images/Structure/payload-2.jpg',width: 400,height: 400,),
              Image.asset('images/Structure/payload-3.jpg',width: 400,height: 400,)
            ],
          ),
          Center(child: Image.asset('images/Structure/payload-4.png',width: 400,height: 400,)),
          const SizedBox(height: 30),
          const Text("Body subsystem:",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700,color: Colors.black87)),
          const SizedBox(height: 15),
          Center(child: Image.asset('images/Structure/cube.jpg',width: 500,height: 400,)),
        ],
      ),
    );
  }
}
