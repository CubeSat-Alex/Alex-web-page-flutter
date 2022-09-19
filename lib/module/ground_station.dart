import 'package:flutter/material.dart';
import '../../component/constant.dart';
import '../../responsiv.dart';


// ignore: must_be_immutable, camel_case_types
class Ground_Station extends StatelessWidget {
  const Ground_Station({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 120,bottom: 80,left:Responsive.isMobile(context)?10:width/(height/70),right:Responsive.isMobile(context)?0:width/(height/70)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:  [
          const Center(
            child: Text("Ground Station",style: TextStyle(fontSize: 40,fontWeight: FontWeight.w700,color: Colors.black87
            ),),
          ),
          const SizedBox(height: 70,),
          const Text("Introduction: ",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700,color: Colors.black87)),
          const SizedBox(height: 15),
          const Text("Desktop application (python) act as ground station. "
              "it's show data tables, graphs and send commands to cube sate and receive the telemetry, "
              "logs and payload files (images and videos)."
              "We found that the python Tkinter is the best what we can use to integrate with raspberry pi\n",
              style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: Colors.black87,height: 1.5
              )),
          const SizedBox(height: 30),
          const Text("Dashboard Screen:",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700,color: Colors.black87)),
          const SizedBox(height: 15),
          Center(child: Image.asset('images/dashboard.png',width: 800,height: 500,)),

          const Text("Sun tracker widget: ",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700,color: Colors.black87)),
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
                TextSpan(text: "indication about the sun position or in our case its indication for direction of the biggest amount of light around.\n"
                    "We can use 4 LDR to know about sun direction and control the solar panels towards it.\n"),
                TextSpan(text: 'Note:  ', style: TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: 'Solar panels will be in the next version.\n\n'),
                TextSpan(text: 'Examples:  ', style: TextStyle(fontWeight: FontWeight.bold)),
              ],
            ),
          ),
          Center(child: Image.asset('images/sun.png',width: 800,height: 500,)),

          const Text("Session time widget: ",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700,color: Colors.black87)),
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
                TextSpan(text: 'Indicate when the next session will be active. \n'),
                TextSpan(text: 'Examples:  ', style: TextStyle(fontWeight: FontWeight.bold)),
              ],
            ),
          ),
          Center(child: Image.asset('images/session.png',width: 800,height: 500,)),

          const Text("Commands screen: ",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700,color: Colors.black87)),
          const SizedBox(height: 15),
          const Text("Listing commands and batches start from this screen.\n"
              "there is multiple of commands can be sent to CubeSat through our application such as.\n"
          ),
          Padding(
            padding: EdgeInsets.only(left: (width/50),top: 7),
            child: const Text( "•  Get time difference.\n"
                "•  Set on-board time.\n"
                "•  Set session time.\n",
                style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: Colors.black87,height: 1.7
                )),
          ),
          Center(child: Image.asset('images/command.png',width: 800,height: 500,)),

          const Text("Long term plan: ",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700,color: Colors.black87)),
          const SizedBox(height: 15),
          const Text("Picking the start session time and end session time then Listing "
              "the long term plan and sent it to the cube during session time.\n"),
          Center(child: Image.asset('images/long-term.png',width: 800,height: 500,)),

          const Text("Download Payload files: ",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700,color: Colors.black87)),
          const SizedBox(height: 15),
          const Text("Downloads section is the part which responsible for playing downloaded "
              "files ( images and videos ) and sorting them.\n"),
          Center(child: Image.asset('images/payload.png',width: 800,height: 500,)),

          const Text("Logs: ",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700,color: Colors.black87)),
          const SizedBox(height: 15),
          const Text("Logs sections responsible for showing all collected logs by OBC and downloaded at last session connection.\n"),
          Center(child: Image.asset('images/logs.png',width: 800,height: 500,)),

        ],
      ),
    );
  }
}
