import 'package:flutter/material.dart';

class UserInteractionPage extends StatefulWidget {
  const UserInteractionPage({super.key});

  @override
  State<UserInteractionPage> createState() => _UserInteractionPageState();
}

class _UserInteractionPageState extends State<UserInteractionPage> {
  var tfControl = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("User interaction"),),
      body: Center(
        child: Column( 
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: const Text("Silmek ister misiniz ? "),
                  action: SnackBarAction(label: "Evet", onPressed: (){
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Silindi")));
                  }),
                  )
              );
            }, child: const Text("Snackbar")),
            
            ElevatedButton(onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: const Text("Silmek ister misiniz ? ", style: TextStyle(color: Colors.indigoAccent),),
                  backgroundColor: Colors.brown,
                  action: SnackBarAction(label: "Evet", textColor: Colors.amber, onPressed: (){
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: const Text("Silindi")));
                  }),
                  )
              );
            }, child: const Text("Snackbar (ÖZEL)")),

            ElevatedButton(onPressed: () {
              showDialog(
                context: context,
                builder: (BuildContext context){
                  return AlertDialog(
                    title: const Text("BAŞLIK"),
                    content: const Text("İÇerik içerik içerik içerik"),
                    actions: [
                      TextButton(onPressed: (){
                        print("İptallll");
                        Navigator.pop(context);
                      }, child: const Text("İptal")),
                      TextButton(onPressed: (){
                        print("Tamammm");
                        Navigator.pop(context);
                      }, child: const Text("Tamam"))
                    ],
                  );
                }
                );

            }, child: const Text("Alert")),

            ElevatedButton(onPressed: () {
              showDialog(
                context: context,                
                builder: (BuildContext context){
                  return AlertDialog(
                    title: const Text("BAŞLIK"),
                    content: TextField(controller: tfControl, decoration: const InputDecoration(hintText: "input"),),
                    backgroundColor: Colors.green,
                    actions: [
                      TextButton(onPressed: (){
                        print("İptallll");
                        Navigator.pop(context);
                      }, child: const Text("İptal", style: TextStyle(color: Colors.amber),)),
                      TextButton(onPressed: (){
                        print("KAydedilen text: ${tfControl.text}");
                        Navigator.pop(context);
                        tfControl.text = "";
                      }, child: const Text("KAYDET", style: TextStyle(fontStyle: FontStyle.normal, fontWeight: FontWeight.bold,color: Colors.teal),))
                    ],
                  );
                }
                );
            }, child: const Text("Alert (ÖZEL)")),
          ],
        ),
      ),
    );
  }
}