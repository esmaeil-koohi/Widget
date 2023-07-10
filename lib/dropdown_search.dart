import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';

class DropDownSearchPackage extends StatefulWidget {
  const DropDownSearchPackage({Key? key}) : super(key: key);

  @override
  State<DropDownSearchPackage> createState() => _DropDownSearchPackageState();
}

class _DropDownSearchPackageState extends State<DropDownSearchPackage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: DropdownSearch<String>(
             popupProps: PopupProps.menu(
               showSelectedItems: true,
               showSearchBox: true,
               searchFieldProps: TextFieldProps(
               decoration: InputDecoration(
                 hintText: 'جستجو کشور',
                 hintStyle: const TextStyle(color: Colors.grey),
                 enabledBorder: OutlineInputBorder(
                   borderSide: const BorderSide(color:  Colors.grey),
                   borderRadius: BorderRadius.circular(20),
                 ),
                 border: OutlineInputBorder(
                   borderSide: const BorderSide(color: Colors.grey),
                   borderRadius: BorderRadius.circular(20),
                 )
               ),
               ),
             ),
           items: const ['Brazil', 'Italia', 'Tunisia', 'Canada'],
            onChanged: print,
            selectedItem: 'Brazil',
            dropdownDecoratorProps: DropDownDecoratorProps(
              dropdownSearchDecoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color:  Colors.grey),
                  borderRadius: BorderRadius.circular(20),
                ),
                border: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.grey),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
          ),
        )
      ),
    );
  }
}
