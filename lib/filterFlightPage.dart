import 'package:flutter/material.dart';
import 'package:safaryat/flightSearch.dart';

class fliterFlightPage extends StatefulWidget {
  const fliterFlightPage({ Key? key }) : super(key: key);

  @override
  _fliterFlightPageState createState() => _fliterFlightPageState();
}

class _fliterFlightPageState extends State<fliterFlightPage> {
  var selectedRanges = RangeValues(350, 1100);
  final CabinBoxes = [
    CheckBoxState(title: 'Economy'),
    CheckBoxState(title: 'Buisness'),
    CheckBoxState(title: 'First Class'),
  ];
  int selectedRadio = 0;
  setSelectedRadio(val){
    setState(() {
      selectedRadio = val;
    });
  }
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
            Navigator.push(context, MaterialPageRoute(builder: (context)=> flightSearch()));
          },
          icon: Icon(Icons.arrow_back,color: Colors.black,),
        ),
        actions: [
          IconButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> flightSearch()));
          }, icon: Icon(Icons.done_rounded,color: Colors.black,))
        ],
      ),
      body: Container(
        child: Padding(
          padding: EdgeInsets.only(right: 12,left: 12.0,top: 25),
          child: Column(
            children: [
              Column(
                // mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Price Range',style: TextStyle(fontSize: 20),),
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
              Divider(thickness: 1,height: 20.0,color: Colors.grey.shade400,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Cabin',style: TextStyle(fontSize: 20.0),),
                  SizedBox(height: 12,),
                  ...CabinBoxes.map(buildSingleCabinBox).toList(),
                ],
              ),
              Divider(thickness: 1,height: 20.0,color: Colors.grey.shade400,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Stops',style: TextStyle(fontSize: 20.0),),
                  Row(
                    children: [
                      ButtonBar(
                        alignment: MainAxisAlignment.center,
                        children: [
                          Radio(
                            value: 1,
                            groupValue: selectedRadio,
                            activeColor: Colors.blueAccent,
                            onChanged: (val){
                              print('Radio $val');
                              setSelectedRadio(val);
                            },
                          ),
                          Text('1 Stop'),
                          SizedBox(width: 80,),
                          Radio(
                            value: 2,
                            groupValue: selectedRadio,
                            activeColor: Colors.blueAccent,
                            onChanged: (val) {
                              print('Radio $val');
                              setSelectedRadio(val);
                            },
                          ),
                          Text('2+ Stop'),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              Divider(thickness: 1,height: 20.0,color: Colors.grey.shade400,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Flight Experience',style: TextStyle(fontSize: 20.0),),
                  SizedBox(height: 20,),
                  Column(
                    children: [
                      Column(
                        children: [
                          Row(
                            children: [
                              Icon(Icons.timer_off_rounded),
                              SizedBox(width: 8,),
                              Text('No long Stop-overs (up to 4hrs)'),
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
                              Icon(Icons.nightlight_round_outlined),
                              SizedBox(width: 8,),
                              Text('No overnight flights'),
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
                          )
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