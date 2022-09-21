import 'package:flutter/material.dart';
import '../component/component.dart';
import '../component/constant.dart';
import '../responsiv.dart';

class Contact extends StatefulWidget {
  const Contact({Key? key}) : super(key: key);

  @override
  State<Contact> createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return Padding(
      padding: EdgeInsets.only(top: 80,bottom: 80,left:Responsive.isMobile(context)?10:width/(height/120),right:Responsive.isMobile(context)?0:width/(height/120)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:  [
              const Center(
                child: Text("Contact",style: TextStyle(fontSize: 40,fontWeight: FontWeight.w700,color: Colors.black87
                ),),
              ),
              const SizedBox(height: 50),
              const Text(
                "About us :",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w700,
                    color: Colors.black87),
              ),
              const SizedBox(
                height: 20,
              ),
              RichText(
                text:  const TextSpan(
                  // Here is the explicit parent TextStyle
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.black87,
                      height: 1.5
                  ),
                  children: <TextSpan>[
                    TextSpan(text: 'We are a team of 5 studying in the Department of Communications Engineering in the Faculty of Engineering, Alexandria University, Egypt.\n'),
                    TextSpan(text: 'We had a training opportunity at the Egyptian Space Agency during the summer of 2022,and during the training we learned how a satellite works '
                        'and how it is manufactured, and we studied all its subsystems and the missions it performs in space.\n'
                    ),
                    TextSpan(text: 'Our graduation project from EGCA training program was CubeSat (satellite 10x10x10) for remote sensing '
                        '(main task is to take a video or photo at certain time and send it to the ground station)  '
                        'to make this mission we  use ( 6 subsystem , Ground station).\n'
                    ),

                  ],
                ),
              ),
              const SizedBox(height: 15),
            ],
          ),
          const Text(
            "Mentors :",
            style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w700,
                color: Colors.black87),
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
                              image: AssetImage('images/contact/mahmoud.jpeg')),
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
                              image: AssetImage('images/contact/lamiaa.png')),
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
                            image: AssetImage('images/contact/mahmoud.jpeg')),
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
                            image: AssetImage('images/contact/lamiaa.png')),
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
                            image: AssetImage('images/contact/mahmoud.jpeg')),
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
                            image: AssetImage('images/contact/lamiaa.png')),
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
          const SizedBox(height: 30),
          const Text(
            "Team :",
            style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w700,
                color: Colors.black87),
          ),
          const Center(
            child: Text("Team Leader",
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                    color: Colors.black87)),
          ),
          const SizedBox(height: 30),
           const Center(
            child: DetailBox(
              linkedLink:
                  'http://www.linkedin.com/in/abdelmenam-tarek-abdelmenam-elbahy',
              name: 'Abdelmenam Tarek Abdelmenam',
              gitLink: 'https://github.com/Abdelmenam-Tarek-Abdelmenam',
              gmailLink: 'moneam.elbahy@gmail.com',
              photo: "images/contact/menam.png",
              state: 'men3m',
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
                        photo: "images/contact/essam.png",
                        state: 'essam',
                      ),
                      SizedBox(height: 80),
                      DetailBox(
                        linkedLink:
                            'https://www.linkedin.com/in/mohamed-abdel-salam-052b1a20b',
                        name: 'Mohamed Abdelsalam Abdelmotaleb',
                        gitLink: 'https://github.com/mohameed-abdelsalam',
                        gmailLink: 'mohameedabdelsalam24@gmail.com',
                        photo: "images/contact/abd-elsalam.png",
                        state: 'mohamed',

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
                      photo: "images/contact/essam.png",
                      state: 'essam',

                    ),
                    SizedBox(width: 150),
                    DetailBox(
                      linkedLink:
                          'https://www.linkedin.com/in/mohamed-abdel-salam-052b1a20b',
                      name: 'Mohamed Abdelsalam Abdelmotaleb',
                      gitLink: 'https://github.com/mohameed-abdelsalam',
                      gmailLink: 'mohameedabdelsalam24@gmail.com',
                      photo: "images/contact/abd-elsalam.png",
                      state: 'mohamed',
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
                      photo: "images/contact/essam.png",
                      state: 'essam',

                    ),
                    SizedBox(width: 150),
                    DetailBox(
                      linkedLink:
                          'https://www.linkedin.com/in/mohamed-abdel-salam-052b1a20b',
                      name: 'Mohamed Abdelsalam Abdelmotaleb',
                      gitLink: 'https://github.com/mohameed-abdelsalam',
                      gmailLink: 'mohameedabdelsalam24@gmail.com',
                      photo: "images/contact/abd-elsalam.png",
                      state: 'mohamed',

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
                        photo: "images/contact/saleh.png",
                        state: 'saleh',

                      ),
                      SizedBox(height: 80),
                      DetailBox(
                        linkedLink:
                            'https://www.linkedin.com/in/ahmed-khaled-037967206/',
                        name: 'Ahmed khaled Ibrahim Elsaid',
                        gitLink: 'https://github.com/Ahmed-Khaled-ibrahem',
                        gmailLink: 'ahmedkhaledibrahem@gmail.com',
                        photo: "images/contact/ahmed.png",
                        state: 'ahmed',

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
                      photo: "images/contact/saleh.png",
                      state: 'saleh',

                    ),
                    SizedBox(width: 150),
                    DetailBox(
                      linkedLink:
                          'https://www.linkedin.com/in/ahmed-khaled-037967206/',
                      name: 'Ahmed khaled Ibrahim Elsaid',
                      gitLink: 'https://github.com/Ahmed-Khaled-ibrahem',
                      gmailLink: 'ahmedkhaledibrahem@gmail.com',
                      photo: "images/contact/ahmed.png",
                      state: 'ahmed',

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
                      photo: "images/contact/saleh.png",
                      state: 'saleh',

                    ),
                    SizedBox(width: 150),
                    DetailBox(
                      linkedLink:
                          'https://www.linkedin.com/in/ahmed-khaled-037967206/',
                      name: 'Ahmed khaled Ibrahim Elsaid',
                      gitLink: 'https://github.com/Ahmed-Khaled-ibrahem',
                      gmailLink: 'ahmedkhaledibrahem@gmail.com',
                      photo: "images/contact/ahmed.png",
                      state: 'ahmed',

                    ),
                  ])),
          const SizedBox(height: 80),
          const Text('Supported by :',style: TextStyle(color: Colors.grey,fontSize: 17),),
          Responsive.isMobile(context)?Column(
            children: [
              Row(
               mainAxisAlignment: MainAxisAlignment.center,

                children: [Image.asset('images/contact/logo-azhar.png',width: 100,height: 100,),
                  const SizedBox(width: 30),
                  Image.asset('images/contact/logo-egsa.png',width: 150,height: 150,),
                  ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,

                children: [
                  Image.asset('images/contact/logo-eut.png',width: 150,height: 150,),
                  const SizedBox(width: 35),
                  Image.asset('images/contact/logo-alex.png',width: 150,height: 150,),
                ],
              )
            ],
          ):Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('images/contact/logo-azhar.png',width: 100,height: 100,),
              const SizedBox(width: 30),
              Image.asset('images/contact/logo-egsa.png',width: 150,height: 150,),
              const SizedBox(width: 35),
              Image.asset('images/contact/logo-eut.png',width: 150,height: 150,),
              const SizedBox(width: 35),
              Image.asset('images/contact/logo-alex.png',width: 150,height: 150,),
            ],
          )
        ],
      ),
    );
  }
}
