import 'package:flutter/material.dart';

import '../../component/component.dart';
import '../../component/constant.dart';
import '../../responsiv.dart';


// ignore: must_be_immutable
class OBC extends StatelessWidget {
  const OBC({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 80,bottom: 80,left:Responsive.isMobile(context)?10:width/(height/70),right:Responsive.isMobile(context)?0:width/(height/70)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:  [
          const Center(
            child: Text("OBC",style: TextStyle(fontSize: 40,fontWeight: FontWeight.w700,color: Colors.black87
            ),),
          ),
          const SizedBox(height: 70,),
          const Text("Introduction:",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700,color: Colors.black87)),
          const SizedBox(height: 15),
          const Text("The On Board Computer (OBC), is the main brain of the satellite and has different missions such as control,"
              " sending orders and monitor to all other subsystems.  reception and storage of information of all  subsystems in"
              " CubeSat then sending this information  to Ground Station.\n",
              style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: Colors.black87,height: 1.5
              )),
          const SizedBox(height: 20),
          const Text("Subsystem division :",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700,color: Colors.black87)),
          const SizedBox(height: 15),
          const Text("The OBC can be divided into :",
              style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: Colors.black87,height: 1.5
              )),
          RichText(
            text: const TextSpan(
              // Here is the explicit parent TextStyle
              style: TextStyle(
                  fontSize: 15,
                  color: Colors.black87,
                  height: 1.5
              ),
              children: <TextSpan>[
                TextSpan(text: 'Controller:  ', style: TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: 'processing unit of the OBC dedicated to the Satellite Management.'
                    'It has to manage the data from other modules collected through the interface and to use it to give orders.'
                    'It takes commands from the communication subsystem, decode it and start execute the command..\n\n'),
                TextSpan(text: 'Interface:  ', style: TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: 'responsible for the communication with other modules. It ensures a good connection with other '
                    'systems of the satellite and allows them to send information we use SPI as serial communication protocol '
                    'to interface the OBC with the other subsystems '
                ),

              ],
            ),
          ),
          const SizedBox(height: 35),
          const Text("Hardware :",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700,color: Colors.black87)),
          const SizedBox(height: 20),
          Center(child: Image.asset('images/obc/raspberry.png',width: 500,height: 300,)),
          const Text("To select the best microcontroller, we have to take care about many things such as power consumption, "
              "temperature, operating voltage, I/O and serial bus compatibility to avoid some issues."
              "In our case we use raspberry pi 3 model B+ as the OBC.\n",
              style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: Colors.black87,height: 1.5
              )),
          const Text("Software :",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700,color: Colors.black87)),
          const SizedBox(height: 15),
          const Text("The software component controls the processor, its operation and control functionality. "
              "in real time using threads. The RPI can handle 269 threads including system threads according to htop.\n",
              style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: Colors.black87,height: 1.5
              )),
          const SizedBox(height: 20),
          const Text("OBC Interface :",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700,color: Colors.black87)),
          const SizedBox(height: 15),
          Responsive.isMobile(context) ?const OBCSpi(state: 'column')
              :(Responsive.isTablet(context) ? const OBCSpi(state: 'column')
              : const OBCSpi(state: 'row')),
          const Text("The OBC has 4 different missions  :",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700,color: Colors.black87)),
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
                TextSpan(text: 'Data reception:  ', style: TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: 'Receive packet from the communication system on the SSP format.'
                    'The OBC start to encode the packet to extract the command and argument From data after decoding\n\n'),
                TextSpan(text: 'Control:  ', style: TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: 'After extracting the command and argument the OBC start executing the command. '
                    'commands that can receive from the ground station and the execution flow.\n\n'),
                TextSpan(text: 'Housekeeping data:  ', style: TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: 'The OBC collect telemetry data from the subsystem and save it in'
                    'the local storage. Sit helps to monitor the health of the satellite -'
                    'every 2 seconds the OBC start to send orders to every subsystem'
                    'to send all telemetry data saved with the system. Then the OBC'
                    'check the data (if the data valid it saves it to the local files)\n\n'
                    '* Logs data: Logs is the most important data that help me to monitor the '
                    'performance of the OBC. By saving everything OBC execute and'
                    'the state of it so the engineers can see it and check the'
                    'performance of the OBC. The logs saved in local storage with'
                    'data Timestamp, orbit number , log details , state\n\n'
                ),
                TextSpan(text: 'Storage:  ', style: TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: 'The raspberry pi has Micro SD port for loading your operating system and storing data ( in our case we used 32GB SD'
                    'card but after install the OS and some software the available is 23 GB):'),
              ],
            ),
          ),
          Responsive.isMobile(context) ?const OBCStorage(state: 'column')
              :(Responsive.isTablet(context) ? const OBCStorage(state: 'column')
              : const OBCStorage(state: 'row')),
        ],
      ),
    );
  }
}
