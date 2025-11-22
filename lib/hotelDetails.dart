import 'package:flutter/material.dart';
import 'package:safaryatproject/hotelSearch.dart';
import 'package:safaryatproject/paymentMethods.dart';

class hotelDetailes extends StatefulWidget {
  const hotelDetailes({ Key? key }) : super(key: key);

  @override
  _hotelDetailesState createState() => _hotelDetailesState();
}

class _hotelDetailesState extends State<hotelDetailes> {
  final String image='https://images.pexels.com/photos/164595/pexels-photo-164595.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
              foregroundDecoration: BoxDecoration(
                color: Colors.black26,
              ),
              height: 400.0,
              child: Image.network(image,fit: BoxFit.cover,)),
          SingleChildScrollView(
            padding: EdgeInsets.only(top: 16.0,),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 250.0,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text('Manga Hotel\nEgypt',
                    style: TextStyle(color: Colors.white,fontSize: 28.0,fontWeight: FontWeight.bold),),
                ),
                Row(
                  children: [
                    SizedBox(width: 16.0,),
                    Container(
                        padding: EdgeInsets.symmetric(horizontal: 16.0,vertical: 8.0),
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(20.0)
                        ),
                        child: Text('8.4/82 Reviews',style: TextStyle(color: Colors.white,fontSize: 13.0),)
                    ),
                    Spacer(),
                    IconButton(
                        onPressed: (){
                          // Navigate Function
                        },
                        color: Colors.white,
                        icon: Icon(Icons.favorite_border_rounded)
                    ),
                  ],
                ),
                //----------------------------------------------------
                Container(
                  padding: EdgeInsets.symmetric(vertical:30.0,horizontal: 20.0),
                  color: Colors.white,
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Icon(Icons.star,color: Colors.blue,),
                                      Icon(Icons.star,color: Colors.blue,),
                                      Icon(Icons.star,color: Colors.blue,),
                                      Icon(Icons.star,color: Colors.blue,),
                                      Icon(Icons.star_border,color: Colors.blue,),
                                    ],
                                  ),
                                  Text.rich(TextSpan(children: [
                                    WidgetSpan(child: Icon(Icons.timer,color: Colors.grey,size: 15.0,)),
                                    TextSpan(text: 'Lorem Text Lorem',)
                                  ]),style: TextStyle(color: Colors.grey,fontSize: 14.0),)
                                ],
                              ),
                            ),
                            Column(
                              children: [
                                Text('\$300',style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold,fontSize: 20.0),),
                                Text('/Per Night',style: TextStyle(fontSize: 12.0,color: Colors.grey),)
                              ],
                            )
                          ],
                        ),
                        SizedBox(height: 30.0,),
                        SizedBox(
                          width: double.infinity,
                          child: RaisedButton(
                            onPressed: (){
                              //Navigate Function to Any Page U Want
                              Navigator.push(context, MaterialPageRoute(builder: (context)=> PaymentMethods()));
                            },
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
                            color: Colors.blue,
                            textColor: Colors.white,
                            child: Text('BOOK NOW',style: TextStyle(fontWeight: FontWeight.normal),),
                            padding: EdgeInsets.symmetric(vertical: 16.0,horizontal: 32.0),
                          ),
                        ),
                        SizedBox(height: 30.0,),
                        Text('DESCRIPTION',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14.0),),
                        SizedBox(height: 10.0,),
                        Text('Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\n It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
                          style: TextStyle(fontWeight: FontWeight.w300,fontSize: 14.0),
                          textAlign: TextAlign.justify,),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            // alignment: Alignment.topLeft,
            child: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              title: Text('Hotel ONE Details',style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.normal),),
              centerTitle: true,
              leading: IconButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> hotelSearch()));
                },
                icon: Icon(Icons.arrow_back),
              ),
            ),
          ),
        ],
      ),
    );
  }
}