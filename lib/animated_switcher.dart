import 'package:flutter/material.dart';

class AnimatedSwitcher1 extends StatefulWidget {
  const AnimatedSwitcher1({Key? key}) : super(key: key);

  @override
  State<AnimatedSwitcher1> createState() => _AnimatedSwicherState();
}

class _AnimatedSwicherState extends State<AnimatedSwitcher1> {
  int counter = 0;
  bool isFirst = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            /// animated switcher
            AnimatedSwitcher(
                duration: const Duration(milliseconds: 200),
                transitionBuilder: (child, animation) {

                  return ScaleTransition(scale: animation, child: child,);
                  // return FadeTransition(opacity: animation, child: child,);
                  // return RotationTransition(turns: animation, child: child,);
                },
               child:Text(counter.toString(), key: UniqueKey() ,style: const TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
              ),),
            ),

            // animatedCrossFade
            AnimatedCrossFade(
                firstChild: Container(
                  width: 200,
                  height: 200,
                  color: Colors.redAccent,
                ),
                secondChild: Container(
                  width: 100,
                  height: 100,
                  color: Colors.amber,
                ),
                crossFadeState: isFirst? CrossFadeState.showFirst : CrossFadeState.showSecond,
                duration: const Duration(milliseconds: 600)),

            ElevatedButton(onPressed: () {
               setState(() {
                 counter ++;
                 isFirst = !isFirst;
               });
            }, child: const Text('+')),

            ElevatedButton(onPressed: () {
              setState(() {
                counter --;
              });
            }, child: const Text('-')),
          ],
        ),
      )
    );
  }
}
