import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: Text(
            "Home Page",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          actions: [
            Stack(
              children: <Widget> [
                Container(
                  width: 50,
                  height: 50,
                  child: IconButton(
                    icon: Icon(Icons.add_alert_sharp),
                    onPressed: (){print("tapped on container");},
                  ),
                ),
                Positioned(
                  right: 9,
                  top: 10,
                  child: Container(
                    width: 15,
                    height: 15,
                    decoration: BoxDecoration(
                        color: Colors.red,
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.white,width: 2)

                    ),
                  ),
                ),
              ],
            )
          ],
        ),
        body: SingleChildScrollView(

          child: Column(
            children: [
              SizedBox(height: 10),
              boxSectionAZ,
              iconSection,
              lineSection,
              subTitleSection,
              InkWell(
                onTap: () {
                  print("tapped on container");
                },
                child: bottomSection,
              ),
              SizedBox(height: 10),
              InkWell(
                onTap: () {
                  print("tapped on container");
                },
                child: bottomSection,
              ),


            ],
          ),
        ),
      ),
    );
  }
}

Widget boxSectionAZ = Container(
    width: double.infinity,
    height: 180,
    padding: EdgeInsets.all(7),
    margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
              color: Colors.black26,
              offset: Offset(0, 20),
              blurRadius: 10.0)
        ],
        image: DecorationImage(
            image: AssetImage('images/covid.jpg'),
            fit: BoxFit.cover
        )

    ),

    child: Stack(
      children: <Widget> [
        Container(
          width: double.infinity,
          height: 180,
          child: Text(
            'Coaid au maroc',
            style: TextStyle(color: Colors.white, fontSize: 23),
          ),
        ),
        Positioned(
          right: 20,
          top: 120,
          child: Container(
            child: RaisedButton(
              onPressed: () {},
              color: Colors.orange,
              textColor: Colors.white,
              child: Text('Details'),
            ),
          ),
        ),
      ],
    )
);
Widget containerSection = Container(
  height: 200,
  width: double.infinity,
  margin: EdgeInsets.all(20),
  padding: EdgeInsets.all(20),
  decoration: BoxDecoration(
    boxShadow: [
      BoxShadow(
          color: Colors.black26,
          offset: Offset(0, 20),
          blurRadius: 10.0)
    ],
    borderRadius: BorderRadius.circular(10),
    gradient: LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [
        Colors.blue,
        Colors.green,
      ],
    ),
  ),
  child: Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        'Titre',
        style: TextStyle(color: Colors.white, fontSize: 30),
      ),
      Text('Sous-titre'),
      RaisedButton(
        onPressed: () {},
        color: Colors.orange,
        textColor: Colors.white,
        child: Text('Acheter'),
      )
    ],
  ),
);

Widget rowSection = Container(
  color: Colors.black,
  height: 100,
  margin: EdgeInsets.all(20),
  child: Row(
    children: [
      Container(
        color: Colors.blue,
        height: 100,
        width: 100,
      ),
      Expanded(
        child: Container(
          color: Colors.amber,
        ),
      ),
      Container(
        color: Colors.purple,
        height: 100,
        width: 100,
      ),
    ],
  ),
);

Widget iconSection = Container(
  padding: EdgeInsets.all(10),
  margin: EdgeInsets.fromLTRB(20, 20, 20, 10),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Container(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: Colors.orange,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Icon(
                Icons.qr_code_scanner,
                color: Colors.white,
                size: 30,
              ),
            ),
            SizedBox(height: 5),
            Text('Scanner')
          ],
        ),
      ),
      Container(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Icon(
                Icons.settings,
                color: Colors.white,
                size: 30,
              ),
            ),
            SizedBox(height: 5),
            Text('Parammetre')
          ],
        ),
      ),
      Container(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: Colors.pink,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Icon(
                Icons.info,
                color: Colors.white,
                size: 30,
              ),
            ),
            SizedBox(height: 5),
            Text('A propos')
          ],
        ),
      ),

      Container(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: Colors.purple[300],
                borderRadius: BorderRadius.circular(5),
              ),
              child: Icon(
                Icons.pin_drop,
                color: Colors.white,
                size: 30,
              ),
            ),
            SizedBox(height: 5),
            Text('Project')
          ],
        ),
      ),
    ],
  ),
);

Widget lineSection = Container(
  color: Colors.grey[200],
  padding: EdgeInsets.all(4),
);

Widget subTitleSection = Container(
  margin: EdgeInsets.all(20),
  child: Row(
    children: [
      Container(
        color: Colors.indigoAccent,
        width: 5,
        height: 25,
      ),
      SizedBox(width: 10),
      Text(
        'Curriculum',
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w600,
        ),
      )
    ],
  ),
);

Widget bottomSection = Container(

  width: double.infinity,
  padding: EdgeInsets.all(10),
  margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(15),
    gradient: LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [
        Colors.teal,
        Colors.tealAccent,
      ],
    ),
  ),
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        'Couverture vaccinale au Maroc',
        style: TextStyle(
            color: Colors.redAccent,
            fontSize: 20,
            fontWeight: FontWeight.bold
        ),
      ),
      SizedBox(height: 5),
      Text(
        'Mis a jour quotidiennement',
        style: TextStyle(color: Colors.white, fontSize: 15),
      ),
      SizedBox(height: 5),
      Text(
        '80%',
        style: TextStyle(
          color: Colors.black,
          fontSize: 40,
          fontWeight: FontWeight.bold,
        ),
      ),
    ],
  ),
);
