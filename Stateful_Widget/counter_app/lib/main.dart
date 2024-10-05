import 'package:flutter/material.dart';
void main(){
  runApp( const MyApp());
}
class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override 
  Widget build(BuildContext context){
    return Counter_App();
  }
}
class Counter_App extends StatefulWidget{
    const Counter_App({super.key});
    @override 
    State createState()=> _Counter_App();
}
class _Counter_App extends State{
  int count=0;
  @override 
  Widget build(BuildContext context){
         return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: Scaffold(
            appBar: AppBar(
              title:const Text("Counter App",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w900),),
              centerTitle: true,
              backgroundColor: Colors.blue,
            ),
            body: Column(
                children: [
                  const SizedBox(
                    height: 300,
                  ),
                  Center(
                    child: SizedBox(
                      
                      height: 100,
                      width: 100,
                      child: Text("Count: $count",style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w900,
                        color: Colors.pink,

                      ),),
                      
                    ),
                  )
                ],

            ),
            
        floatingActionButton: FloatingActionButton(
        onPressed: () {
          
          setState(() {
            count++; 
          });
        },
        
        child: const Icon(Icons.add),
      ),
      ),
      );
  }
}