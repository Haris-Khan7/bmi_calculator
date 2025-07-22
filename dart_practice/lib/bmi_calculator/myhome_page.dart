import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController wtController = TextEditingController();
  TextEditingController ftController = TextEditingController();
  TextEditingController htController = TextEditingController();
  var result = " ";
  var bgColor = Colors.indigo.shade300;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
        centerTitle: true,
        backgroundColor: bgColor,
      ),
      body: Container(
        color: bgColor,
        child: Center(
          child: Container(
            width: 250,

            decoration: BoxDecoration(
              borderRadius: BorderRadiusGeometry.all(Radius.circular(25)),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'BMI Calculator',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    color: Colors.teal,
                  ),
                ),
                SizedBox(height: 25),
                TextFormField(
                  controller: wtController,
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    label: Text('Enter Your Weight in kgs'),
                    prefixIcon: Icon(Icons.line_weight),
                    hintText: 'Weight in kgs',
                  ),
                ),
                SizedBox(height: 10),
                TextFormField(
                  controller: ftController,
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    label: Text('Enter Your Height in feet'),
                    prefixIcon: Icon(Icons.height),
                    hintText: 'Height in feet',
                  ),
                ),
                SizedBox(height: 13),

                TextFormField(
                  controller: htController,
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    label: Text('Enter Your height in inches'),
                    prefixIcon: Icon(Icons.height),
                    hintText: 'Height in inches',
                  ),
                ),

                SizedBox(height: 12),
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: WidgetStateColor.transparent,
                  ),
                  onPressed: () {
                    var ft = ftController.text.toString();
                    var wt = wtController.text.toString();
                    var ht = htController.text.toString();

                    if (wt != '' && ft != '' && ht != '') {
                      var iWT = int.parse(wt);
                      var iFT = int.parse(ft);
                      var iHT = int.parse(ht);

                      var TotalHt = (iFT * 12) + iHT;
                      var tCM = TotalHt * 2.54;
                      var tM = tCM / 100;

                      var bmi = iWT / (tM * tM);

                      var msg = '';
                      if (bmi > 25) {
                        msg = "You're OverWeighted !!!";
                        bgColor = Colors.indigo.shade300;
                      } else if (bmi < 18) {
                        msg = "You're UnderWeighted !!";
                        bgColor = Colors.pink.shade300;
                      } else {
                        msg = "You're Healthy !!";
                        bgColor = Colors.teal.shade200;
                      }

                      setState(() {
                        result =
                            "$msg \n Your BMI is : ${bmi.toStringAsFixed(3)}";
                      });
                    } else {
                      setState(() {
                        result = "PLease fill all the field";
                      });
                    }
                  },
                  child: Text(
                    'Calculate',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.teal, fontSize: 17),
                  ),
                ),
                SizedBox(height: 15),

                Card(
                  elevation: 3,
                  shadowColor: Colors.blue.shade500,
                  borderOnForeground: true,
                  color: bgColor,
                  child: Text(
                    result,
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 17,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
