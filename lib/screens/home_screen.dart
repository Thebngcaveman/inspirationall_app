import 'package:flutter/material.dart';
import 'package:flutter_motivation/components/promotion_card.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(244, 243, 243, 1),
      appBar: AppBar(
        backgroundColor: Colors.white,
        brightness: Brightness.light,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.menu, color: Colors.black87),
          onPressed: () {},
        ),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius:
                    BorderRadius.vertical(bottom: Radius.circular(20)),
              ),
              padding: EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Find Your',
                    style: TextStyle(color: Colors.black87, fontSize: 25),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Peace of mind',
                    style: TextStyle(color: Colors.black, fontSize: 40),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(244, 243, 243, 1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: Icon(
                          Icons.search,
                          color: Colors.black87,
                        ),
                        hintText: "Search you're looking for",
                        hintStyle: TextStyle(
                          color: Colors.grey,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Here is our suggestions',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                      height: 190,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          PromotionCard('assets/images/one.jpg'),
                          PromotionCard('assets/images/two.jpg'),
                          PromotionCard('assets/images/three.jpg'),
                          PromotionCard('assets/images/one.jpg'),
                          PromotionCard('assets/images/two.jpg'),
                          PromotionCard('assets/images/three.jpg'),
                        ],
                      ),
                    ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 180,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.orange,
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/images/three.jpg'))),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        gradient: LinearGradient(
                          begin: Alignment.bottomRight,
                          stops: [0.3, 0.9],
                          colors: [
                            Colors.black.withOpacity(.8),
                            Colors.black.withOpacity(.1)
                          ],
                        ),
                      ),
                      child: Align(
                        alignment: Alignment.bottomLeft,
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Text(
                            'Best Design',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
