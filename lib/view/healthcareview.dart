import 'package:flutter/material.dart';

class HealthCareView extends StatefulWidget {
  const HealthCareView({Key? key}) : super(key: key);

  @override
  State<HealthCareView> createState() => _HealthCareViewState();
}

class _HealthCareViewState extends State<HealthCareView> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          ' " Together We Can Bring The Change " ',
          style: TextStyle(fontSize: 13),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () => Navigator.of(context).pop(),
        ),
        backgroundColor: Color.fromRGBO(79, 147, 220, 1),
      ),
      body: Container(
        width: width,
        height: height,
        child: SingleChildScrollView(
          child: Column(
            children: [
              //first widget
              Container(
                height: 90,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: Image.asset(
                        'assets/reported.png',
                        fit: BoxFit.fill,
                      ),
                    ),
                    Text(
                      ' Report Any Grievances',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
              //Divider(color: Colors.purple,thickness: 2.5,),

              //second widget
              Container(
                width: width - 60,
                child: TextFormField(
                  cursorColor: Colors.white,
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                      suffixIcon: Icon(
                        Icons.send,
                        color: Colors.white,
                      ),
                      prefix: Icon(
                        Icons.mic,
                        color: Colors.white,
                      ),
                      filled: true,
                      fillColor: Color.fromRGBO(79, 147, 220, 1)),
                ),
              ),

              //third widget
              Container(
                margin: EdgeInsets.only(top: 8, bottom: 4),
                child: Center(
                  child: Text(
                    'NMMC Services',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        color: Color(0xff171717)),
                  ),
                ),
              ),

              //list of cards
              Container(
                color: Color.fromRGBO(79, 147, 220, 1),
                padding: EdgeInsets.only(top: 40, bottom: height / 7.5),
                child: GridView.extent(
                  maxCrossAxisExtent: width / 2,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  controller: ScrollController(),
                  children: [
                    //first card
                    Card(
                      child: Column(
                        children: [
                          Container(
                            height: 120,
                            child: Image.asset(
                              'assets/parking.png',
                              fit: BoxFit.fill,
                            ),
                          ),
                          Text(
                            'Smart Parking',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text('Spot , Pay , Park '),
                        ],
                      ),
                    ),

                    //second card
                    Card(
                      child: Column(
                        children: [
                          Container(
                            height: 120,
                            child: Image.asset(
                              'assets/train.png',
                              fit: BoxFit.fill,
                            ),
                          ),
                          Text('Travel',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold)),
                          Text('Explore the city'),
                        ],
                      ),
                    ),

                    //third card
                    Card(
                      child: Column(
                        children: [
                          Container(
                            height: 120,
                            child: Image.asset(
                              'assets/restaurant.png',
                              fit: BoxFit.fill,
                            ),
                          ),
                          Text('Dine',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold)),
                          Text('Eat Healthy,Stay Fit'),
                        ],
                      ),
                    ),

                    //fourth card
                    Card(
                      child: Column(
                        children: [
                          Container(
                            height: 120,
                            child: Image.asset(
                              'assets/cash.png',
                              fit: BoxFit.fill,
                            ),
                          ),
                          Text('E-Payment',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold)),
                          Text('Settle Up Bills'),
                        ],
                      ),
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
