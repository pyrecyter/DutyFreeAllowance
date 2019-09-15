import 'package:flutter/material.dart';
import 'calculator/display.dart';
import 'calculator/key-controller.dart';
import 'calculator/key-pad.dart';
import 'calculator/processor.dart';

class Calculator extends StatefulWidget {

	Calculator({ Key key }) : super(key: key);

	@override
	_CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {

	String _output;

	@override
	void initState() {
		
		KeyController.listen((event) => Processor.process(event));
		Processor.listen((data) => setState(() { _output = data; }));
		Processor.refresh();
		super.initState();
	}

	@override
	void dispose() {
		KeyController.dispose();
		Processor.dispose();
		super.dispose();
	}
  

	@override
	Widget build(BuildContext context) {

		Size screen = MediaQuery.of(context).size;

		double buttonSize = screen.width / 4;
		double displayHeight = screen.height - (buttonSize * 4.3) - (buttonSize);
	
		return Container(
			color: Color.fromARGB(196, 32, 64, 96),
			child: Column(
				
				mainAxisAlignment: MainAxisAlignment.center,
				children: <Widget>[

					Display(value: _output, height: displayHeight),
					KeyPad()
				]
			),
		);
	}
}