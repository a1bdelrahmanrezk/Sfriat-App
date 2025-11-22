import 'dart:math';
import 'package:dropdownfield/dropdownfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_credit_card/credit_card_brand.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:intl_phone_field/phone_number.dart';
import 'package:intl/intl.dart';
import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
class verifyBooking extends StatefulWidget {
  const verifyBooking({ Key? key }) : super(key: key);

  @override
  _verifyBookingState createState() => _verifyBookingState();
}

class _verifyBookingState extends State<verifyBooking> with SingleTickerProviderStateMixin{
  final format = DateFormat("yyyy-MM-dd");
  double _rotationFactor = 0;
  // TextEditingController _cardNumberController;
  TextEditingController _cardNumberController = TextEditingController();
  TextEditingController _cvvController = TextEditingController();
  String _cardNumber = '';
  String _cvvNumber = '';
  // AnimationController _flipAnimationControl;
  // Animation<double>_flipAnimation;
  FocusNode _cvvFocus = FocusNode();

  _MyCardsPageState(){
    _cardNumberController = TextEditingController();
    _cvvController = TextEditingController();
    _cvvFocus = FocusNode();
    _cardNumberController.addListener((){
      _cardNumber = _cardNumberController.text;
      setState(() {

      });
    });
    _cvvController.addListener(() {
      _cvvNumber = _cvvController.text;
    });
    setState(() {

    });
    // _cvvFocus.addListener(() {
    //   _cvvFocus.hasFocus?
    //     _flipAnimationControl.forward() : _flipAnimationControl.reverse();
    // });
  }
  // @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   _flipAnimationControl = AnimationController(vsync: this,
  //   duration: Duration(milliseconds: 350),
  //   );
  //   _flipAnimation = Tween<double>(begin: 0,end: 1).animate(_flipAnimationControl)
  //   ..addListener(() {
  //     setState(() {

  //     });
  //   });
  //   // _flipAnimationControl.forward();
  // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 10.0,
        brightness: Brightness.light,
        iconTheme: IconThemeData(color: Colors.blue.withOpacity(0),),
        backgroundColor: Colors.grey.shade200,
        title: Text('Verifying Booking Page',style: TextStyle(color: Colors.black),),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(top: 25,left: 12,right: 12),
          child: Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Contact Details',style: TextStyle(fontSize: 20),),
                  SizedBox(height: 20,),
                  TextField(
                    textInputAction: TextInputAction.done,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        labelText: 'E-mail',
                        hintText: 'username @example.com',
                        hintStyle: TextStyle(color: Colors.grey),
                        border: OutlineInputBorder()
                    ),
                  ),
                  SizedBox(height: 18,),
                  IntlPhoneField(
                    decoration: InputDecoration(
                      labelText: 'Phone Number',
                      hintText: '123-456-789',
                      hintStyle: TextStyle(color: Colors.grey),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(),
                      ),
                    ),
                    initialCountryCode: 'EG',
                    onChanged: (phone) {
                      // print(phone.completeNumber); //get complete number
                      // print(phone.countryCode); // get country code only
                      // print(phone.number); // only phone number
                    },
                  )
                ],
              ),
              Divider(height: 40,thickness: 2,color: Colors.grey,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Passenger Info',style: TextStyle(fontSize: 20),),
                  SizedBox(height: 20,),
                  TextField(
                    textInputAction: TextInputAction.done,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        labelText: 'Given Names',
                        hintText: 'e.g. John Cena',
                        hintStyle: TextStyle(color: Colors.grey),
                        border: OutlineInputBorder()
                    ),
                  ),
                  SizedBox(height: 18.0,),
                  TextField(
                    textInputAction: TextInputAction.done,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        labelText: 'SurNames',
                        hintText: 'e.g. Brown',
                        hintStyle: TextStyle(color: Colors.grey),
                        border: OutlineInputBorder()
                    ),
                  ),
                  SizedBox(height: 20,),
                  DateTimeField(
                    decoration: InputDecoration(
                      labelText: 'Date of Birth',
                      hintText: 'yyyy-MM-dd',
                      hintStyle: TextStyle(color: Colors.grey),
                      floatingLabelStyle: TextStyle(color: Colors.blue),
                      // enabledBorder: OutlineInputBorder(
                      //   borderSide: BorderSide(color: Colors.blue,width: 2),
                      // ),
                      // focusedBorder: OutlineInputBorder(
                      //   borderSide: BorderSide(color: Colors.grey,width: 2),
                      // ),
                      border: OutlineInputBorder(),
                    ),
                    format: format,
                    onShowPicker: (context, currentValue) {
                      return showDatePicker(
                          context: context,
                          firstDate: DateTime(1900),
                          initialDate: currentValue ?? DateTime.now(),
                          lastDate: DateTime(2100));
                    },
                  ),
                  SizedBox(height: 18,),
                  SizedBox(
                    width: 450,
                    child: DropDownField(
                      controller: nationalitiesSelected,
                      hintText: 'Select Nationality',
                      hintStyle: TextStyle(color: Colors.grey),
                      enabled: true,
                      items: nationalities,
                      onValueChanged: (value){
                        setState(() {
                          selectNation = value;
                        });
                      },
                    ),
                  ),
                  SizedBox(height: 20,),
                  SizedBox(
                    width: 450,
                    child: DropDownField(
                      controller: genderSelected,
                      hintText: 'Select Gender',
                      hintStyle: TextStyle(color: Colors.grey),
                      enabled: true,
                      items: genders,
                      onValueChanged: (value){
                        setState(() {
                          selectGender = value;
                        });
                      },
                    ),
                  ),
                  Divider(height: 40,thickness: 2,color: Colors.grey,),
                  Text('Card Details',style: TextStyle(fontSize: 20),),
                  SizedBox(height: 18,),
                  Column(
                    children: [
                      Transform(
                        transform: Matrix4.identity()
                          ..setEntry(3, 2, 0.001)
                          ..rotateY(pi * _rotationFactor),
                        origin: Offset(MediaQuery.of(context).size.width /2,0),
                        child:_rotationFactor < 0.5 ? CardFront(cardNumber: _cardNumber) : CardBack(cvvNumber: _cvvNumber,),
                      ),
                      // Slider(onChanged: (double value){
                      //   setState(() {
                      //   _rotationFactor = value;
                      //   });
                      // },
                      // value: _rotationFactor,
                      // ),
                      Container(
                        padding: EdgeInsets.all(16),
                        child: Column(
                          children: [
                            TextField(
                              decoration: InputDecoration(
                                labelText: 'Card Number',
                                hintText: 'XXXX XXXX XXXX XXXX',
                                border: OutlineInputBorder(),
                              ),
                              controller: _cardNumberController,
                              maxLength: 16,
                            ),
                            TextField(
                              decoration: InputDecoration(
                                  labelText: 'Name on Card',
                                  hintText: 'e.g. Mohsen',
                                  border: OutlineInputBorder()
                              ),
                            ),
                            SizedBox(height:10 ,),
                            Row(
                              children: [
                                Expanded(flex: 2, child: TextField(
                                  decoration: InputDecoration(
                                      labelText: 'Expiry Date',
                                      hintText: 'dd/mm',
                                      border: OutlineInputBorder()
                                  ),
                                ),),
                                SizedBox(width: 32,),
                                Expanded(flex: 1, child: TextField(
                                  decoration: InputDecoration(
                                    hintText: 'xxx',
                                    labelText: 'CVV',
                                    border: OutlineInputBorder(),
                                  ),
                                  controller: _cvvController,
                                  focusNode: _cvvFocus,
                                ),
                                ),
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 20.0,),
                  //--------------------------
                  Container(
                    margin: EdgeInsets.only(left: 60,),
                    child: RaisedButton(
                      onPressed: () {
                        // Navigate Function to Any Page
                        // Navigator.push(context, MaterialPageRoute(builder: (context)=> loadingPage()));
                      },
                      textColor: Colors.white,
                      padding: const EdgeInsets.all(0.0),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0)),
                      child: Container(
                        decoration: const BoxDecoration(
                            gradient: LinearGradient(
                              colors: <Color>[
                                Color(0xFF0D47A1),
                                Color(0xFF1976D2),
                                Color(0xFF42A5F5),
                              ],
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(10.0))),
                        padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
                        child: Text('VERIFY BOOKING',
                            style: TextStyle(fontSize: 20)),
                      ),
                    ),
                  ),
                  SizedBox(height: 30,)
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

}
String selectNation = "";
final nationalitiesSelected = TextEditingController();
List<String> nationalities =[
  "Afghan",
  "Albanian",
  "Algerian	",
  "Austrian",
  "Brazilian",
  "Chilean",
  "Chinese",
  "Colombian",
  "Egyptian",
  "Dominican",
  "Czech",
  "Iraqi",
  "Indian",
  "British",
  "Emirati",
  "American",
  "Zimbabwean",
];
String selectGender = "";
final genderSelected = TextEditingController();
List<String> genders =[
  "Male",
  "Female",
  "Others",
];
//Front Card
class CardFront extends StatelessWidget {

  final String cardNumber;
  String _formattedCardNumber = '*';
  CardFront({Key? key, required this.cardNumber}) : super(key: key){
    _formattedCardNumber = this.cardNumber.padRight(16,'*');
    _formattedCardNumber = _formattedCardNumber.replaceAllMapped(RegExp(r".{4}"), (match) => "${match.group(0)} ");
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 500,
      height: 300,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        elevation: 8,
        margin: EdgeInsets.all(16),
        child: Padding(
          padding: EdgeInsets.all(32),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(alignment: Alignment.topRight, child: Image.asset('assets/images/visa1.png')),
              SizedBox(height: 32,),
              Text(
                _formattedCardNumber,
                textAlign: TextAlign.start,
                style: TextStyle(fontSize: 22,letterSpacing: 2,
                    fontWeight: FontWeight.w500,
                    shadows: [Shadow(
                        color: Colors.black12,offset: Offset(2, 1)
                    )]),),
              SizedBox(height: 32,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Card Holder',),
                      Text('Moha Kolkasa',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Expiry Date'),
                      Text('10/24',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
//Back View
class CardBack extends StatelessWidget {

  final String cvvNumber;

  const CardBack({Key? key, required this.cvvNumber}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Transform(
      transform: Matrix4.identity()
        ..setEntry(3, 2, 0.001)
        ..rotateY(pi * 1),
      origin: Offset(MediaQuery.of(context).size.width /2,0),
      child: Container(
        width: 500,
        height: 300,
        color: Colors.white,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          elevation: 8,
          margin: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 32,),
              Container(
                height: 60,
                color: Colors.black87,
              ),
              SizedBox(height: 16,),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Row(
                      children: [
                        Container(
                          alignment: Alignment.centerLeft,
                          height: 30,
                          width: 200,
                          color: Colors.grey,
                        ),
                        SizedBox(width: 32,),
                        Text(cvvNumber,style: TextStyle(fontStyle: FontStyle.italic,fontWeight: FontWeight.bold,fontSize: 18),),
                      ],
                    ),
                    SizedBox(height: 8,),
                    Container(
                      height: 16,
                      color: Colors.black12,
                    ),
                    SizedBox(height: 8,),
                    Container(
                      height: 16,
                      color: Colors.black12,
                    ),
                    SizedBox(height: 8,),
                    Container(
                      height: 16,
                      width: 150,
                      color: Colors.black12,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}