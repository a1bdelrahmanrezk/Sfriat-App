import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:safaryatproject/hotelSearch.dart';

class fliterHotelPage extends StatefulWidget {
  const fliterHotelPage({ Key? key }) : super(key: key);

  @override
  _fliterHotelPageState createState() => _fliterHotelPageState();
}

class _fliterHotelPageState extends State<fliterHotelPage> {
  var selectedRanges = RangeValues(350, 1100);
  final CabinBoxes = [
    CheckBoxState(title: 'Breakfast Included'),
    CheckBoxState(title: 'Free Cancellation'),
    CheckBoxState(title: 'Free WIFI'),
    CheckBoxState(title: 'No Credit Card needed'),
    CheckBoxState(title: 'Pay Later'),
    CheckBoxState(title: 'Pool'),
    CheckBoxState(title: 'Heritage'),
  ];
  int selectedRadiof = 0;
  // @override
  // void initState() {
  //   super.initState();
  //   selectedRadio = 0;
  // }
  setSelectedRadiof(val){
    setState(() {
      selectedRadiof = val;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('Filter Search',style: TextStyle(color: Colors.black),),
        elevation: 10.0,
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=> hotelSearch()));
          },
          icon: Icon(Icons.arrow_back,color: Colors.black,),
        ),
        actions: [
          IconButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> hotelSearch()));
          }, icon: Icon(Icons.done_rounded,color: Colors.black,))
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Padding(
            padding: EdgeInsets.only(right: 12,left: 12.0,top: 25),
            child: Column(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Price Range'.toUpperCase(),style: TextStyle(fontSize: 20),),
                    SizedBox(height: 10.0,),
                    Row(
                      children: [
                        Text('Min'),
                        Expanded(
                          child: RangeSlider(
                            values: selectedRanges,
                            onChanged: (RangeValues newRange){
                              setState(()=> selectedRanges = newRange);
                            },
                            min: 0,
                            max: 1500,
                            divisions: 100,
                            labels: RangeLabels('\$${selectedRanges.start}', '\$${selectedRanges.end}'),
                          ),
                        ),
                        Text('Max')
                      ],
                    ),
                  ],
                ),
                Divider(thickness: 1,height: 35.0,color: Colors.grey.shade400,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Rate Types & Inclusions'.toUpperCase(),style: TextStyle(fontSize: 20.0),),
                    SizedBox(height: 12,),
                    ...CabinBoxes.map(buildSingleCabinBox).toList(),
                  ],
                ),
                Divider(thickness: 1,height: 35.0,color: Colors.grey.shade400,),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical:10),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Rating'.toUpperCase(),style: TextStyle(fontSize: 20.0),),
                      // SizedBox(height: 20.0,),
                      RatingBar.builder(
                        minRating: 1,
                        updateOnDrag: true,
                        itemSize: 30,
                        itemCount: 6,
                        // itemPadding: EdgeInsets.symmetric(horizontal: 4),
                        itemBuilder: (context,_)=>Icon(Icons.star,color: Colors.amber,),
                        onRatingUpdate: (rating){
                        },
                      )
                    ],
                  ),
                ),
                Divider(thickness: 1,height: 35.0,color: Colors.grey.shade400,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Suggested For '.toUpperCase(),style: TextStyle(fontSize: 20.0),),
                    SizedBox(height: 20,),
                    Column(
                      children: [
                        Column(
                          children: [
                            Row(
                              children: [
                                Icon(FontAwesomeIcons.globeAfrica,size: 18,),
                                SizedBox(width: 12,),
                                Text('All Travellers'),
                                Spacer(),
                                Radio(
                                  value: 1,
                                  groupValue: selectedRadiof,
                                  activeColor: Colors.blueAccent,
                                  onChanged: (val){
                                    setSelectedRadiof(val);
                                  },
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Icon(FontAwesomeIcons.briefcase,size: 18,),
                                SizedBox(width: 12,),
                                Text('Business Travellers'),
                                Spacer(),
                                Radio(
                                  value: 2,
                                  groupValue: selectedRadiof,
                                  activeColor: Colors.blueAccent,
                                  onChanged: (val) {
                                    setSelectedRadiof(val);
                                  },
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Icon(FontAwesomeIcons.restroom,size: 18,),
                                SizedBox(width: 12,),
                                Text('Couple Travellers'),
                                Spacer(),
                                Radio(
                                  value: 3,
                                  groupValue: selectedRadiof,
                                  activeColor: Colors.blueAccent,
                                  onChanged: (val) {
                                    setSelectedRadiof(val);
                                  },
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Icon(FontAwesomeIcons.users,size: 18,),
                                SizedBox(width: 12,),
                                Text('Family Travellers'),
                                Spacer(),
                                Radio(
                                  value: 4,
                                  groupValue: selectedRadiof,
                                  activeColor: Colors.blueAccent,
                                  onChanged: (val) {
                                    setSelectedRadiof(val);
                                  },
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Icon(FontAwesomeIcons.male,size: 18,),
                                SizedBox(width: 12,),
                                Text('Solo Travellers'),
                                Spacer(),
                                Radio(
                                  value: 5,
                                  groupValue: selectedRadiof,
                                  activeColor: Colors.blueAccent,
                                  onChanged: (val) {
                                    setSelectedRadiof(val);
                                  },
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
  Widget buildSingleCabinBox(CheckBoxState checkBox) =>   CheckboxListTile(
      value: checkBox.value,
      title: Text(checkBox.title),
      onChanged: (value)=> setState(()=>checkBox.value = value!)
  );
}
class CheckBoxState {
  final String title;
  bool value;
  CheckBoxState({
    required this.title,
    this.value = false,
  });
}