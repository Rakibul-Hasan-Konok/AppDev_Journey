import 'package:flutter/material.dart';
import 'widgets/calc_button.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  dynamic text = '0';
  double numOne = 0;
  double numTwo = 0;

  dynamic result = '';
  dynamic finalResult = '0';
  dynamic opr = '';
  dynamic preOpr = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text('Calculator'),
        backgroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            // Display
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Expanded(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    reverse: true,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        '$text',
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 80,
                        ),
                        maxLines: 1,
                        textAlign: TextAlign.right,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),

            // Buttons
            buttonRow(['AC', '+/-', '%', '/'], [Colors.grey, Colors.grey, Colors.grey, Colors.amber[700]!]),
            buttonRow(['7', '8', '9', 'x'], [Colors.grey[850]!, Colors.grey[850]!, Colors.grey[850]!, Colors.amber[700]!]),
            buttonRow(['4', '5', '6', '-'], [Colors.grey[850]!, Colors.grey[850]!, Colors.grey[850]!, Colors.amber[700]!]),
            buttonRow(['1', '2', '3', '+'], [Colors.grey[850]!, Colors.grey[850]!, Colors.grey[850]!, Colors.amber[700]!]),

            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                // Zero button (double width)
                ElevatedButton(
                  onPressed: () => calculation('0'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey[850],
                    shape: const StadiumBorder(),
                    padding: const EdgeInsets.fromLTRB(34, 20, 128, 20),
                  ),
                  child: const Text(
                    '0',
                    style: TextStyle(fontSize: 35, color: Colors.white),
                  ),
                ),
                CalcButton(btnText: '.', btnColor: Colors.grey[850]!, txtColor: Colors.white, onPressed: calculation),
                CalcButton(btnText: '=', btnColor: Colors.amber[700]!, txtColor: Colors.white, onPressed: calculation),
              ],
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }

  Widget buttonRow(List<String> texts, List<Color> colors) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: List.generate(
          4,
          (index) => CalcButton(
            btnText: texts[index],
            btnColor: colors[index],
            txtColor: Colors.white,
            onPressed: calculation,
          ),
        ),
      ),
    );
  }

  // Calculator logic
  void calculation(String btnText) {
    if (btnText == 'AC') {
      text = '0';
      numOne = 0;
      numTwo = 0;
      result = '';
      finalResult = '0';
      opr = '';
      preOpr = '';
    } else if (opr == '=' && btnText == '=') {
      if (preOpr == '+') {
        finalResult = add();
      } else if (preOpr == '-') {
        finalResult = sub();
      } else if (preOpr == 'x') {
        finalResult = mul();
      } else if (preOpr == '/') {
        finalResult = div();
      }
    } else if (['+', '-', 'x', '/', '='].contains(btnText)) {
      if (numOne == 0) {
        numOne = double.parse(result);
      } else {
        numTwo = double.parse(result);
      }

      if (opr == '+') {
        finalResult = add();
      } else if (opr == '-') {
        finalResult = sub();
      } else if (opr == 'x') {
        finalResult = mul();
      } else if (opr == '/') {
        finalResult = div();
      }

      preOpr = opr;
      opr = btnText;
      result = '';
    } else if (btnText == '%') {
      result = numOne / 100;
      finalResult = doesContainDecimal(result);
    } else if (btnText == '.') {
      if (!result.toString().contains('.')) {
        result = '$result.';
      }
      finalResult = result;
    } else if (btnText == '+/-') {
      result = result.toString().startsWith('-') ? result.toString().substring(1) : '-$result';
      finalResult = result;
    } else {
      result = result + btnText;
      finalResult = result;
    }

    setState(() {
      text = finalResult;
    });
  }

  String add() {
    result = (numOne + numTwo).toString();
    numOne = double.parse(result);
    return doesContainDecimal(result);
  }

  String sub() {
    result = (numOne - numTwo).toString();
    numOne = double.parse(result);
    return doesContainDecimal(result);
  }

  String mul() {
    result = (numOne * numTwo).toString();
    numOne = double.parse(result);
    return doesContainDecimal(result);
  }

  String div() {
    result = (numOne / numTwo).toString();
    numOne = double.parse(result);
    return doesContainDecimal(result);
  }

  String doesContainDecimal(dynamic result) {
    if (result.toString().contains('.')) {
      List<String> splitDecimal = result.toString().split('.');
      if (!(int.parse(splitDecimal[1]) > 0)) {
        return splitDecimal[0].toString();
      }
    }
    return result.toString();
  }
}
