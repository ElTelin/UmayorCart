import 'package:cartapp/reusable_widgets/reusable_widget.dart';
import 'package:cartapp/utils/color_utils.dart';
import 'package:flutter/material.dart';

class CartHomeScreen extends StatefulWidget {
  const CartHomeScreen({Key? key,required this.email}) : super(key: key);
  final String email;
  @override
  _CartHomeScreenState createState() => _CartHomeScreenState();
  
}

class _CartHomeScreenState extends State<CartHomeScreen> {
  String? get email => null;

  
  Widget buildFeatureProduct(String name, double price, String image) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
          borderRadius: const BorderRadius.only(
              bottomRight: Radius.circular(10),
              bottomLeft: Radius.circular(10),
              topRight: Radius.circular(10)),
          side: BorderSide(width: 5, color: hexStringToColor("EAD7BB"))),
      child: Container(
        height: 250,
        width: 170,
        color: hexStringToColor("EAD7BB"),
        child: Column(
          children: <Widget>[
            Container(
              height: 190,
              width: 160,
              decoration:  BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/$image'))),
            ),
            Text(
              "\$ $price",
              style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                  color: Color(0xff9b96d6)),
            ),
            Text(
              name,
              style: const TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }

  final GlobalKey<ScaffoldState> _key = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {

    final TextEditingController searchTextController = TextEditingController();

    return Scaffold(
      key: _key,
      drawer:  Drawer(
          child: ListView(
            children: const <Widget>[
               UserAccountsDrawerHeader(accountName: Text(''), accountEmail: Text("test"))
            ],
          ),

      ),
      appBar: AppBar(
        title: const Text(
          "UMayor ECommerce",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: hexStringToColor("BCA37F"),
        leading: IconButton(
            onPressed: () {
              _key.currentState?.openDrawer();
            },
            icon:
                const Icon(Icons.shopping_cart_outlined, color: Colors.white)),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.filter_alt, color: Colors.white)),
        ],
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        margin: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 120,
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  reusableTextField2("", Icons.search, false,
                    searchTextController),
                  const SizedBox(
                    height: 50,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Featured",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "List All",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Column(
                  children: [
                    Row(
                      children: [
                        buildFeatureProduct('Man Long T-shirt', 30.00, "man.jpg"),
                        buildFeatureProduct('Man Long T-shirt', 30.00, "man.jpg")
                        
                      ],
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
