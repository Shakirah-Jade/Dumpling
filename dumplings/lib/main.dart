import 'package:dumplings/donut.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyHomePage(),
  ));
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF4F0F1),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 185.0,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 70.0,
                          width: 70.0,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/two.jpg'),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.circular(25.0)),
                        ),
                        Text(
                          'Jade Ruby',
                          style: TextStyle(
                            fontFamily: 'openSans',
                            fontSize: 17.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ]),
                ),
                IconButton(
                    onPressed: () {},
                    icon:
                        Icon(Icons.cake, color: Colors.grey.withOpacity(0.7))),
              ],
            ),
          ),
          Container(
            height: 300.0,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/dumpling.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Container(
            width: 100.0,
            child: Center(
              child: Text(
                'DUMPLINGS',
                style: TextStyle(
                  fontFamily: 'Bold Addict',
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Center(
            child: Text(
              '有品位的',
              style: TextStyle(
                fontFamily: 'OpenSans',
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(117, 0, 0, 0),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20.0),
            child: Container(
              width: MediaQuery.of(context).size.width - 30.0,
              child: Text(
                'We are thrilled to share with you the culinary masterpiece that awaits at PHOENIX foods. Prepare your taste buds for an extraordinary journey as we present our pièce de résistance our exquisite dumplings.',
                style: TextStyle(
                  fontFamily: 'OpenSans',
                  fontSize: 12.5,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(117, 0, 0, 0),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20.0, right: 20.0, bottom: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.remove_circle_outline),
                  color: Color(0xFFC4C2C5),
                ),
                Container(
                  width: 125.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '\$6.99',
                        style: TextStyle(
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold,
                          color: Color(0XFF322F2E),
                        ),
                      ),
                      Text(
                        '1 ORDER',
                        style: TextStyle(
                          fontFamily: 'OpenSans',
                          fontSize: 12.0,
                          fontWeight: FontWeight.w600,
                          color: Color(0XFF322F2E),
                        ),
                      ),
                    ],
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.add_circle_outline),
                  color: Color(0xFF4C4A4A),
                ),
              ],
            ),
          ),
          ///////////////////////////////////////////
          Padding(
            padding: EdgeInsets.only(left: 20.0, right: 20.0),
            child: InkWell(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => DonutPage()));
              },
              child: Container(
                height: 50.0,
                width: MediaQuery.of(context).size.width,
                color: Color(0xFF312F2E),
                child: Center(
                  child: Text(
                    'Add to Basket',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 3.0,
          ),
          Center(
            child: Text(
              'Get the second order in half price',
              style: TextStyle(
                  fontFamily: 'OpenSans',
                  fontSize: 12.0,
                  color: Color(0xFF8E8989)),
            ),
          ),
        ],
      ),
    );
  }
}
