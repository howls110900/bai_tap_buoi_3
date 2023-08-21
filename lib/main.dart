import 'package:bai_tap_buoi_3/icons/my_flutter_app_icons.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a blue toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(
        title: 'ĐỊA DANH NỔI TIẾNG VIỆT NAM',
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  //String name = "Linh";

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          anh(),
          danhGia(),
          iconVaTen(),
          noiDung(),
        ],
      ),
    );
  }
}

noiDung() {
  return Container(
    padding: EdgeInsets.only(top: 20, left: 30, right: 30),
    child: Text(
        'Vườn quốc gia Phong Nha Kẻ Bàng nằm ở phía Bắc dãy núi Trường Sơn, thuộc địa phận các xã Tân Trạch, Thượng Trạch, Phúc Trạch, Xuân Trạch và Sơn Trạch thuộc huyện Bố Trạch, tỉnh Quảng Bình.Vườn quốc gia Phong Nha Kẻ Bàng được UNESCO công nhận là Di sản thiên nhiên thế giới theo tiêu chí địa chất, địa mạo năm 2003, và được UNESCO công nhận lần 2 là Di sản thiên nhiên thế giới.'),
  );
}

iconVaTen() {
  return Container(
    padding: EdgeInsets.only(top: 20, left: 60, right: 60),
    //margin: EdgeInsets.only(left: 30, right: 30,top: 20),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        icon1(
            a: const Icon(
              Icons.call,
              color: Colors.blue,
            ),
            b: "CALL"),
        icon1(
            a: const Icon(
              Icons.directions,
              color: Colors.blue,
            ),
            b: "ROUTE"),
        icon1(
            a: const Icon(
              Icons.share,
              color: Colors.blue,
            ),
            b: "SHARE"),
        // Column(children: [
        //   Text("Icon"),
        //   Text("ROUTE"),
        // ]),
        // Column(children: [
        //   Text("Icon"),
        //   Text("SHARE"),
        // ])
      ],
    ),
  );
}

icon1({required Icon a, required String b}) {
  return Column(children: [
    a,
    Text(
      b,
      style: const TextStyle(color: Colors.blue),
    ),
  ]);
}

danhGia() {
  return Container(
      padding: const EdgeInsets.only(top: 20, left: 30, right: 30),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Động Phong Nha - Kẻ Bàng",
                style: const TextStyle(fontWeight: FontWeight.w500),
              ),
              Text(
                "Đồng Hới, Quảng Bình",
                style: const TextStyle(color: Colors.grey),
              ),
            ],
          ),
          Row(
            children: [
              Icon(
                Icons.star,
                color: Colors.red,
              ),
              Text("41"),
            ],
          )
        ],
      ));
}

anh() {
  return Container(
    margin: EdgeInsets.all(0),
    child: //Text("Picture"),
        Image.asset('assets/images/pn_kb.jpg',),
  );
}
