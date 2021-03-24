import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;
  // String url =
  //     'data:image/jpeg;base64,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';

  Drawer _getDrawer(context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          Container(
            child: new UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: Colors.pinkAccent,
                gradient:
                    LinearGradient(colors: [Colors.pink[200], Colors.black]),
              ),
              accountEmail: Text(''),
              currentAccountPicture: new CircleAvatar(
                backgroundColor: Colors.white,
                backgroundImage: NetworkImage(
                    'https://cdn.business2community.com/wp-content/uploads/2017/08/blank-profile-picture-973460_640.png'),
              ),
              accountName: Text('Hardik'),
            ),
          ),
          ListTile(
            contentPadding: EdgeInsets.all(3),
            leading: Icon(Icons.grid_view),
            title: Text('Categories'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          Divider(
            height: 1,
            thickness: 1,
          ),
          ListTile(
            contentPadding: EdgeInsets.all(3),
            leading: Icon(Icons.storefront),
            title: Text('Theme Stores'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          Divider(
            height: 1,
            thickness: 1,
          ),
          ListTile(
            contentPadding: EdgeInsets.all(3),
            leading: Icon(Icons.shopping_bag_outlined),
            title: Text('Orders'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          Divider(
            height: 1,
            thickness: 1,
          ),
          Padding(
            padding: EdgeInsets.all(10),
          ),
          ListTile(
            title: Text('FAQs'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Contact Us'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Legal'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }

  AppBar _getAppbar() {
    return AppBar(
      backgroundColor: Colors.white,
      iconTheme: IconThemeData(color: Colors.black),
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.search),
          onPressed: () {},
          color: Colors.black,
        ),
        IconButton(
          icon: Icon(Icons.notifications_outlined),
          onPressed: () {},
          color: Colors.black,
        ),
        IconButton(
          icon: Icon(Icons.favorite_outline_sharp),
          onPressed: () {},
          color: Colors.black,
        ),
        IconButton(
          icon: Icon(Icons.shopping_bag_outlined),
          onPressed: () {},
          color: Colors.black,
        ),
      ],
    );
  }

  // Widget _getbody(context) {
  //   return Container(
  //     child: Row(
  //       children: [
  //         ListView.builder(
  //           shrinkWrap: true,
  //           padding: EdgeInsets.all(8),
  //           scrollDirection: Axis.horizontal,
  //           itemCount: 5,
  //           itemBuilder: (context, index) {
  //             return Stack(children: <Widget>[
  //               Container(
  //                 decoration: BoxDecoration(
  //                   color: Colors.redAccent,
  //                   shape: BoxShape.circle,
  //                   image: DecorationImage(
  //                     fit: BoxFit.fill,
  //                     image: NetworkImage(url),
  //                   ),
  //                 ),
  //               ),
  //             ]);
  //           },
  //         )
  //       ],
  //     ),
  //   );
  // }

  BottomNavigationBar _bottom() {
    return BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: Colors.black,
        selectedItemColor: Colors.pinkAccent,
        // unselectedIconTheme: IconThemeData(color: Colors.black),
        // selectedIconTheme: IconThemeData(color: Colors.pinkAccent),
        onTap: (value) {
          setState(() {
            _currentIndex = value;
          });
        },
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.grid_view),
            label: 'Categories',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.live_tv_outlined),
            label: 'Studio',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.flare_outlined),
            label: 'Xplore',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline_rounded),
            label: 'Profile',
          ),
        ]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: _getDrawer(context),
      appBar: _getAppbar(),
      // body: _getbody(context),
      bottomNavigationBar: _bottom(),
    );
  }
}
