
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchInList extends StatelessWidget {
   SearchInList({Key? key}) : super(key: key);

  final ValueNotifier<String> searchFilterCityBtnSheet = ValueNotifier<String>('');
  List<String> cityList = ['Shiraz', 'Tehran', 'Esfahan', 'Mashhad'];

  @override
  Widget build(BuildContext context) {
    final  width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(child: Column(
        children: [
        searchBox(width),
        Expanded(
           child: ValueListenableBuilder(
           valueListenable: searchFilterCityBtnSheet,
             builder: (context, value, child) {
             final list = cityList.where((element) => element.toLowerCase().contains(value)).toList();
               return ListView.builder(
                 itemCount: list.length,
                 itemBuilder: (context, index) {
                   return SizedBox(
                     width: width,
                     height: 60,
                     child: Center(child: Text(list[index]),),
                   );
                 },);
             },
           )
       ),
        ],
      )),
    );
  }

  Widget searchBox(double width) {
    return Container(
      width: width,
      height: 50,
      decoration: BoxDecoration(
          color: Colors.white60,
          borderRadius: BorderRadius.circular(12),
          boxShadow: const [BoxShadow(color: Colors.black12, blurRadius: 1)]),
      child: Center(
        child:TextField(
          onChanged: (value) {
            searchFilterCityBtnSheet.value = value;
          },
          decoration: const InputDecoration(
            prefixIcon: Icon(
              CupertinoIcons.search,
              color: Colors.deepPurple,
            ),
            hintText: 'Search City',
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }
}
