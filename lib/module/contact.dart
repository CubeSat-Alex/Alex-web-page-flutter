import 'package:flutter/material.dart';
import '../component/component.dart';
import '../responsiv.dart';

class Contact extends StatefulWidget {
  const Contact({Key? key}) : super(key: key);
  @override
  State<Contact> createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  late double width,height;
  @override
  Widget build(BuildContext context) {
    width=MediaQuery.of(context).size.width;
    height=MediaQuery.of(context).size.height;
    return Column(
          children: [
            Padding(
              padding:  EdgeInsets.only(top: 120,bottom: 80,left: (width/5),right: (width/5)),
              child: Column(
                children: const [
                  Center(
                    child: Text("Who are we",style: TextStyle(fontSize: 40,fontWeight: FontWeight.w700,color: Colors.black87
                    ),),
                  ),
                  SizedBox(height: 20,),
                  Text("We are a team of 5 studying in the Department of Communications Engineering in the Faculty of Engineering, Alexandria University, Egypt.\n\n"
                      "We made CubeSat (satellite 10x10x10) for remote sensing (main task is to take a video or photo at certain time and send it to the ground station)  "
                      "to make this mission we  use ( 5 subsystem , OBC , Ground station (python desktop app), structure ).",
                      style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: Colors.black87
                      )),
                ],
              ),
            ),
            const Text("Team Leader",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w600,color: Colors.black87)),
            const SizedBox(height: 20),
            const DetailBox(linkedLink: 'http://www.linkedin.com/in/abdelmenam-tarek-abdelmenam-elbahy', name: 'Abdelmenam Tarek Abdelmenam', gitLink: 'https://github.com/Abdelmenam-Tarek-Abdelmenam', gmailLink: 'moneam.elbahy@gmail.com',photo: "images/menam.JPG",),
            const SizedBox(height: 80),
            Responsive(mobile: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children:  const [
                  DetailBox(linkedLink: 'https://www.linkedin.com/in/essam-eldin-adel-a944001a0/', name: 'Essam Eldin Adel Abd Aljawad', gitLink: 'https://github.com/Essam-Eldin-Adel', gmailLink: 'essameldin657@gmail.com',photo: "images/essam.png",),
                  SizedBox(height: 80),
                  DetailBox(linkedLink: 'https://www.linkedin.com/in/ahmed-khaled-037967206/', name: 'Ahmed khaled Ibrahim Elsaid', gitLink: 'https://github.com/Ahmed-Khaled-ibrahem', gmailLink: 'essameldin657@gmail.com',photo: "images/ahmed.png",),

                ]), tablet: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:  const [
                  DetailBox(linkedLink: 'https://www.linkedin.com/in/essam-eldin-adel-a944001a0/', name: 'Essam Eldin Adel Abd Aljawad', gitLink: 'https://github.com/Essam-Eldin-Adel', gmailLink: 'essameldin657@gmail.com',photo: "images/essam.png",),
                  SizedBox(width: 150),
                  DetailBox(linkedLink: 'https://www.linkedin.com/in/ahmed-khaled-037967206/', name: 'Ahmed khaled Ibrahim Elsaid', gitLink: 'https://github.com/Ahmed-Khaled-ibrahem', gmailLink: 'essameldin657@gmail.com',photo: "images/ahmed.png",),

                ]), desktop: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:  const [
                  DetailBox(linkedLink: 'https://www.linkedin.com/in/essam-eldin-adel-a944001a0/', name: 'Essam Eldin Adel Abd Aljawad', gitLink: 'https://github.com/Essam-Eldin-Adel', gmailLink: 'essameldin657@gmail.com',photo: "images/essam.png",),
                  SizedBox(width: 150),
                  DetailBox(linkedLink: 'https://www.linkedin.com/in/ahmed-khaled-037967206/', name: 'Ahmed khaled Ibrahim Elsaid', gitLink: 'https://github.com/Ahmed-Khaled-ibrahem', gmailLink: 'essameldin657@gmail.com',photo: "images/ahmed.png",),

                ])),
            const SizedBox(height: 80),
            Responsive(mobile: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children:  const [
                  DetailBox(linkedLink: 'https://www.linkedin.com/in/salehafahmy/', name: 'Saleh Ahmed Ibrahim Fahmy', gitLink: 'https://github.com/salehafahmy', gmailLink: 'salehahmedibrahim@gmail.com',photo: "images/saleh.png",),
                  SizedBox(height: 80),
                  DetailBox(linkedLink: 'https://www.linkedin.com/in/mohamed-abdel-salam-052b1a20b', name: 'Mohamed Abdelsalam Abdelmotaleb', gitLink: 'https://github.com/mohameed-abdelsalam', gmailLink: 'mohameedabdelsalam24@gmail.com',photo: "images/abd-elsalam.png",),
                ]), tablet: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:  const [
                  DetailBox(linkedLink: 'https://www.linkedin.com/in/salehafahmy/', name: 'Saleh Ahmed Ibrahim Fahmy', gitLink: 'https://github.com/salehafahmy', gmailLink: 'salehahmedibrahim@gmail.com',photo: "images/saleh.png",),
                  SizedBox(width: 150),
                  DetailBox(linkedLink: 'https://www.linkedin.com/in/mohamed-abdel-salam-052b1a20b', name: 'Mohamed Abdelsalam Abdelmotaleb', gitLink: 'https://github.com/mohameed-abdelsalam', gmailLink: 'mohameedabdelsalam24@gmail.com',photo: "images/abd-elsalam.png",),
                ]), desktop: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:  const [
                  DetailBox(linkedLink: 'https://www.linkedin.com/in/salehafahmy/', name: 'Saleh Ahmed Ibrahim Fahmy', gitLink: 'https://github.com/salehafahmy', gmailLink: 'salehahmedibrahim@gmail.com',photo: "images/saleh.png",),
                  SizedBox(width: 150),
                  DetailBox(linkedLink: 'https://www.linkedin.com/in/mohamed-abdel-salam-052b1a20b', name: 'Mohamed Abdelsalam Abdelmotaleb', gitLink: 'https://github.com/mohameed-abdelsalam', gmailLink: 'mohameedabdelsalam24@gmail.com',photo: "images/abd-elsalam.png",),
                ])),
            const SizedBox(height: 80),
          ],
    );
  }
}

