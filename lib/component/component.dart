import 'dart:async';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

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
  const DetailBox({Key? key, required this.name, required this.gmailLink, required this.linkedLink, required this.gitLink, required this.photo}) : super(key: key);

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
      child: MouseRegion(
        onEnter: (event) => {
          setState(() {
            changePhoto = false;
          })
        },
        onExit: (event) => {
          setState(() {
            visibleText=false;
            changePhoto = true;
          })
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
      ),
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
        child: (widget.changeState==1)?Image.asset('images/Github-Logo.png',fit: BoxFit.cover,):
        ((widget.changeState==2)?Image.asset('images/Google-Logo.png',fit: BoxFit.cover):Image.asset('images/Linkedin-Logo.png',fit: BoxFit.cover)),
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

  const CustomDropdownButton2({
    required this.hint,
    required this.value,
    required this.dropdownItems,
    required this.onChanged,
    required this.changeState,
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
              style: const TextStyle(
                  fontSize: 14,
                  color: Colors.white
              ),
            ),
          ),
        ))
            .toList(),
        onChanged: onChanged,

        icon: const Icon(Icons.arrow_forward_ios_outlined),
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
            color: Colors.black26
        ),
        dropdownElevation: 0 ,
        scrollbarRadius: const Radius.circular(40),
        //Null or Offset(0, 0) will open just under the button. You can edit as you want.
        dropdownOverButton: false, //Default is false to show menu below button
      ),
    );
  }
}