import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Application name
      title: 'Tugas 2',
      // Application theme data, you can set the colors for the application as
      // you want
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      // A widget which will be started on application startup
      home: MyHomePage(title: 'Products'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.sort, color: Colors.black),
        // The title text which will be shown on the action bar
        title: Text(title),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(6.0),
            child: Card(
              child: Column(
                children: <Widget>[
                  ClipRRect(
                    child: Image(image: NetworkImage('https://blogpictures.99.co/harga-mata-bor.png')),
                  ),
                  ListTile(
                    trailing: IconButton(
                      icon: Icon(
                        Icons.shopping_cart,
                      ),
                      iconSize: 40,
                      onPressed: () {
                        print("Barang Dimasukkan Ke Keranjang");
                      },
                    ),
                    title: Text(
                      'Driller',
                      style: TextStyle(fontSize: 28, fontWeight: FontWeight.w700),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    subtitle: Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    onTap: () {
                      print("Informasi Barang");
                    },
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(6.0),
            child: Card(
              child: Column(
                children: <Widget>[
                  ClipRRect(
                    child: Image(image: NetworkImage('https://airpress.net/media/catalog/product/cache/2cf6a9e66210d431c6369e61c1eb52eb/3/6/36520-n_0001_newlogo_.jpg')),
                  ),
                  ListTile(
                    trailing: IconButton(
                      icon: Icon(
                        Icons.shopping_cart,
                      ),
                      iconSize: 40,
                      onPressed: () {
                        print("Barang Dimasukkan Ke Keranjang");
                      },
                    ),
                    title: Text(
                      'Compressor',
                      style: TextStyle(fontSize: 28, fontWeight: FontWeight.w700),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    subtitle: Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    onTap: () {
                      print("Informasi Barang");
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
