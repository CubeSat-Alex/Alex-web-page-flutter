import 'dart:async';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:visibility_detector/visibility_detector.dart';

class RowButton extends StatefulWidget {
  final String textOfBox;
  final Function()? onTap;
  final bool selectButton;
  final double width;
  const RowButton({
    Key? key,
    required this.textOfBox,
    required this.onTap,
    required this.selectButton,
    required this.width,
  }) : super(key: key);
  @override
  _RowButtonState createState() => _RowButtonState();
}

class _RowButtonState extends State<RowButton> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.width,
      height: 40,

      child: ElevatedButton(
        style: ButtonStyle(
          overlayColor: MaterialStateProperty.all<Color>(Colors.transparent),
            shadowColor: MaterialStateProperty.all<Color>(Colors.transparent),
            backgroundColor:
                MaterialStateProperty.all<Color>(Colors.transparent),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                side:  BorderSide(color: widget.selectButton?Colors.white:Colors.transparent, width: 1),
                borderRadius: BorderRadius.circular(15.0),
              ),
            )),
        child: Text(widget.textOfBox,
            style:  TextStyle(
              color: widget.selectButton?Colors.white:Colors.grey,
            )),
        onPressed: widget.onTap,
      ),
    );
  }
}

class ColumnButton extends StatefulWidget {
  final String textOfBox;
  final Function()? onTap;
  final bool selectButton;
  final double width;
  final double size;
  const ColumnButton({
    Key? key,
    required this.textOfBox,
    required this.onTap,
    required this.selectButton,
    required this.width,
    required this.size,
  }) : super(key: key);
  @override
  _ColumnButtonState createState() => _ColumnButtonState();
}

class _ColumnButtonState extends State<ColumnButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 40,
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(width: 1.0, color: widget.selectButton?Colors.white:Colors.transparent),
          bottom: BorderSide(width: 1.0, color: widget.selectButton?Colors.white:Colors.transparent),
        ),

      ),
      child: ElevatedButton(
        style: ButtonStyle(
            minimumSize: MaterialStateProperty.all<Size>(Size.zero), // Set this// and this
            padding:MaterialStateProperty.all<EdgeInsetsGeometry>(EdgeInsets.zero) ,
            overlayColor: MaterialStateProperty.all<Color>(Colors.transparent),
            shadowColor: MaterialStateProperty.all<Color>(Colors.transparent),
            backgroundColor:
            MaterialStateProperty.all<Color>(Colors.transparent),

            ),
        child: Align(
          alignment: Alignment.centerLeft,
          child: Text(widget.textOfBox,
              style:  TextStyle(
                color: widget.selectButton?Colors.white:Colors.grey,
                fontSize: widget.size,
              )),
        ),
        onPressed: widget.onTap,
      ),
    );
  }
}

class DetailBox extends StatefulWidget {
  final String name;
  final String gmailLink;
  final String linkedLink;
  final String gitLink;
  final String photo;
  final String state;
  const DetailBox({Key? key, required this.name, required this.gmailLink, required this.linkedLink, required this.gitLink, required this.photo, required this.state}) : super(key: key);

  @override
  State<DetailBox> createState() => _DetailBoxState();
}

class _DetailBoxState extends State<DetailBox> {
  bool visibleText = false, changePhoto = true;
  @override
  void dispose()
  {
    super.dispose();// and does it matter if i dispose the controller before this line or after this line.
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 302,
      height: 352,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(15)),
        border: Border.all(
          color: Colors.black87.withOpacity(0.5),
          width: 1,
        ),
      ),
      child: VisibilityDetector(
        key:  Key(widget.state),
        onVisibilityChanged: (visibilityInfo) {
          var visiblePercentage = visibilityInfo.visibleFraction * 100;
           setState(() {
             if(visiblePercentage==100)
             {
               changePhoto = false;
             }
             else
             {
               visibleText=false;
               changePhoto = true;
             }
           });
        },
        child: Column(
          children: [
            AnimatedContainer(
              duration: const Duration(milliseconds: 500),
              width: changePhoto ? 300 : 120,
              height: changePhoto ? 350 : 200,
              curve: Curves.linearToEaseOut,
              onEnd: () {
                setState(() {
                  if(!changePhoto) {
                    visibleText = true;
                  }
                });
              },
              child: Padding(
                padding: EdgeInsets.only(top: changePhoto ? 0 : 50),
                child: changePhoto ?Container(
                        decoration:   BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(15)),
                          image: DecorationImage(
                              fit:BoxFit.cover,
                              image: AssetImage(widget.photo)),
                        ),
                      ):Container(
              decoration:   BoxDecoration(
              shape: BoxShape.circle,
                image: DecorationImage(
                    fit:BoxFit.cover,
                    image: AssetImage(widget.photo)),
              ),
      ),
              )
            ),
            Visibility(
              visible: visibleText,
              child: Padding(
                padding:
                    const EdgeInsets.only(top: 35,left: 20,right: 20),
                child: ShowUp(
                    delay: 100,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                             Center(
                              child: Text(widget.name,
                                style: const TextStyle(
                                    fontWeight: FontWeight.w600, fontSize: 15),
                              ),
                            ),
                        const SizedBox(height: 17),
                        Padding(
                          padding: const EdgeInsets.all(20),
                          child: Row(
                            children:  [
                              LinkButton(changeState: 3, link: widget.linkedLink,),
                              const SizedBox(width: 10),
                              LinkButton(changeState: 2, link: 'mailto:${widget.gmailLink}}?subject=This is Subject Title&body=This is Body of Email',),
                              const SizedBox(width: 10),
                              LinkButton(changeState: 1, link: widget.gitLink),
                            ],
                          ),
                        ),

                      ],
                    )),
              ),
            ),
          ],
        ),
      )
    );
  }
}

class ShowUp extends StatefulWidget {
  final Widget child;
  final int delay;

  // ignore: use_key_in_widget_constructors
  const ShowUp({ required this.child,  required this.delay});

  @override
  _ShowUpState createState() => _ShowUpState();
}

class _ShowUpState extends State<ShowUp> with TickerProviderStateMixin {
  late AnimationController _animController;
  late Animation<Offset> _animOffset;
late Timer timer ;
  @override
  void initState() {
    super.initState();

    _animController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 300));
    final curve =
        CurvedAnimation(curve: Curves.decelerate, parent: _animController);
    _animOffset =
        Tween<Offset>(begin: const Offset(0.0, 0.35), end: Offset.zero)
            .animate(curve);

    // ignore: unnecessary_null_comparison
    if (widget.delay != null) {
       timer  = Timer(Duration(milliseconds: widget.delay), () {
        _animController.forward();
      });
    }
  }

  @override
  void dispose() {
    timer.cancel();
    _animController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      child: SlideTransition(
        position: _animOffset,
        child: widget.child,
      ),
      opacity: _animController,
    );
  }
}

class LinkButton extends StatefulWidget {
  final String link;
  final int changeState;

  const LinkButton({Key? key,
    required this.link,
    required this.changeState}) : super(key: key);

  @override
  State<LinkButton> createState() => _LinkButtonState();
}

class _LinkButtonState extends State<LinkButton> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 65,
      height: 30,
      child: ElevatedButton(
        style: ButtonStyle(
          padding: MaterialStateProperty.all<EdgeInsetsGeometry>(const EdgeInsets.symmetric(horizontal: 9)) ,
          elevation:MaterialStateProperty.all<double>(0) ,
            shadowColor: MaterialStateProperty.all<Color>(Colors.transparent),
            backgroundColor:
            MaterialStateProperty.all<Color>(Colors.transparent),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                side:  BorderSide(color: (widget.changeState==1)?Colors.black54:((widget.changeState==2)?Colors.red:Colors.blueAccent), width: 1),
                borderRadius: BorderRadius.circular(10.0),
              ),
            )),
        child: (widget.changeState==1)?Image.asset('images/contact/Github-Logo.png',fit: BoxFit.cover,):
        ((widget.changeState==2)?Image.asset('images/contact/Google-Logo.png',fit: BoxFit.cover):Image.asset('images/contact/Linkedin-Logo.png',fit: BoxFit.cover)),
        // ignore: deprecated_member_use
        onPressed: () =>launch(widget.link)
      ),
    );
  }
}


class CustomDropdownButton2 extends StatelessWidget {
  final String hint;
  final String? value;
  final List<String> dropdownItems;
  final ValueChanged<String?>? onChanged;
  final Function(bool) onMenuChange;
  final Alignment? hintAlignment;
  final Alignment? valueAlignment;
  final double? buttonHeight, buttonWidth;
  final EdgeInsetsGeometry? buttonPadding;
  final BoxDecoration? buttonDecoration;
  final int? buttonElevation;
  final Widget? icon;
  final double? iconSize;
  final Color? iconEnabledColor;
  final Color? iconDisabledColor;
  final double? itemHeight;
  final EdgeInsetsGeometry? itemPadding;
  final double? dropdownHeight, dropdownWidth;
  final BoxDecoration? dropdownDecoration;
  final int? dropdownElevation;
  final Radius? scrollbarRadius;
  final bool changeState;
  final bool changeIcon;
  const CustomDropdownButton2({
    required this.hint,
    required this.value,
    required this.dropdownItems,
    required this.onChanged,
    required this.onMenuChange,
    required this.changeState,
    required this.changeIcon,
    this.hintAlignment,
    this.valueAlignment,
    this.buttonHeight,
    this.buttonWidth,
    this.buttonPadding,
    this.buttonDecoration,
    this.buttonElevation,
    this.icon,
    this.iconSize,
    this.iconEnabledColor,
    this.iconDisabledColor,
    this.itemHeight,
    this.itemPadding,
    this.dropdownHeight,
    this.dropdownWidth,
    this.dropdownDecoration,
    this.dropdownElevation,
    this.scrollbarRadius,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DropdownButtonHideUnderline(
      child: DropdownButton2(
        //To avoid long text overflowing.
        isExpanded: true,
        hint: Container(
          alignment: hintAlignment,
          child: Text(
            hint,
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
            style: const TextStyle(
              fontSize: 14,
              color: Colors.grey,
            ),
          ),
        ),
        style:  const TextStyle(color: Colors.black),
        value: value,
        items: dropdownItems
            .map((item) => DropdownMenuItem<String>(
          value: item,
          child: Container(
            alignment: valueAlignment,
            child: Text(
              item,
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
              style:  const TextStyle(
                  fontSize: 14,
                  color: Colors.white
              ),
            ),
          ),
        ))
            .toList(),
        onChanged: onChanged,
        onMenuStateChange: onMenuChange,

        icon: changeIcon?const Icon(Icons.keyboard_arrow_up_outlined,size: 20):const Icon(Icons.arrow_forward_ios_outlined,size: 12),
        iconSize: 12,
        iconEnabledColor: Colors.grey,
        iconDisabledColor: Colors.grey,
        buttonHeight: 40,
        buttonWidth:  140,
        buttonPadding: const EdgeInsets.only(left: 14, right: 14),
        buttonDecoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14),
          border: Border.all(
            color: changeState?Colors.white:Colors.transparent,
          ),
        ),
        buttonElevation: 0,
        itemHeight: 35,
        itemPadding:const EdgeInsets.only(left: 14, right: 14),
        //Max height for the dropdown menu & becoming scrollable if there are more items. If you pass Null it will take max height possible for the items.
        dropdownMaxHeight:230,
        dropdownWidth: 130,
        dropdownDecoration: const BoxDecoration(
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(14) , bottomRight: Radius.circular(14)),
            color: Colors.black38
        ),
        dropdownElevation: 0 ,
        scrollbarRadius: const Radius.circular(40),
        //Null or Offset(0, 0) will open just under the button. You can edit as you want.
        dropdownOverButton: false, //Default is false to show menu below button
      ),
    );
  }
}


class OverviewText extends StatelessWidget {
  final String state;
  final BuildContext context;
  const OverviewText({Key? key, required this.state, required this.context,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width=MediaQuery.of(context).size.width;
    return SizedBox(
      child: (state=='column')?
          Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:  [
          const Text("Alex-Cube is a 1U Cubesat satellite (10 * 10 * 10) dedicated to LEO region  and supported by the Egyptian Space Agency."
              "it is Imaging Cubesat to capture images and videos of earth to use it later, and it's composed of six Subsystems named : ",
              style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: Colors.black87,height: 1.5
              )),
          const Padding(
            padding: EdgeInsets.only(left: 20,top: 7),
            child: Text( "•  Telemetry tracking and monitoring (TT&M)\n"
                "•  communication System (CS)\n"
                "•  Attitude Determination Control System (ADCS)\n"
                "•  On Board Computer (OBC)\n"
                "•  Payload (Payload)\n"
                "•  Structure\n",
                style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: Colors.black87,height: 1.5
                )),
          ),
          const SizedBox(height: 10),
          Center(
            child: Container(
              height: 300,
              width: 400,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(15)),
                border: Border.all(width: 1, color: Colors.grey),
                image: const DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('images/overview/cube.jpg')),
              ),
            ),
          ),
        ],
      ):
          Row(
        children: [
          SizedBox(
            width:(width/2.5) ,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text("Alex-sat is a 2U Cubesat satellite (20 * 10 * 10) dedicated to LEO region  and supported by the Egyptian Space Agency."
                    "it is Imaging Cubesat to capture images and videos of earth to use it later, and it's composed of six Subsystems named : ",
                    style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: Colors.black87,height: 1.5
                    )),
                Padding(
                  padding: EdgeInsets.only(left: 25,top: 7),
                  child: Text( "•  Telemetry tracking and monitoring (TT&M)\n"
                      "•  communication System (CS)\n"
                      "•  Attitude Determination Control System (ADCS)\n"
                      "•  On Board Computer (OBC)\n"
                      "•  Payload (Payload)\n"
                      "•  Structure\n",
                      style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: Colors.black87,height: 1.5
                      )),
                ),
              ],
            ),
          ),
          const SizedBox(width: 20),
          Container(
            height: 300,
            width: 400,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(15)),
              border: Border.all(width: 1, color: Colors.grey),
              image: const DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('images/overview/cube.jpg')),
            ),
          ),
        ],
      )
    );
  }
}

class OBCSpi extends StatelessWidget {
  final String state;
  const OBCSpi({Key? key, required this.state}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width=MediaQuery.of(context).size.width;
    return SizedBox(
        child: (state=='column')?
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:  [
            RichText(
              text: const TextSpan(
                // Here is the explicit parent TextStyle
                style: TextStyle(
                    fontSize: 15,
                    color: Colors.black87,
                    height: 1.5
                ),
                children: <TextSpan>[
                  TextSpan(text:'Responsible for the communication with other modules. It ensures a good connection '
                      'with other systems of the satellite and allows them to send information we use SPI'
                      'as serial communication protocol to interface the OBC with the other subsystems.\n\n'),
                  TextSpan(text: 'Why SPI:  ', style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(text: 'The raspberry pi simple SPI interface (4 pins) which help me to interface with '
                      'many slaves (subsystems in our case) and transfer data between them with high speed '
                      '( The fastest reported working speed is 32 MHz but we work with 2 MHZ to be suitable '
                      'for all other subsystems) The SPI can choose which slave can receive or send using '
                      'the SS (we use GPIO pins as a SS pin) \n\n'),
                  TextSpan(text: '*The OBC connected to all subsystems using star connection.\n\n', style: TextStyle(fontWeight: FontWeight.bold))
                ],
              ),
            ),
            Center(child: Image.asset('images/obc/spi.png',)),
          ],
        ):
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            SizedBox(
              width:(width/2.5) ,
              child: RichText(
                text: const TextSpan(
                  // Here is the explicit parent TextStyle
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.black87,
                      height: 1.5
                  ),
                  children: <TextSpan>[
                    TextSpan(text:'Responsible for the communication with other modules. It ensures a good connection '
                        'with other systems of the satellite and allows them to send information we use SPI'
                        'as serial communication protocol to interface the OBC with the other subsystems.\n\n'),
                    TextSpan(text: 'Why SPI:  ', style: TextStyle(fontWeight: FontWeight.bold)),
                    TextSpan(text: 'The raspberry pi simple SPI interface (4 pins) which help me to interface with '
                        'many slaves (subsystems in our case) and transfer data between them with high speed '
                        '( The fastest reported working speed is 32 MHz but we work with 2 MHZ to be suitable '
                        'for all other subsystems) The SPI can choose which slave can receive or send using '
                        'the SS (we use GPIO pins as a SS pin) \n\n'),
                    TextSpan(text: '*The OBC connected to all subsystems using star connection.\n\n', style: TextStyle(fontWeight: FontWeight.bold))

                  ],
                ),
              ),
            ),

            Center(child: Image.asset('images/obc/spi.png',)),
          ],
        )
    );
  }
}
class OBCStorage extends StatelessWidget {
  final String state;
  const OBCStorage({Key? key, required this.state}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width=MediaQuery.of(context).size.width;
    return SizedBox(
        child: (state=='column')?
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:  [
             Padding(
              padding: EdgeInsets.only(left: (width/50),top: 7),
              child: const Text( "•  Telemetry reading from all sensors once is about 264 bytes.\n"
                  "•   One video with duration 5 seconds is 130 kb on average .\n"
                  "•   The average image size on disk is 56 kb .\n",
                  style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: Colors.black87,height: 1.7
                  )),
            ),
            Center(child: Image.asset('images/obc/storage.png',width: 500,height: 150,)),

          ],
        ):
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width:(width/2.9) ,
              child:Padding(
                padding: EdgeInsets.only(left: (width/50),top: 7),
                child: const Text( "•  Telemetry reading from all sensors once is about 264 bytes.\n"
                    "•   One video with duration 5 seconds is 130 kb on average .\n"
                    "•   The average image size on disk is 56 kb .\n",
                    style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: Colors.black87,height: 1.7
                    )),
              ),
            ),
            Center(child: Image.asset('images/obc/storage.png',width: 500,height: 150,)),
          ],
        )
    );
  }
}



