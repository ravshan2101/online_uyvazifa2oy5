import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'Cars',
          style: TextStyle(
              fontSize: 25, fontWeight: FontWeight.w500, color: Colors.red),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.notifications_none,
                color: Colors.red,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.red,
              ))
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Container(
                height: 40,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    _shop(true, 'All'),
                    _shop(false, 'Red'),
                    _shop(false, 'Blue'),
                    _shop(false, 'Green'),
                    _shop(false, 'Yellow')
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              _shopMag(image: 'assets/image/1.jpeg'),
              _shopMag(image: 'assets/image/3.jpeg'),
              _shopMag(image: 'assets/image/2.jpeg'),
              _shopMag(image: 'assets/image/4.jpeg'),
              _shopMag(image: 'assets/image/2.jpeg')
            ],
          ),
        ),
      ),
    );
  }
}

Widget _shopMag({String? image}) {
  return Container(
    height: 250,
    width: double.infinity,
    margin: EdgeInsets.only(bottom: 20),
    decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
              offset: Offset(0, 10),
              color: Colors.grey.shade400,
              blurRadius: 10),
        ],
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(fit: BoxFit.cover, image: AssetImage(image!))),
    child: Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: LinearGradient(begin: Alignment.bottomRight, colors: [
            Colors.black.withOpacity(.9),
            Colors.black.withOpacity(.6),
            Colors.black.withOpacity(.3),
            Colors.black.withOpacity(.2),
          ])),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: const [
                    Text(
                      'Pdp car',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Electric',
                      style: TextStyle(
                          color: Colors.red,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                const Text(
                  '100\$',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Container(
              width: 35,
              height: 35,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.red,
              ),
              child: Center(
                child: Icon(
                  Icons.favorite_border,
                  color: Colors.white,
                ),
              ),
            ),
          )
        ],
      ),
    ),
  );
}

Widget _shop(bool type, String title) {
  return AspectRatio(
    aspectRatio: 2.2 / 1,
    child: Container(
      margin: const EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
          color: type ? Colors.red : Colors.white,
          borderRadius: BorderRadius.circular(20)),
      child: Center(
          child: Text(
        title,
        style: TextStyle(
            fontSize: type ? 20 : 17,
            color: type ? Colors.white : Colors.black),
      )),
    ),
  );
}
