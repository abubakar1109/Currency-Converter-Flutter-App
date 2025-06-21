import 'package:flutter/material.dart';

class CurrencyConverter extends StatefulWidget {
  const CurrencyConverter({super.key});

  @override
  State<CurrencyConverter> createState() => _CurrencyConverterState();
}

class _CurrencyConverterState extends State<CurrencyConverter> {
  final TextEditingController dollartext = TextEditingController();
  double result = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.yellow,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                result.toStringAsFixed(2) + " PKR",
                style:
                    const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextField(
                  keyboardType: TextInputType.number,
                  controller: dollartext,
                  decoration: InputDecoration(
                      hintText: "Enter Amount in USD",
                      prefixIcon: const Icon(Icons.monetization_on),
                      filled: true,
                      fillColor: Colors.white,
                      enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Colors.black,
                          ),
                          borderRadius: BorderRadius.circular(100)),
                      focusedBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: Colors.black, width: 2),
                          borderRadius: BorderRadius.circular(100))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      result = double.tryParse(dollartext.text) != null
                          ? double.parse(dollartext.text) * 283.23
                          : 0;
                    });
                  },
                  style: ButtonStyle(
                      backgroundColor:
                          WidgetStateProperty.all(Colors.yellowAccent),
                      side: WidgetStateProperty.all(const BorderSide(
                          color: Color.fromARGB(255, 0, 0, 0))),
                      fixedSize: WidgetStateProperty.all(const Size(335, 55))),
                  child: const Text(
                    "Convert",
                    style: TextStyle(
                        fontSize: 25,
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontWeight: FontWeight.bold),
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
