import 'package:currencyapp/presentation_layer/screens/calaculate/widgets/customCrrencyWidget.dart';
import 'package:flutter/material.dart';

class CaculateScreen extends StatefulWidget {
  CaculateScreen({super.key});

  @override
  State<CaculateScreen> createState() => _CaculateScreenState();
}

class _CaculateScreenState extends State<CaculateScreen> {
  TextEditingController textController = TextEditingController();
  double egp = 0.0;
  @override
  void dispose() {
    textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Home',
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 72, 18, 198),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
        child: Column(
          children: [
            const SizedBox(
              height: 60,
            ),
            const CustomFromTo(),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  ' 1 USD  =  30.8957 EGP',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 100,
            ),
            Container(
              width: 100,
              child: TextField(
                controller: textController,
                onChanged: (value) {
                  setState(() {
                    double usd = double.parse(value);
                    egp = usd * 30.8957; // update the state variable
                    print(egp);
                  });
                },
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'USD',
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Icon(
              Icons.arrow_downward,
              size: 40,
            ),
            Text(
              '$egp',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
