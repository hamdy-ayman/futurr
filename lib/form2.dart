import 'package:flutter/material.dart';
import 'package:futurr/form1.dart';

class My_Ui2 extends StatefulWidget {
  const My_Ui2({Key? key}) : super(key: key);

  @override
  State<My_Ui2> createState() => _My_Ui2State();
}

class _My_Ui2State extends State<My_Ui2> {
  int x = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          height: double.infinity,
          width: double.infinity,
          color: const Color(0xff075E55),
          child: Column(children: [
            const Spacer(flex: 1,),
            const SizedBox(
                height: 150,
                width: 150,
                child: Image(image: AssetImage('assests/Whatsapp1.png'))),
            const Text(
              'Whatsapp',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 30),
            ),
            FutureBuilder(
                future: Future.delayed(const Duration(seconds: 4),() => 10),
                builder: (context, snapshot) {
                  if (snapshot.data ==10) {
                    return working(context);
                  }
                  else
                    {return const Text('');}
                }),
            const Spacer(flex: 1,),
          ])),
    );
  }
}

working(context) {
  Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const MyUi(),
      ));
}
