import 'package:flutter/material.dart';
void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override  
  Widget build(BuildContext context){
    return const MaterialApp(debugShowCheckedModeBanner: false,
      home:  CricketPlayer(),);
  }
}
class CricketPlayer extends StatefulWidget{
  const CricketPlayer({super.key});
  @override  
  State createState()=> _CricketPlayer();
}
class _CricketPlayer extends State{
  int currL=0;
  List <String> cricList = [ "https://cdn.britannica.com/25/222725-050-170F622A/Indian-cricketer-Mahendra-Singh-Dhoni-2011.jpg","https://cdn.britannica.com/48/252748-050-C514EFDB/Virat-Kohli-India-celebrates-50th-century-Cricket-November-15-2023.jpg","https://www.livemint.com/lm-img/img/2024/07/15/600x338/ANI-20240701074-0_1720450579604_1721018100800.jpg"];
  @override  
  Widget build(BuildContext context) {
    return Scaffold( 
         appBar: AppBar(
          title: const Text("Cricket Players", style: TextStyle(fontSize: 30,fontWeight: FontWeight.w900,color: Colors.pink),),
          centerTitle: true,
          backgroundColor: Colors.blue,),
          body: Column(children: [
           const  SizedBox(height: 100,),
           SizedBox(
            

          height: 300,
          width: 300,
          child: Container(
            height: 400,
            width: 600,
            alignment: Alignment.center,
            child: Image.network(cricList[currL],fit:BoxFit.contain)),
           ),
          ],),

          floatingActionButton: FloatingActionButton(
            onPressed: (){
                 if(currL< cricList.length-1){
                  
                  currL++;
                 }else{
                        currL=0;
                 }
                  
                  setState(() { });
            },
            child: Icon(Icons.arrow_forward_rounded),
          ),

    );
  }
} 
