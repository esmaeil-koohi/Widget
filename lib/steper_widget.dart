import 'package:flutter/material.dart';

class StepperWidget extends StatefulWidget {
  const StepperWidget({Key? key}) : super(key: key);

  @override
  State<StepperWidget> createState() => _StepperWidgetState();
}

class _StepperWidgetState extends State<StepperWidget> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stepper(
          steps: const [
            Step(
                title: Text('step 1'),
                content: Text('this is content number1')),
            Step(
                title: Text('Step 2'),
                content: Text('this is content number2')),
            Step(
                title: Text('Step 3'),
                content: Text('this is content number3')),
          ],
          onStepCancel: () {
            if(index != 0){
             setState(() =>index -= 1,);
            }
          },
          onStepContinue: () {
           if(index != 2){
             setState(() => index += 1,);
           }
          },
          onStepTapped: (value) {
            setState(() {
              index = value;
            });
          },
          currentStep: index,
        ),
      ),
    );
  }
}
