import 'package:finalproject/screens/admin.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:finalproject/screens/cart.dart';
import 'package:finalproject/screens/Catalog.dart';

class HomeScreen extends StatelessWidget {
  final String email;

  const HomeScreen({super.key, required this.email});

  logout(BuildContext context) {
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          child: (Column(
            children: <Widget>[
              SizedBox(height: 70),
              Text('สวัสดี : ' + email, //เอาเมลล์ผู้ล็อคอินมาเเสดง
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              SizedBox(height: 20),
              SizedBox(
                height: 20,
                child: Text(
                  'ยินดีต้อนรับเข้าสู่แอพพลิเคชั่น',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 30),

              //ค้นหา
              Container(
                margin: EdgeInsets.symmetric(horizontal: 40),
                padding: EdgeInsets.symmetric(horizontal: 20),
                height: 40,
                width: double.infinity,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey,
                          offset: Offset.zero,
                          blurRadius: 20)
                    ],
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(30)),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                        child: SizedBox(
                      height: 20,
                      child: TextField(
                        decoration: InputDecoration(
                            labelText: 'ค้นหา', border: InputBorder.none),
                      ),
                    ))
                  ],
                ),
              ),
              SizedBox(height: 20),

              //รายการ
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'รายการ',
                    ),
                  ],
                ),
              ),
              //Content
              Container(
                margin: EdgeInsets.all(15.0),
                decoration: BoxDecoration(
                  color: Colors.blue[700],
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                      image: AssetImage("assets/images/pd.png"),
                      fit: BoxFit.cover),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey, offset: Offset.zero, blurRadius: 20)
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(20.0).copyWith(
                        right: 0,
                      ),
                      child: Column(
                        children: [
                          Text(
                            'ซื่อสินค้าหลาหลายหวมดหมู่',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 10),

                          //ปุ่มเพิ่มเติม
                          Container(
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => MyCatalog()));
                              },
                              style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                                primary: Colors.white,
                                shape: StadiumBorder(),
                              ),
                              child: Text(
                                "เพิ่มเติม",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              Container(
                margin: EdgeInsets.all(15.0),
                decoration: BoxDecoration(
                  color: Colors.blue[700],
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                      image: AssetImage("assets/images/pd.png"),
                      fit: BoxFit.cover),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey, offset: Offset.zero, blurRadius: 20)
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(20.0).copyWith(
                        right: 0,
                      ),
                      child: Column(
                        children: [
                          Text(
                            'ตะกร้าสินค้า',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 10),

                          //ปุ่มเพิ่มเติม
                          Container(
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => MyCart()));
                              },
                              style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                                primary: Colors.white,
                                shape: StadiumBorder(),
                              ),
                              child: Text(
                                "เพิ่มเติม",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              //Dev
              Container(
                margin: EdgeInsets.all(15.0),
                decoration: BoxDecoration(
                  color: Colors.grey[800],
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                      image: AssetImage("assets/images/developer.png"),
                      fit: BoxFit.cover),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey, offset: Offset.zero, blurRadius: 20)
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(20.0).copyWith(
                        right: 0,
                      ),
                      child: Column(
                        children: [
                          Text(
                            'ผู้พัฒนาระบบ',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 10),

                          //ปุ่มคลิ๊ก
                          Container(
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => admin()));
                              },
                              style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                                primary: Colors.blue[50],
                                shape: StadiumBorder(),
                              ),
                              child: Text(
                                "คลิ๊ก",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(
                height: 20,
              ),

              //ปุมออกจากระบบ
              ElevatedButton.icon(
                onPressed: () {
                  logout(context);
                },
                icon: Icon(Icons.logout_outlined),
                label: Text(
                  "ออกจากระบบ",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              )
            ],
          )),
        ),
      ),
    );
  }
}
