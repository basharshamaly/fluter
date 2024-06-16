import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home : Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 17.0),
                child: Row(
                  children: [
                    Text('Center' ,style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold)),
                  ],
                ),
              ),

              const Column(
                children: [
                  Stack(
                      children: [
                        Card(
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(15))),
                          elevation: 5,
                          shadowColor: Colors.black,
                          color: Colors.blue,
                          child: SizedBox(
                            width: double.infinity,
                            height: 170, //Padding
                          ), //SizedBox
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 20.0, left: 25),
                              child: CircleAvatar(
                                backgroundImage: AssetImage('assets/bashar.jpg'),
                                radius: 28,
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start, // Aligns children to the start of the column
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 15, top: 30),
                                  child: Row(
                                    children: [
                                      Text(
                                        'Bashar Shamaly',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 24,
                                            fontWeight: FontWeight.bold
                                        ),
                                      ),
                                      SizedBox(width: 15),
                                      Icon(
                                        Icons.mode,
                                        color: Colors.white,
                                        size: 20,
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 15), // Adds left padding to align with the above text
                                  child: Text(
                                    'A trendsetter',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),

                        Padding(
                          padding: EdgeInsets.only(top: 100.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Column(
                                children: [
                                  Text("846",style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold)),
                                  SizedBox(height: 5,),
                                  Text("Collect",style: TextStyle(fontSize: 15,color: Colors.white)),
                                ],
                              ),
                              Column(
                                children: [
                                  Text("51",style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold)),
                                  SizedBox(height: 5,),
                                  Text("Attention",style: TextStyle(fontSize: 15,color: Colors.white)),
                                ],
                              ),
                              Column(
                                children: [
                                  Text("267",style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold)),
                                  SizedBox(height: 5,),
                                  Text("Track",style: TextStyle(fontSize: 15,color: Colors.white)),
                                ],
                              ),
                              Column(
                                children: [
                                  Text("39",style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold)),
                                  SizedBox(height: 5,),
                                  Text("Coupons",style: TextStyle(fontSize: 15,color: Colors.white)),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ]
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15,bottom: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                        children: [
                          CircleAvatar(
                              radius: 28,
                              backgroundColor : Colors.grey.shade100,
                              child: const Icon(Icons.account_balance_wallet,size: 30,color: Colors.black87)
                          ),
                          const SizedBox(height: 5),
                          const Text('Wallet'),
                        ]
                    ),
                    Column(
                        children: [
                          CircleAvatar(
                              radius: 28,
                              backgroundColor : Colors.grey.shade100,
                              child: const Icon(Icons.local_shipping_outlined,size: 30,color: Colors.black87)
                          ),
                          const SizedBox(height: 5),
                          const Text('Delivery'),
                        ]
                    ),
                    Column(
                        children: [
                          Stack(
                            alignment: Alignment.topRight,
                            children: [
                              CircleAvatar(
                                  radius: 28,
                                  backgroundColor : Colors.grey.shade100,
                                  child: const Icon(Icons.message,size: 25,color: Colors.black87)
                              ),
                              const CircleAvatar(
                                backgroundColor: Colors.blue,
                                radius: 10,
                              ),
                              const Padding(
                                padding: EdgeInsets.only(right: 6.0),
                                child: Text('2',style: TextStyle(color: Colors.white)),
                              ),
                            ],
                          ),
                          const SizedBox(height: 5),
                          const Text('Message'),
                        ]
                    ),
                    Column(
                        children: [
                          CircleAvatar(
                            radius: 28,
                            backgroundColor : Colors.grey.shade100,
                            child: const FaIcon(
                              FontAwesomeIcons.sackDollar, // FontAwesome dollar sack icon
                              size: 25,
                              color: Colors.black87,
                            ),
                          ),
                          const SizedBox(height: 5),
                          const Text('Service'),
                        ]
                    ),
                  ],
                ),
              ),
              Card(
                color: Colors.white,
                elevation: 5,
                shadowColor: Colors.blueAccent.shade100,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(17),
                ),
                child: ListTile(
                  leading: const CircleAvatar(
                    backgroundColor: Colors.purpleAccent,
                    child: Icon(Icons.location_on,color: Colors.white),
                  ),
                  title: const Text('Address',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)),
                  subtitle: const Text('Ensure your harvesting address'),
                  trailing: Icon(Icons.arrow_forward_ios,color: Colors.grey.shade300),
                ),
              ),
              Card(
                color: Colors.white,
                elevation: 5,
                shadowColor: Colors.blueAccent.shade100,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(17),
                ),
                child: ListTile(
                  leading: const CircleAvatar(
                    backgroundColor: Colors.pinkAccent,
                    child: Icon(Icons.lock,color: Colors.white),
                  ),
                  title: const Text('Privacy',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)),
                  subtitle: const Text('System permission change'),
                  trailing: Icon(Icons.arrow_forward_ios,color: Colors.grey.shade300),
                ),
              ),
              Card(
                color: Colors.white,
                elevation: 5,
                shadowColor: Colors.blueAccent.shade100,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(17),
                ),
                child: ListTile(
                  leading: const CircleAvatar(
                    backgroundColor: Colors.orangeAccent,
                    child: Icon(Icons.layers,color: Colors.white),
                  ),
                  title: const Text('General',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)),
                  subtitle: const Text('Basic functional setting'),
                  trailing: Icon(Icons.arrow_forward_ios,color: Colors.grey.shade300),
                ),
              ),
              Card(
                color: Colors.white,
                elevation: 5,
                shadowColor: Colors.blueAccent.shade100,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(17),
                ),
                child: ListTile(
                  leading: const CircleAvatar(
                    backgroundColor: Colors.greenAccent,
                    child: Icon(Icons.notifications,color: Colors.white),
                  ),
                  title: const Text('Notification',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)),
                  subtitle: const Text('Take over the news in time'),
                  trailing: Icon(Icons.arrow_forward_ios,color: Colors.grey.shade300),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}



