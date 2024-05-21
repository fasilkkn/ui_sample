
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:intl/intl.dart';
import 'package:ui_sample/controller/register_controller.dart';
import 'package:ui_sample/utils/app_colors.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}
class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    final registerController =
        Provider.of<RegisterController>(context, listen: true);
    return Scaffold(
      appBar: AppBar(
        actions: const [
          Icon(
            Icons.notifications,
            size: 30,
          ),
          SizedBox(
            width: 20,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const Text(
              'Register',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            const Divider(),
            const SizedBox(
              height: 30,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 10.0),
              child: Text('Name'),
            ),
            const SizedBox(
              height: 10,
            ),
            TextField(
              decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.transparent),
                      borderRadius: BorderRadius.circular(20)),
                  enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.transparent),
                      borderRadius: BorderRadius.circular(20)),
                  fillColor: AppColors.light,
                  filled: true,
                  hintText: 'Enter your full name'),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 10.0),
              child: Text('Whatsapp number'),
            ),
            const SizedBox(
              height: 10,
            ),
            TextField(
              decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.transparent),
                      borderRadius: BorderRadius.circular(20)),
                  enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.transparent),
                      borderRadius: BorderRadius.circular(20)),
                  fillColor: AppColors.light,
                  filled: true,
                  hintText: 'Enter your whatsapp number'),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 10.0),
              child: Text('Address'),
            ),
            const SizedBox(
              height: 10,
            ),
            TextField(
              decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.transparent),
                      borderRadius: BorderRadius.circular(20)),
                  enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.transparent),
                      borderRadius: BorderRadius.circular(20)),
                  fillColor: AppColors.light,
                  filled: true,
                  hintText: 'Enter your full address'),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 10.0),
              child: Text('Location'),
            ),
            const SizedBox(
              height: 10,
            ),
            TextField(
              controller: registerController.controller,
              readOnly: true,
              decoration: InputDecoration(
                fillColor: AppColors.light,
                filled: true,
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(color: Colors.transparent)),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(color: Colors.transparent)),
                labelText: 'Choose your location',
                suffixIcon: DropdownButton<String>(
                  icon: const Icon(Icons.arrow_drop_down),
                  onChanged: (String? newValue) {
                    setState(() {
                      registerController.selectedValue = newValue;
                      registerController.controller.text = newValue!;
                    });
                  },
                  items: registerController.dropdownOptions
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  underline: Container(),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 10.0),
              child: Text('Branch'),
            ),
            const SizedBox(
              height: 10,
            ),
            TextField(
              controller: registerController.controllerBranch,
              readOnly: true,
              decoration: InputDecoration(
                fillColor: AppColors.light,
                filled: true,
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(color: Colors.transparent)),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(color: Colors.transparent)),
                labelText: 'Select the branch',
                suffixIcon: DropdownButton<String>(
                  icon: const Icon(Icons.arrow_drop_down),
                  onChanged: (String? newValue) {
                    setState(() {
                      registerController.selectedBranchValue = newValue;
                      registerController.controllerBranch.text = newValue!;
                    });
                  },
                  items: registerController.branchOptions
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  underline: Container(),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 10.0),
              child: Text('Total Amount'),
            ),
            const SizedBox(
              height: 10,
            ),
            TextField(
                decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.transparent),
                  borderRadius: BorderRadius.circular(20)),
              enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.transparent),
                  borderRadius: BorderRadius.circular(20)),
              fillColor: AppColors.light,
              filled: true,
            )),
            const SizedBox(
              height: 18
            ),
            const Padding(
              padding: EdgeInsets.only(left: 10.0),
              child: Text('Payment option'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: [
                    Radio<String>(
                      value: 'Cash',
                      groupValue: registerController.selectedRadioValue,
                      onChanged: (String? value) {
                        setState(() {
                          registerController.selectedRadioValue = value;
                        });
                      },
                    ),
                    const Text('Cash'),
                  ],
                ),
                Row(
                  children: [
                    Radio<String>(
                      value: 'Card',
                      groupValue: registerController.selectedRadioValue,
                      onChanged: (String? value) {
                        setState(() {
                          registerController.selectedRadioValue = value;
                        });
                      },
                    ),
                    const Text('Card'),
                  ],
                ),
                Row(
                  children: [
                    Radio<String>(
                      value: 'Upi',
                      groupValue: registerController.selectedRadioValue,
                      onChanged: (String? value) {
                        setState(() {
                          registerController.selectedRadioValue = value;
                        });
                      },
                    ),
                    const Text('Upi'),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 10.0),
              child: Text('Balance Amount'),
            ),
            const SizedBox(
              height: 10,
            ),
            TextField(
              decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.transparent),
              borderRadius: BorderRadius.circular(20)),
              enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.transparent),
              borderRadius: BorderRadius.circular(20)),
              fillColor: AppColors.light,
              filled: true,
            )),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 10.0),
              child: Text('Treatment Date'),
            ),
            const SizedBox(
              height: 10,
            ),
            TextFormField(
              style: const TextStyle(),
              controller: registerController.dateInput,
              decoration: InputDecoration(
                fillColor: AppColors.light,
                filled: true,
                isDense: true,
                contentPadding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: const BorderSide(color: Colors.transparent)),
                suffixIcon: Icon(
                  Icons.calendar_today,
                  color: AppColors.buttonColor,
                ),
                focusedErrorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: const BorderSide(color: Colors.transparent)),
                errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: const BorderSide(color: Colors.transparent)),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: const BorderSide(color: Colors.transparent)),
              ),
              readOnly: true,
              onTap: () async {
                DateTime? pickedDate = await showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime.now(),
                    lastDate: DateTime(2100));

                if (pickedDate != null) {
                  String formattedDate =
                      DateFormat('dd-MM-yyyy').format(pickedDate);
                  setState(() {
                    registerController.dateInput.text = formattedDate;
                  });
                } else {}
              },
              validator: (value) => value!.isEmpty ? 'Select Date' : null,
            ),
            const SizedBox(
              height: 40,
            ),
            Container(
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                color: AppColors.buttonColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Center(
                child: Text(
                  'Save',
                  style: TextStyle(color: AppColors.light,
                  fontWeight: FontWeight.bold, fontSize: 17),
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
