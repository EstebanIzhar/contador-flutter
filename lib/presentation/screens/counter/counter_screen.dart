   import 'package:flutter/material.dart';

   class CounterScreen extends StatefulWidget {
     const CounterScreen({super.key});

     @override
     State<CounterScreen> createState() => _CounterScreenState();
   }

   class _CounterScreenState extends State<CounterScreen> {
     int clickCounter = 0;

     @override
     Widget build(BuildContext context) {
       return Scaffold(
         appBar: AppBar(
           title: const Center(child: Text("Counter screen")),
           actions: [
             IconButton(
               icon: const Icon(Icons.refresh_rounded),
               onPressed: () {
                 setState(() {
                   clickCounter = 0;
                 });
               },
             ),
           ],
         ),
         body: Center(
           child: Column(
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
               Text(
                 '$clickCounter',
                 style: const TextStyle(
                     fontSize: 160, fontWeight: FontWeight.w100),
               ),
               Text(
                 'Click${clickCounter == 1 ? '' : 's'}',
                 style: const TextStyle(fontSize: 25),
               ),
             ],
           ),
         ),
         floatingActionButton: Column(
           mainAxisAlignment: MainAxisAlignment.end,
           children: [
             FloatingActionButton(
               shape: const StadiumBorder(),
               onPressed: () {
                 setState(() {
                   clickCounter++;
                 });
               },
               child: const Icon(Icons.plus_one),
             ),
             const SizedBox(height: 15),
             FloatingActionButton(
               shape: const StadiumBorder(),
               onPressed: () {
                 if (clickCounter == 0) return;
                 setState(() {
                   clickCounter--;
                 });
               },
               child: const Icon(Icons.exposure_minus_1),
             ),
           ],
         ),
       );
     }
   }