import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  final PageController _pageController = PageController();
  List<CalenderModel> dayList = [
    CalenderModel(dayNumber: '1', isFull: false),
    CalenderModel(dayNumber: '2', isFull: true),
    CalenderModel(dayNumber: '3', isFull: false),
    CalenderModel(dayNumber: '4', isFull: false),
    CalenderModel(dayNumber: '5', isFull: false),
    CalenderModel(dayNumber: '6', isFull: false),
    CalenderModel(dayNumber: '7', isFull: false),
    CalenderModel(dayNumber: '8', isFull: false),
    CalenderModel(dayNumber: '9', isFull: false),
    CalenderModel(dayNumber: '10', isFull: false),
    CalenderModel(dayNumber: '11', isFull: false),
    CalenderModel(dayNumber: '12', isFull: false),
    CalenderModel(dayNumber: '13', isFull: false),
    CalenderModel(dayNumber: '14', isFull: false),
    CalenderModel(dayNumber: '15', isFull: false),
    CalenderModel(dayNumber: '16', isFull: false),
    CalenderModel(dayNumber: '17', isFull: false),
    CalenderModel(dayNumber: '18', isFull: false),
    CalenderModel(dayNumber: '19', isFull: false),
    CalenderModel(dayNumber: '20', isFull: false),
    CalenderModel(dayNumber: '21', isFull: false),
    CalenderModel(dayNumber: '22', isFull: false),
    CalenderModel(dayNumber: '23', isFull: false),
    CalenderModel(dayNumber: '24', isFull: false),
    CalenderModel(dayNumber: '25', isFull: false),
    CalenderModel(dayNumber: '26', isFull: false),
    CalenderModel(dayNumber: '27', isFull: false),
    CalenderModel(dayNumber: '28', isFull: false),
    CalenderModel(dayNumber: '29', isFull: false),
    CalenderModel(dayNumber: '30', isFull: false),
  ];
  List<CalenderModel> monthList = [
    CalenderModel(dayNumber: '1', isFull: false),
    CalenderModel(dayNumber: '2', isFull: false),
    CalenderModel(dayNumber: '3', isFull: false),
    CalenderModel(dayNumber: '4', isFull: false),
    CalenderModel(dayNumber: '5', isFull: false),
    CalenderModel(dayNumber: '6', isFull: false),
    CalenderModel(dayNumber: '7', isFull: false),
    CalenderModel(dayNumber: '8', isFull: false),
    CalenderModel(dayNumber: '9', isFull: false),
    CalenderModel(dayNumber: '10', isFull: false),
    CalenderModel(dayNumber: '11', isFull: false),
    CalenderModel(dayNumber: '12', isFull: false),
  ];
  List<CalenderModel> yearList = [
    CalenderModel(dayNumber: '1402', isFull: true),
    CalenderModel(dayNumber: '1403', isFull: false),
    CalenderModel(dayNumber: '1404', isFull: false),
    CalenderModel(dayNumber: '1405', isFull: false),
  ];
  int page = 0;
  bool isShow = false;
  double sizeItemCalender = 50;
  int selectedIndex = 0 ;

  List<Widget> _dateSections() {
    return [
      SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Wrap(
          children: yearList.map((e) => GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = yearList.indexOf(e);
                print('testtt ${yearList.indexOf(e)}');
              });
            },
            child: AnimatedContainer(
              width: selectedIndex == yearList.indexOf(e) ? sizeItemCalender + 10 : sizeItemCalender,
              height: selectedIndex == yearList.indexOf(e) ? sizeItemCalender + 10 : sizeItemCalender,
              margin: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                  borderRadius:  const BorderRadius.all(Radius.circular(12)),
                  border: Border.all(width: 2, color: Colors.grey)),
              duration: const Duration(milliseconds: 500),
              child: Column(
                children: [
                  Expanded(
                      child: Center(
                        child: Text(e.dayNumber),
                      )
                  ),
                  Container(
                    width: double.infinity,
                    height: 10,
                    decoration: const BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(12),bottomRight: Radius.circular(12))
                    ),
                  ),
                ],
              ),
            ),
          )).toList(),
        ),
      ),
      SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Wrap(
          children: monthList.map((e) => GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = monthList.indexOf(e);
                print('testtt ${monthList.indexOf(e)}');
              });
            },
            child: AnimatedContainer(
              width: selectedIndex == monthList.indexOf(e) ? sizeItemCalender + 10 : sizeItemCalender,
              height: selectedIndex == monthList.indexOf(e) ? sizeItemCalender + 10 : sizeItemCalender,
              margin: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                  borderRadius:  const BorderRadius.all(Radius.circular(12)),
                  border: Border.all(width: 2, color: Colors.grey)),
              duration: const Duration(milliseconds: 500),
              child: Column(
                children: [
                  Expanded(
                      child: Center(
                        child: Text(e.dayNumber),
                      )
                  ),
                  Container(
                    width: double.infinity,
                    height: 10,
                    decoration: const BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(12),bottomRight: Radius.circular(12))
                    ),
                  ),
                ],
              ),
            ),
          )).toList(),
        ),
      ),
      SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Wrap(
          children: dayList.map((e) => GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = dayList.indexOf(e);
                print('testtt ${dayList.indexOf(e)}');
              }); 
            },
            child: AnimatedContainer(
              width: selectedIndex == dayList.indexOf(e) ? sizeItemCalender + 10 : sizeItemCalender,
              height: selectedIndex == dayList.indexOf(e) ? sizeItemCalender + 10 : sizeItemCalender,
              margin: const EdgeInsets.fromLTRB(5, 5, 5, 20),
              decoration: BoxDecoration(
                  borderRadius:  const BorderRadius.all(Radius.circular(12)),
                  border: Border.all(width: 2, color: Colors.grey)),
              duration: const Duration(milliseconds: 500),
              child: Column(
                children: [
                  Expanded(
                      child: Center(
                        child: Text(e.dayNumber),
                      )
                  ),
                  Container(
                    width: double.infinity,
                    height: 10,
                    decoration: const BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(12),bottomRight: Radius.circular(12))
                    ),
                  ),
                ],
              ),
            ),
          )).toList(),
        ),
      ),
    ];
  }

  @override
  void initState() {
    _pageController.addListener(() {
      if (_pageController.page!.round() != page) {
        setState(() {
          page = _pageController.page!.round();
        });
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  width: double.infinity,
                  height: 400,
                  child: PageView.builder(
                    itemCount: 4,
                    controller: _pageController,
                    itemBuilder: (context, index) {
                      return SizedBox(
                        child: _dateSections()[index],
                      );
                    },
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SmoothPageIndicator(
                      controller: _pageController,
                      count: _dateSections().length,
                      effect: ExpandingDotsEffect(
                        dotWidth: 8,
                        dotHeight: 8,
                        activeDotColor: Colors.blue,
                        dotColor: Colors.grey.withOpacity(0.5),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        if (page == _dateSections().length - 1) {
                          isShow = true;
                          print('finish');
                        } else {
                          _pageController.animateToPage(page + 1,
                              duration: const Duration(milliseconds: 500),
                              curve: Curves.decelerate);
                        }
                      },
                      style: ButtonStyle(
                        minimumSize: MaterialStateProperty.all(Size(86, 60)),
                        shape: MaterialStateProperty.all(
                          const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(12)),
                          ),
                        ),
                      ),
                      child: Icon(page == _dateSections().length - 1
                          ? Icons.check
                          : Icons.arrow_forward),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CalenderModel {
  final String dayNumber;
  final bool isFull;

  CalenderModel({required this.dayNumber, required this.isFull});
}
