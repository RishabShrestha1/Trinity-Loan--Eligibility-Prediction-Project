import 'package:flutter/material.dart';
import 'package:loanapp/Component/userinput.dart';

class UserInputForm extends StatefulWidget {
  const UserInputForm({super.key});

  @override
  State<UserInputForm> createState() => _UserInputFormState();
}

class _UserInputFormState extends State<UserInputForm> {
  final TextEditingController dependentController = TextEditingController();
  final TextEditingController annualIncomeController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Loan Eligibilty Calculator'),
        ),
        body: Center(
          child: Card(
            margin: const EdgeInsets.all(20),
            color: Colors.grey[200],
            elevation: 10,
            child: Column(
              children: [
                TextInput(
                  hintText: 'Enter the Number of Dependents',
                  labelText: 'Number of Dependents',
                  displayIcon: Icon(Icons.person),
                  customvalidator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter the number of dependents';
                    }
                    return null;
                  },
                  controller: dependentController,
                ),
                const SizedBox(
                  height: 20,
                ),
                TextInput(
                  hintText: 'Please enter the Annual Income',
                  labelText: 'Annual Income',
                  displayIcon: Icon(Icons.money),
                  controller: annualIncomeController,
                  customvalidator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter the annual income';
                    }
                    return null;
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
