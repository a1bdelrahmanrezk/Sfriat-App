import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:safaryatproject/theHomePage.dart';
import 'package:safaryatproject/widgets/palette.dart';
import 'widgets/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PaymentMethods extends StatefulWidget {
  const PaymentMethods({ Key? key }) : super(key: key);

  @override
  _PaymentMethodsState createState() => _PaymentMethodsState();
}

class _PaymentMethodsState extends State<PaymentMethods> {
  final paymentTypes =[
    CheckPayment(title: 'Master Card'),
    CheckPayment(title: 'Visa Card'),
    CheckPayment(title: 'Bank Transfer'),
    CheckPayment(title: 'Cash Money'),
  ];
  Widget theSingleBox(CheckPayment checkPayment) => CheckboxListTile(
    // controlAffinity: ListTileControlAffinity.leading,
    value: checkPayment.value,
    title: Text(checkPayment.title,style: TextStyle(fontSize: 20.0),),
    onChanged: (value) => setState(()=> checkPayment.value = value! ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Payment Methods'),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=> theHomePage()));
          },
          icon: Icon(Icons.arrow_back),
        ),
        actions: [
          IconButton(
            onPressed: (){
              //Navigate Function to Verify The Payment
            },
            icon: Icon(Icons.done_rounded),
          ),
        ],
        backgroundColor: Colors.blue[800],
        elevation: 15.0,
      ),
      body: ListView(
        padding: EdgeInsets.all(12.0),
        children: [
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.only(left:8.0),
            child: Text('Preffered Payment Types',style: TextStyle(fontSize: 22),),
          ),
          SizedBox(height: 20.0,),
          Container(
              padding: EdgeInsets.only(left: 12),
              child: Text('Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages,',style: TextStyle(color: Colors.grey),)),
          SizedBox(height: 45.0,),
          ...paymentTypes.map(theSingleBox).toList(),
        ],
      ),
    );
  }
}

class CheckPayment{
  final String title;
  bool value;
  CheckPayment({
    required this.title,
    this.value = false,
  });
}