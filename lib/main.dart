// liveTest module 14
import 'package:flutter/material.dart';

void main(){runApp(const MyApp()); }

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<dynamic> jsonString =[
    {
      "city": "New York",
      "temperature": 20,
      "condition": "Clear",
      "humidity": 60,
      "windSpeed": 5.5
    },
    {
      "city": "Los Angeles",
      "temperature": 25,
      "condition": "Sunny",
      "humidity": 50,
      "windSpeed": 6.8
    },
    {
      "city": "London",
      "temperature": 15,
      "condition": "Partly Cloudy",
      "humidity": 70,
      "windSpeed": 4.2
    },
    {
      "city": "Tokyo",
      "temperature": 28,
      "condition": "Rainy",
      "humidity": 75,
      "windSpeed": 8.0
    },
    {
      "city": "Sydney",
      "temperature": 22,
      "condition": "Cloudy",
      "humidity": 55,
      "windSpeed": 7.3
    },];
  TextStyle ts = const TextStyle(fontSize: 20,color: Colors.grey);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Weather Info App'),backgroundColor: Colors.blue,),
      body: ListView.builder(
        itemCount: jsonString.length,
        itemBuilder: (context,index){
          return Card(
            child: ListTile(
              title: Text("City: ${jsonString[index]["city"]}",style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w400),),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:[
                  Text("Temperature: ${jsonString[index]["temperature"]}°C",style: ts),
                  Text("Condition: ${jsonString[index]["condition"]}",style: ts),
                  Text("Humidity: ${jsonString[index]["humidity"]}%",style: ts),
                  Text("WindSpeed: ${jsonString[index]["windSpeed"]} m/s",style: ts),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}