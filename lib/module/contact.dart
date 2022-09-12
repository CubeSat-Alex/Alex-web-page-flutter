import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../component/component.dart';
import '../responsiv.dart';

class Contact extends StatefulWidget {
  const Contact({Key? key}) : super(key: key);

  @override
  State<Contact> createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  late double width, height;

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(
              top: 200, bottom: 80, left: (width / 5), right: (width / 5)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                "About us :",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w700,
                    color: Colors.black87),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                  "We are a team of 5 studying in the Department of Communications Engineering in the Faculty of Engineering, Alexandria University, Egypt.\n\n"
                  "We had a training opportunity at the Egyptian Space Agency during the summer of 2022,and during the training we learned how a satellite works"
                  " and how it is manufactured, and we studied all its subsystems and the missions it performs in space.\n\n"
                  "Our graduation project from EGCA training program was CubeSat (satellite 10x10x10) for remote sensing "
                  "(main task is to take a video or photo at certain time and send it to the ground station)  "
                  "to make this mission we  use ( 6 subsystem , Ground station).",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Colors.black87,
                      height: 1.5)),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
              bottom: 80, left: (width / 5), right: (width / 5)),
          child: const Text(
            "Monitors :",
            style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w700,
                color: Colors.black87),
          ),
        ),
        Responsive(
          mobile: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Container(
                      height: 300,
                      width: 250,
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(Radius.circular(15)),
                        border: Border.all(width: 1, color: Colors.grey),
                        image: const DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('images/mahmoud.jpeg')),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      'Eng: Mahmoud Hassan',
                      style: TextStyle(fontWeight: FontWeight.w600, fontSize: 15),
                    )
                  ],
                ),
                const SizedBox(height: 80),
                Column(
                  children: [
                    Container(
                      height: 300,
                      width: 250,
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(Radius.circular(15)),
                        border: Border.all(width: 1, color: Colors.grey),
                        image: const DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('images/lamiaa.png')),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      'Eng: Lamiaa Saeed',
                      style: TextStyle(fontWeight: FontWeight.w600, fontSize: 15),
                    )
                  ],
                ),
              ],
            ),
          ),
          tablet: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Container(
                    height: 300,
                    width: 250,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(15)),
                      border: Border.all(width: 1, color: Colors.grey),
                      image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('images/mahmoud.jpeg')),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'Eng: Mahmoud Hassan',
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 15),
                  )
                ],
              ),
              const SizedBox(width: 150),
              Column(
                children: [
                  Container(
                    height: 300,
                    width: 250,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(15)),
                      border: Border.all(width: 1, color: Colors.grey),
                      image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('images/lamiaa.png')),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'Eng: Lamiaa Saeed',
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 15),
                  )
                ],
              ),
            ],
          ),
          desktop: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Container(
                    height: 300,
                    width: 250,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(15)),
                      border: Border.all(width: 1, color: Colors.grey),
                      image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('images/mahmoud.jpeg')),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'Eng: Mahmoud Hassan',
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 15),
                  )
                ],
              ),
              const SizedBox(width: 150),
              Column(
                children: [
                  Container(
                    height: 300,
                    width: 250,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(15)),
                      border: Border.all(width: 1, color: Colors.grey),
                      image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('images/lamiaa.png')),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'Eng: Lamiaa Saeed',
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 15),
                  )
                ],
              ),
            ],
          ),
        ),
        const SizedBox(height: 80),
        Padding(
          padding: EdgeInsets.only(
              bottom: 80, left: (width / 5), right: (width / 5)),
          child: const Text(
            "Team :",
            style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w700,
                color: Colors.black87),
          ),
        ),
        const Center(
          child: Text("Team Leader",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w600,
                  color: Colors.black87)),
        ),
        const SizedBox(height: 40),
        const Center(
          child: DetailBox(
            linkedLink:
                'http://www.linkedin.com/in/abdelmenam-tarek-abdelmenam-elbahy',
            name: 'Abdelmenam Tarek Abdelmenam',
            gitLink: 'https://github.com/Abdelmenam-Tarek-Abdelmenam',
            gmailLink: 'moneam.elbahy@gmail.com',
            photo: "images/menam.png",
          ),
        ),
        const SizedBox(height: 80),
        Responsive(
            mobile: Center(
              child: Column(
                  children: const [
                    DetailBox(
                      linkedLink:
                          'https://www.linkedin.com/in/essam-eldin-adel-a944001a0/',
                      name: 'Essam Eldin Adel Abd Aljawad',
                      gitLink: 'https://github.com/Essam-Eldin-Adel',
                      gmailLink: 'essameldin657@gmail.com',
                      photo: "images/essam.png",
                    ),
                    SizedBox(height: 80),
                    DetailBox(
                      linkedLink:
                          'https://www.linkedin.com/in/mohamed-abdel-salam-052b1a20b',
                      name: 'Mohamed Abdelsalam Abdelmotaleb',
                      gitLink: 'https://github.com/mohameed-abdelsalam',
                      gmailLink: 'mohameedabdelsalam24@gmail.com',
                      photo: "images/abd-elsalam.png",
                    ),
                  ]),
            ),
            tablet: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  DetailBox(
                    linkedLink:
                        'https://www.linkedin.com/in/essam-eldin-adel-a944001a0/',
                    name: 'Essam Eldin Adel Abd Aljawad',
                    gitLink: 'https://github.com/Essam-Eldin-Adel',
                    gmailLink: 'essameldin657@gmail.com',
                    photo: "images/essam.png",
                  ),
                  SizedBox(width: 150),
                  DetailBox(
                    linkedLink:
                        'https://www.linkedin.com/in/mohamed-abdel-salam-052b1a20b',
                    name: 'Mohamed Abdelsalam Abdelmotaleb',
                    gitLink: 'https://github.com/mohameed-abdelsalam',
                    gmailLink: 'mohameedabdelsalam24@gmail.com',
                    photo: "images/abd-elsalam.png",
                  ),
                ]),
            desktop: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  DetailBox(
                    linkedLink:
                        'https://www.linkedin.com/in/essam-eldin-adel-a944001a0/',
                    name: 'Essam Eldin Adel Abd Aljawad',
                    gitLink: 'https://github.com/Essam-Eldin-Adel',
                    gmailLink: 'essameldin657@gmail.com',
                    photo: "images/essam.png",
                  ),
                  SizedBox(width: 150),
                  DetailBox(
                    linkedLink:
                        'https://www.linkedin.com/in/mohamed-abdel-salam-052b1a20b',
                    name: 'Mohamed Abdelsalam Abdelmotaleb',
                    gitLink: 'https://github.com/mohameed-abdelsalam',
                    gmailLink: 'mohameedabdelsalam24@gmail.com',
                    photo: "images/abd-elsalam.png",
                  ),
                ])),
        const SizedBox(height: 80),
        Responsive(
            mobile: Center(
              child: Column(
                  children: const [
                    DetailBox(
                      linkedLink: 'https://www.linkedin.com/in/salehafahmy/',
                      name: 'Saleh Ahmed Ibrahim Fahmy',
                      gitLink: 'https://github.com/salehafahmy',
                      gmailLink: 'salehahmedibrahim@gmail.com',
                      photo: "images/saleh.png",
                    ),
                    SizedBox(height: 80),
                    DetailBox(
                      linkedLink:
                          'https://www.linkedin.com/in/ahmed-khaled-037967206/',
                      name: 'Ahmed khaled Ibrahim Elsaid',
                      gitLink: 'https://github.com/Ahmed-Khaled-ibrahem',
                      gmailLink: 'essameldin657@gmail.com',
                      photo: "images/ahmed.png",
                    ),
                  ]),
            ),
            tablet: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  DetailBox(
                    linkedLink: 'https://www.linkedin.com/in/salehafahmy/',
                    name: 'Saleh Ahmed Ibrahim Fahmy',
                    gitLink: 'https://github.com/salehafahmy',
                    gmailLink: 'salehahmedibrahim@gmail.com',
                    photo: "images/saleh.png",
                  ),
                  SizedBox(width: 150),
                  DetailBox(
                    linkedLink:
                        'https://www.linkedin.com/in/ahmed-khaled-037967206/',
                    name: 'Ahmed khaled Ibrahim Elsaid',
                    gitLink: 'https://github.com/Ahmed-Khaled-ibrahem',
                    gmailLink: 'essameldin657@gmail.com',
                    photo: "images/ahmed.png",
                  ),
                ]),
            desktop: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  DetailBox(
                    linkedLink: 'https://www.linkedin.com/in/salehafahmy/',
                    name: 'Saleh Ahmed Ibrahim Fahmy',
                    gitLink: 'https://github.com/salehafahmy',
                    gmailLink: 'salehahmedibrahim@gmail.com',
                    photo: "images/saleh.png",
                  ),
                  SizedBox(width: 150),
                  DetailBox(
                    linkedLink:
                        'https://www.linkedin.com/in/ahmed-khaled-037967206/',
                    name: 'Ahmed khaled Ibrahim Elsaid',
                    gitLink: 'https://github.com/Ahmed-Khaled-ibrahem',
                    gmailLink: 'essameldin657@gmail.com',
                    photo: "images/ahmed.png",
                  ),
                ])),
        const SizedBox(height: 80),
        Padding(
          padding: EdgeInsets.only(  left: (width / 5), right: (width / 5)),
          child: const Text('Supported by :',style: TextStyle(color: Colors.grey,fontSize: 17),),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('images/logo-2.png',width: 150,height: 150,),
            const SizedBox(width: 20),
            Image.asset('images/logo-1.png',width: 150,height: 150,),
            const SizedBox(width: 25),
            Image.asset('images/azhar.png',width: 100,height: 100,),
          ],
        )
      ],
    );
  }
}
