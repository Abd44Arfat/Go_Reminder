import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:reminder/core/theming/colors.dart';
import 'package:reminder/core/theming/styles.dart';

class DropdownField extends StatefulWidget {
  final List<String> items;
  final String? hint;
  final String? initialValue;
  final Function(String?)? onChanged;
  final Function(String?)? onSaved;

  const DropdownField({
    super.key,
    required this.items,
    this.hint,
    this.initialValue,
    this.onChanged,
    this.onSaved,
  });

  @override
  State<DropdownField> createState() => _DropdownFieldState();
}

class _DropdownFieldState extends State<DropdownField> {
  String? _selectedValue;

  @override
  void initState() {
    super.initState();
    _selectedValue = widget.initialValue;
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: DropdownButtonFormField2<String>(
        isExpanded: true,
        decoration: InputDecoration(
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(15),
        borderSide: const BorderSide(
          color: ColorsManager.mainGreen,
          width: 2.0,

          
        ),
        
      ),
      
      contentPadding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
      border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
      
        borderSide: const BorderSide(
          
          color: ColorsManager.mainGreen, // Change this to the desired color
          width: 2.0,
        ),
        
      ),


          enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(15),
      borderSide: BorderSide(
        color: ColorsManager.lighterGray, // Change this to the desired color
        width: 2.0,
      
    ),
  ),
          
        ),
        hint: widget.hint != null ? Text(widget.hint!, style:  TextStyles.font12GreyRegular,) : null,
        items: widget.items
            .map((item) => DropdownMenuItem<String>(
              
              
                  value: item,
                  child: Text(
                    
                    item,
                    style: const TextStyle(
                      fontSize: 14,
                    ),
                  ),
                ))
            .toList(),
        value: _selectedValue,
        onChanged: (value) {
          setState(() {
            _selectedValue = value;
          });
          if (widget.onChanged != null) {
            widget.onChanged!(value);
          }
        },
        onSaved: (value) {
          _selectedValue = value;
          if (widget.onSaved != null) {
            widget.onSaved!(value);
          }
        },
        buttonStyleData: const ButtonStyleData(
          
          padding: EdgeInsets.only(right: 8),
        ),
        iconStyleData: const IconStyleData(
          
          icon: Icon(
            
            Icons.arrow_drop_down,
            color: Colors.black,
          ),
          iconSize: 24,
        ),
        dropdownStyleData: DropdownStyleData(
          
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        menuItemStyleData: const MenuItemStyleData(
          padding: EdgeInsets.symmetric(horizontal: 16),
        ),
      ),
    );
  }
}