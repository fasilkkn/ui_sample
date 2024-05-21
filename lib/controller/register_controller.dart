import 'package:flutter/material.dart';

class RegisterController with ChangeNotifier {
  TextEditingController dateInput = TextEditingController();
  final TextEditingController controller = TextEditingController();
  final TextEditingController controllerBranch = TextEditingController();
  final List<String> branchOptions = [
    'Nadakkavu',
    'Edavannapara',
    'Mavoor',
    'Nellikode'
  ];
  final List<String> dropdownOptions = [
    'Calicut',
    'Malappuram',
    'Wayanadu',
    'Kannur'
  ];
  String? selectedRadioValue = 'Cash';
  String? selectedValue;
  String? selectedBranchValue;
}
