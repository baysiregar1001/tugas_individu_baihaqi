import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  get controller => null;
  
  


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Coba Material dan Cupertino widget"),
          backgroundColor: Colors.lightGreenAccent,
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                decoration: const InputDecoration(
                    hintText: "Ini Material Widget",
                    labelText: "Nama Lengkap",
                    icon: const Icon(Icons.people)),
              ),
              const SizedBox(
                height: 15,
              ),

              CupertinoTextField(
                controller: controller,
                placeholder: '     ini cupertino',
                prefix: const Icon(CupertinoIcons.person),
              ),

              //    const SizedBox(
              //   height: 15,
              //   width: 200,
              // ),

              // Text(
              //   ("Pilih aja"),
              //   style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              // ),
              const SizedBox(
                height: 22,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MaterialButton(
                    color: Colors.lime,
                    onPressed: () {},
                    child : const Text(
                      "Ini Material",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  CupertinoButton(
                    color: Colors.tealAccent,
                    child: const Text("Ini CUpertino",
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.bold)),
                    onPressed: () {
                    },
                  ),
                        ],
                        
              ),
              
                
    
            ],
          ),
              ),
            
          ),
        );
      
    
  }
}
  