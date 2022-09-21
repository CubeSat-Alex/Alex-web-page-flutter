import 'package:flutter/material.dart';
import '../../component/constant.dart';
import '../../responsiv.dart';


// ignore: must_be_immutable
class Telemetry extends StatelessWidget {
  const Telemetry({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 80,bottom: 80,left:Responsive.isMobile(context)?10:width/(height/70),right:Responsive.isMobile(context)?0:width/(height/70)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:  [
          const Center(
            child: Text("TT&M Board",style: TextStyle(fontSize: 40,fontWeight: FontWeight.w700,color: Colors.black87),),
          ),
          const SizedBox(height: 70,),
          const Text("Introduction:",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700,color: Colors.black87)),
          const SizedBox(height: 15),
          const Text("Telemetry Tracking and monitor (TT&M) board is responsible for satellite housekeeping and data gathering from all sensors for malfunctions detection.\n",
              style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: Colors.black87,height: 1.5
              )),
          const SizedBox(height: 15),
          const Text("Main purposes: ",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700,color: Colors.black87)),
          const SizedBox(height: 15),
          RichText(
            text: const TextSpan(
              // Here is the explicit parent TextStyle
              style: TextStyle(
                  fontSize: 15,
                  color: Colors.black87,
                  height: 1.5
              ),
              children: <TextSpan>[
                TextSpan(text: ' 1- ', style: TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: 'receiving data from sensors .\n'),
                TextSpan(text: ' 2- ', style: TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: 'save telemetry data at its ram .\n'),
                TextSpan(text: ' 3- ', style: TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: 'transmitting that data to OBC with SPI bus connection when the OBC ask for it .\n\n'),

              ],
            ),
          ),
          const Text("The TT&M consists of two main parts:",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700,color: Colors.black87)),
          const SizedBox(height: 15),
          Center(
            child: Container(
              height: 130,
              width: 450,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(
                      'images/tt&m/parts.png'),
                ),
              ),
            ),
          ),
          const SizedBox(height: 25),
          const Text("Controller:",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700,color: Colors.black87)),
          const SizedBox(height: 15),
          const Text('We used Arduino uno as micro controller'),
          Center(child: Image.asset('images/arduino.png',width: 400,height: 300,)),
          const Text("sensors:",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700,color: Colors.black87)),
          const SizedBox(height: 15),
          RichText(
            text: const TextSpan(
              // Here is the explicit parent TextStyle
              style: TextStyle(
                  fontSize: 15,
                  color: Colors.black87,
                  height: 1.5
              ),
              children: <TextSpan>[
                TextSpan(text: 'BMP180: ', style: TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: 'we use it to calculate pressure and Temperature degree and altitude.\n\n'
                ),
                TextSpan(text: 'Ublox NEO-6m GPS Module: ', style: TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: 'we use it to track the location of the GPS by calculate Altitude, longitude and latitude.\n\n'
                ),
                TextSpan(text: 'Four LDR: ', style: TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: 'we  use it as sun sensors.\n\n'
                ),
              ],
            ),
          ),
          Responsive.isMobile(context)?Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('images/tt&m/bmp.jpg',width: 170,height: 170,),
                  const SizedBox(width: 65,),
                  Image.asset('images/tt&m/gps.jpg',width: 170,height: 170,),
                ],
              ),
              Image.asset('images/tt&m/ldr.jpg',width: 170,height: 170,)
            ],
          ):Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('images/tt&m/bmp.jpg',width: 170,height: 170,),
              const SizedBox(width: 65,),
              Image.asset('images/tt&m/gps.jpg',width: 170,height: 170,),
              const SizedBox(width: 25,),
              Image.asset('images/tt&m/ldr.jpg',width: 170,height: 170,)
            ],
          ),
          const SizedBox(height: 30),
          const Text("Flowchart:",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700,color: Colors.black87)),
          const SizedBox(height: 15),
          Center(child: Image.asset('images/tt&m/flowchart.png',width: 500,height: 400,)),
        ],
      ),
    );
  }
}
