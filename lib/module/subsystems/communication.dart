
import 'package:flutter/material.dart';
import '../../component/constant.dart';
import '../../responsiv.dart';


// ignore: must_be_immutable
class Communication extends StatelessWidget {
  const Communication({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 80,bottom: 80,left:Responsive.isMobile(context)?10:width/(height/70),right:Responsive.isMobile(context)?0:width/(height/70)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:  [
          const Center(
            child: Text("Communication",style: TextStyle(fontSize: 40,fontWeight: FontWeight.w700,color: Colors.black87
            ),),
          ),
          const SizedBox(height: 70,),
          const Text("Introduction: ",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700,color: Colors.black87)),
          const SizedBox(height: 15),
          const Text("CS responsible for communicates with the Ground Control Station. It sends data to the Earth and receive command. "
              "The data sent to the Ground Control Station are transmitted by the CS. And, in the same way, orders sent from Earth to CS "
              "are transmit to the OBC. \n",
              style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: Colors.black87,height: 1.5
              )),
          const SizedBox(height: 25),
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
                TextSpan(text: 'communicate with ground station and vice versa.\n'),
                TextSpan(text: ' 2- ', style: TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: 'Receive command from ground station.\n'),
                TextSpan(text: ' 3- ', style: TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: 'Transmit telemetry data, and mission data (images and videos).\n\n'),
                TextSpan(text: '* All data transmitted between commutation and ground station are in the SSP packet format .', style: TextStyle(fontWeight: FontWeight.bold)),

              ],
            ),
          ),
          const SizedBox(height: 40),
          const Text("SSP version-2 :",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700,color: Colors.black87)),
          const SizedBox(height: 15),
          const Text("SSP  intended for master-slave communication on single-master serial buses, especially within small spacecraft.\n",
              style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: Colors.black87,height: 1.5
              )),
          Center(child: Column(
            children: [
              Image.asset('images/communication/ssp.png',width: 800,height: 100,),
              const Text('(SSP Frame)')
            ],
          )),
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
                TextSpan(text: ' Fend: ', style: TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: 'The fend is the start and end delimiter (Fend:0XC0).\n\n'),
                TextSpan(text: ' Destination:  ', style: TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: 'A one byte source address, identifying the destination device of packet.\n\n'),
                TextSpan(text: ' Source: ', style: TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: 'A one byte source address, identifying the sender device of packet.\n\n'),
                TextSpan(text: ' Type: ', style: TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: 'ype is a byte containing two fields as SSP packet type for sending command.\n\n'),
                TextSpan(text: ' Data:  ', style: TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: 'no limit in data length and if  data contain the FEND, we replace FEND with “FESC and  TFEND” and if data'
                'contain FESC byte replace FESC with “FESC” with “FESC and TFESC”.\n'
                    '(where FEND : 0xc0, FESC: 0xDB , TFEND : 0xDC , TFESC : 0XDD) .\n\n'
                ),
                TextSpan(text: ' CRC0 & CRC1:  ', style: TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: '16 bit CCITT polynomial using as Error detection for detect if any error in data.\n\n'),

              ],
            ),
          ),
          const Text("Hardware:",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700,color: Colors.black87)),
          const SizedBox(height: 15),
          Center(child: Image.asset('images/communication/wifi.png',width: 500,height: 300,)),
          const SizedBox(height: 15),
          const Text("We used Wi-Fi module of raspberry pi for some reason such as :\n",
              style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: Colors.black87,height: 1
              )),
          Padding(
            padding: EdgeInsets.only(left: (width/50),bottom: 15),
            child: const Text( "•  OBC microcontroller is raspberry pi so it was compatible with it and Raspberry Pi 3B+: 2.4 & 5GhZ, 802.11 b/g/n/ac.\n"
                "•  The 802.11ac 5GHz protocol delivers 433 to 6933 Mbit/s, and the 802.11n protocol between 72 to 600 Mbit/s.\n"
                "•  Wi-Fi signals will usually reach about 150 feet or over 45 meters for a 2.4Ghz frequency and about 50 feet or over 15 meters for a 5Ghz frequency.\n",
                style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: Colors.black87,height: 1.7
                )),
          ),
          const Text("Software:",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700,color: Colors.black87)),
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
                TextSpan(text: ' Socket programing concept: ', style: TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: 'We used the common type of socket applications are client-server applications, '
                    'where one side acts as the (server ground station) and waits for connections from clients ( The raspberry pi ) .'
                    'When the session opened the. Raspberry pi connects to the ground station and start listening for data. .\n\n'),
                TextSpan(text: ' Why should you use TCP?\n', style: TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: 'Is reliable: Packets dropped in the network are detected and retransmitted by the sender .'
                    'Has in-order data delivery: Data is read by your application in the order it was written by the sender.\n\n'),

              ],
            ),
          ),
          const SizedBox(height: 15),
          const Text("Data Rates:",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700,color: Colors.black87)),
          const SizedBox(height: 10),
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
                TextSpan(text: 'Average time for sending command from ground station to CubeSat is 0.01 sec.\n'),
                TextSpan(text: ' 2- ', style: TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: 'Average time for sending command and waiting for acknowledgment is 0.23 sec.\n'),
                TextSpan(text: ' 3- ', style: TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: 'Average time difference between OBC and GS is about 0.8 sec.\n'),
                TextSpan(text: ' 4- ', style: TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: 'Average time for Sending telemetry data collected once is 0.02 sec.\n'),
                TextSpan(text: ' 5- ', style: TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: 'Average time for download 1 video 5 sec (100 frame) to send is 9.5 sec.'),
                TextSpan(text: ' 6- ', style: TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: 'Average time for download 1 image 5  to send is 25 sec.'),
                TextSpan(text: ' 7- ', style: TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: 'Average time for Sending 1 log takes about 0.008 seconds.'),

              ],
            ),
          ),
        ],
      ),
    );
  }
}
