import 'package:flutter/material.dart';
import 'package:loanapp/Component/radiobutton.dart';
import 'package:loanapp/Component/userinput.dart';
import 'package:loanapp/Theme/theme.dart';
import '../Model/user_data.dart';

class UserInputForm extends StatefulWidget {
  const UserInputForm({super.key});

  @override
  State<UserInputForm> createState() => _UserInputFormState();
}

class _UserInputFormState extends State<UserInputForm> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController dependentController = TextEditingController();
  final TextEditingController annualIncomeController = TextEditingController();
  final TextEditingController loanTermController = TextEditingController();
  final TextEditingController cibilScoreController = TextEditingController();
  final TextEditingController residentialAssetValueController =
      TextEditingController();
  final TextEditingController commercialAssetValueController =
      TextEditingController();
  final TextEditingController luxxuryAssetValueController =
      TextEditingController();
  final TextEditingController bankAssetValueController =
      TextEditingController();
  int? educationStatus;
  int? employmentStatus;
  void submitForm() {
    if (_formKey.currentState?.validate() ?? false) {
      final UserData userdata = UserData(
        dependent: int.parse(dependentController.text),
        income: int.parse(annualIncomeController.text),
        term: int.parse(loanTermController.text),
        cibil: int.parse(cibilScoreController.text),
        residential: double.parse(residentialAssetValueController.text),
        commecial: double.parse(commercialAssetValueController.text),
        luxury: double.parse(luxxuryAssetValueController.text),
        bank: double.parse(bankAssetValueController.text),
        graduation: educationStatus ?? 0,
        selfemployed: employmentStatus ?? 0,
      );
      print(userdata);
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Loan Eligibilty Calculator',
      theme: mytheme(),
      home: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    const Color.fromARGB(255, 197, 173, 197),
                    Colors.blue.shade200,
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 40,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.calculate, size: 40, color: Colors.white),
                        Text(
                          "Loan Eligibility Calculator",
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ],
                    ),
                    Card(
                      margin: const EdgeInsets.all(20),
                      color: Colors.grey[200],
                      elevation: 10,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 20),
                        child: Form(
                          key: _formKey,
                          child: Column(
                            children: [
                              TextInput(
                                hintText: 'Enter the Number of Dependents',
                                labelText: 'Number of Dependents',
                                displayIcon: const Icon(Icons.person),
                                keyboardType: TextInputType.number,
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
                                displayIcon: const Icon(Icons.money),
                                controller: annualIncomeController,
                                keyboardType: TextInputType.number,
                                prefixtext: '₹',
                                customvalidator: (value) {
                                  if (value!.isEmpty) {
                                    return 'Please enter the annual income';
                                  }
                                  return null;
                                },
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              TextInput(
                                hintText: "Please Enter terms in Months.",
                                labelText: 'Loan Term',
                                displayIcon:
                                    const Icon(Icons.calendar_month_outlined),
                                controller: loanTermController,
                                keyboardType: TextInputType.number,
                                customvalidator: (value) {
                                  if (value!.isEmpty) {
                                    return 'Please enter the loan term';
                                  }
                                  return null;
                                },
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              TextInput(
                                hintText: 'Please enter your Cibil Score',
                                labelText: 'Cibil Score',
                                displayIcon: const Icon(Icons.score),
                                controller: cibilScoreController,
                                keyboardType: TextInputType.number,
                                customvalidator: (value) {
                                  if (value!.isEmpty) {
                                    return 'Please enter the Cibil Score';
                                  } else if (int.parse(value) > 900) {
                                    return 'Please enter a valid Cibil Score';
                                  } else if (int.parse(value) < 300) {
                                    return 'Please enter a valid Cibil Score';
                                  }
                                  return null;
                                },
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              TextInput(
                                hintText:
                                    'Please enter your Residential Asset Evaluation',
                                labelText: 'Residential Asset Value',
                                displayIcon: const Icon(Icons.home),
                                controller: residentialAssetValueController,
                                keyboardType: TextInputType.number,
                                prefixtext: '₹',
                                customvalidator: (value) {
                                  if (value!.isEmpty) {
                                    return 'Please enter the Residential Evidence';
                                  }
                                  return null;
                                },
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              TextInput(
                                hintText:
                                    'Please Enter the Commercial Asset Value',
                                labelText: 'Commercial Asset Value',
                                displayIcon: const Icon(Icons.shopping_bag),
                                controller: commercialAssetValueController,
                                keyboardType: TextInputType.number,
                                customvalidator: (value) {
                                  if (value!.isEmpty) {
                                    return 'Please enter the Commercial Asset Value';
                                  }
                                  return null;
                                },
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              TextInput(
                                hintText:
                                    'Please Enter the Luxxury Asset Value',
                                labelText: 'Luxxury Asset Value',
                                displayIcon: const Icon(Icons.airplane_ticket),
                                controller: luxxuryAssetValueController,
                                keyboardType: TextInputType.number,
                                prefixtext: '₹',
                                customvalidator: (value) {
                                  if (value!.isEmpty) {
                                    return 'Please enter the Luxxury Asset Value';
                                  }
                                  return null;
                                },
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              TextInput(
                                hintText: 'Please Enter the Bank Asset Value',
                                labelText: 'Bank Asset Value',
                                displayIcon: const Icon(Icons.savings),
                                prefixtext: '₹',
                                controller: bankAssetValueController,
                                keyboardType: TextInputType.number,
                                customvalidator: (value) {
                                  if (value!.isEmpty) {
                                    return 'Please enter the Bank Asset Value';
                                  }
                                  return null;
                                },
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      "Graduation Status",
                                      style: TextStyle(fontSize: 17),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        UserChoice(
                                          value: 0,
                                          groupValue: educationStatus ?? 0,
                                          onChanged: (value) {
                                            setState(() {
                                              educationStatus = value!;
                                            });
                                          },
                                        ),
                                        const Text("Graduate"),
                                        UserChoice(
                                          value: 1,
                                          groupValue: educationStatus ?? 0,
                                          onChanged: (value) {
                                            setState(() {
                                              educationStatus = value!;
                                            });
                                          },
                                        ),
                                        const Text("Not Graduate"),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      "Self Employed Status",
                                      style: TextStyle(fontSize: 17),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        UserChoice(
                                          value: 0,
                                          groupValue: employmentStatus ?? 0,
                                          onChanged: (value) {
                                            setState(() {
                                              employmentStatus = value;
                                              print(employmentStatus);
                                            });
                                          },
                                        ),
                                        const Text("Yes"),
                                        UserChoice(
                                          value: 1,
                                          groupValue: employmentStatus ?? 0,
                                          onChanged: (value) {
                                            setState(() {
                                              employmentStatus = value;
                                              print(employmentStatus);
                                            });
                                          },
                                        ),
                                        const Text("No"),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color.fromARGB(255, 128, 151, 203),
                      ),
                      child: ElevatedButton(
                        onPressed: () {
                          submitForm();
                        },
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.transparent,
                          backgroundColor: Colors.transparent,
                          elevation: 10,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: const Text(
                          "Submit",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
