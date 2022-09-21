import 'package:flutter/material.dart';
import '../../component/constant.dart';
import '../../responsiv.dart';


// ignore: must_be_immutable
class ADCS extends StatelessWidget {
  const ADCS({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 120,bottom: 80,left:Responsive.isMobile(context)?10:width/(height/70),right:Responsive.isMobile(context)?0:width/(height/70)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:  [
          const Center(
            child: Text("ADCS",style: TextStyle(fontSize: 40,fontWeight: FontWeight.w700,color: Colors.black87
            ),),
          ),
          const SizedBox(height: 70,),
          const Text("Introduction:",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700,color: Colors.black87)),
          const SizedBox(height: 15),
          const Text("Its function is to get the satellite into the correct orbit and keep it there but in our case, we used this subsystem to rotate the camera mechanism and monitor CubeSat rotation.\n",
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
                TextSpan(text: 'The controller will collect and process data.\n'),
                TextSpan(text: ' 2- ', style: TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: 'CTRL have to be able to determine the necessary correction to be able to stabilize the motor.\n'),
                TextSpan(text: ' 3- ', style: TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: ', Receive orders from the OBC and processes it to individually power our actuators (Servo motors).\n\n'),

              ],
            ),
          ),
          const SizedBox(height: 15),
          const Text("The ADCS consists of three main parts:",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700,color: Colors.black87)),
          const SizedBox(height: 15),
          Center(
            child: Container(
              height: 150,
              width: 620,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(
                      'images/adcs/parts.png'),
                ),
              ),
            ),
          ),
          const SizedBox(height: 25),
          const Text("Controller:",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700,color: Colors.black87)),
          const SizedBox(height: 15),
          const Text('We used Arduino uno as micro controller'),
          Center(child: Image.asset('images/arduino.png',width: 400,height: 300,)),
          const Text("Actuation:",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700,color: Colors.black87)),
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
                TextSpan(text: 'DC motor: ', style: TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: 'TThe DC motor constantly controls the rotation of the cubesat, which it moves around itself.\n\n'
                ),
                TextSpan(text: 'Servo motor: ', style: TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: 'The servo motor control the position of camera which it moves it after receive command from OBC with certain position.\n\n'
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('images/adcs/dc.jpg',width: 200,height: 200,),
              const SizedBox(width: 70),
              Image.asset('images/adcs/servo.jpg',width: 200,height: 200,),
            ],
          ),
          const SizedBox(height: 30),
          const Text("Camera positions vs angles:",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700,color: Colors.black87)),
          const SizedBox(height: 15),
          Center(child: Image.asset('images/adcs/moveCam.png',width: 600,height: 600,)),
          const Text("Flowchart:",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700,color: Colors.black87)),
          Center(child: Image.asset('images/adcs/flowchart.png',width: 600,height: 450,)),
        ],
      ),
    );
  }
}
