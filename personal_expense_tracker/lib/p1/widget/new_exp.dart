import 'package:flutter/material.dart';

import '../../common/custom_text_field.dart';
import '../model/m1.dart';

class New_Exp extends StatefulWidget {
  const New_Exp({super.key, required this.onaddExp});
  final void Function(Expense expense) onaddExp;
  @override
  State<New_Exp> createState() => _New_ExpState();
}

var _enterTitle = '';
_saveTitleInput(String inp) {
  _enterTitle = inp;
}

class _New_ExpState extends State<New_Exp> {
  final _titleController = TextEditingController();
  final _amountController = TextEditingController();
  DateTime? _selectedDate;
  var _selectCat = Category.Lab_test;

  void _customDatePicker() async {
    final now = DateTime.now();
    final firstDate = DateTime(now.year - 6, now.month, now.day);
    final pickedDate = await showDatePicker(
        context: context,
        initialDate: now,
        firstDate: firstDate,
        lastDate: now);
    setState(() {
      _selectedDate = pickedDate;
    });
  }

  void _submitExpenses() {
    final enteredAmount = double.tryParse(_amountController.text);
    final amountIsValid = enteredAmount == null || enteredAmount <= 0;
    if (_titleController.text.trim().isEmpty ||
        amountIsValid ||
        _selectedDate == null) {
      showDialog(
          context: context,
          builder: (ctx) => AlertDialog(
                backgroundColor: Theme.of(ctx).cardColor,
                title: Text(
                  "Invalid Input",
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                content: Text("Please enter valid Title ,amount,date ,etc"),
                actions: [
                  ElevatedButton.icon(
                    onPressed: () {
                      Navigator.pop(ctx);
                    },
                    icon: Icon(
                      Icons.thumb_up_alt_rounded,
                      color: Theme.of(context).iconTheme.color,
                    ),
                    label: Text("Okay",
                        style: Theme.of(context).textTheme.titleSmall),
                  )
                ],
              ));

      return;
    }

    widget.onaddExp(Expense(
        title: _titleController.text,
        category: _selectCat,
        amount: enteredAmount,
        date: _selectedDate!));
    Navigator.pop(context);
  }

  @override
  void dispose() {
    _titleController.dispose();
    _amountController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(17, 17, 17, 7),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          IconButton(
            icon: Icon(
              Icons.cancel,
              color: Theme.of(context).iconTheme.color,
              size: 35,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          CustomtextFeild(
            onChange: _saveTitleInput,
            controller: _titleController,
            hintText: 'Title',
            obscureText: false,
            customicon: Icon(
              Icons.title_sharp,
              color: Theme.of(context).iconTheme.color,
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: CustomtextFeild(
                  onChange: _saveTitleInput,
                  controller: _amountController,
                  hintText: ' Amount',
                  obscureText: false,
                  customicon: Icon(
                    Icons.currency_rupee,
                    color: Theme.of(context).iconTheme.color,
                  ),
                ),
              ),
              SizedBox(
                width: 15,
              ),
              Text(_selectedDate != null
                  ? formated.format(_selectedDate!)
                  : "Select Date"),
              IconButton(
                  onPressed: _customDatePicker,
                  icon: Icon(
                    Icons.calendar_month,
                    color: Theme.of(context).iconTheme.color,
                  )),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: 15,
              ),
              Expanded(
                child: DropdownButton(
                    value: _selectCat,
                    items: Category.values
                        .map(
                          (e) => DropdownMenuItem(
                            value: e,
                            child: Text(
                              e.name.toUpperCase(),
                              style: Theme.of(context).textTheme.titleMedium,
                            ),
                          ),
                        )
                        .toList(),
                    onChanged: (value) {
                      if (value == null) {
                        return;
                      }
                      setState(() {
                        _selectCat = value;
                      });
                    }),
              ),
              SizedBox(
                width: 5,
              ),
              Expanded(
                child: SizedBox(
                  height: 64,
                  width: 14,
                  child: ElevatedButton(
                      // color: Color.fromARGB(120, 0, 255, 162),
                      onPressed: _submitExpenses,
                      child: Text("Save Exp")),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
