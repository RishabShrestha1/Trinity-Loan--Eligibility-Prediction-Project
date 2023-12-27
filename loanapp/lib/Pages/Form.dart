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
  final TextEditingController CibilScoreController = TextEditingController();
  final TextEditingController ResidentialAssetValueController =
      TextEditingController();
  final TextEditingController CommercialAssetValueController =
      TextEditingController();
  final TextEditingController LuxxuryAssetValueController =
      TextEditingController();
  final TextEditingController BankAssetValueController =
      TextEditingController();
  int EducationStatus = 0;
  int EmploymentStatus = 0;
  void submitForm() {
    if (_formKey.currentState?.validate() ?? false) {
      final UserData userdata = UserData(
        Dependent: int.parse(dependentController.text),
        Income: int.parse(annualIncomeController.text),
        term: double.parse(loanTermController.text),
        cibil: double.parse(CibilScoreController.text),
        residential: double.parse(ResidentialAssetValueController.text),
        commecial: double.parse(CommercialAssetValueController.text),
        luxury: double.parse(LuxxuryAssetValueController.text),
        bank: double.parse(BankAssetValueController.text),
        graduation: EducationStatus,
        selfemployed: EmploymentStatus,
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
                    Color.fromARGB(255, 197, 173, 197),
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.calculate, size: 40, color: Colors.white),
                        const Text(
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
                                displayIcon: Icon(Icons.person),
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
                                displayIcon: Icon(Icons.money),
                                controller: annualIncomeController,
                                keyboardType: TextInputType.number,
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
                                hintText:
                                    "Please Enter the Months you want the loan for.",
                                labelText: 'Loan Term',
                                displayIcon:
                                    Icon(Icons.calendar_month_outlined),
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
                                displayIcon: Icon(Icons.score),
                                controller: CibilScoreController,
                                keyboardType: TextInputType.number,
                                customvalidator: (value) {
                                  if (value!.isEmpty) {
                                    return 'Please enter the Cibil Score';
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
                                displayIcon: Icon(Icons.home),
                                controller: ResidentialAssetValueController,
                                keyboardType: TextInputType.number,
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
                                displayIcon: Icon(Icons.home_work_outlined),
                                controller: CommercialAssetValueController,
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
                                displayIcon: Icon(Icons.home),
                                controller: LuxxuryAssetValueController,
                                keyboardType: TextInputType.number,
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
                                displayIcon: Icon(Icons.home),
                                controller: BankAssetValueController,
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
                                    Text(
                                      "Graduation Status",
                                      style: TextStyle(fontSize: 17),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        UserChoice(
                                          value: 0,
                                          groupValue: EducationStatus,
                                          onChanged: (value) {
                                            setState(() {
                                              EducationStatus = value!;
                                            });
                                          },
                                        ),
                                        const Text("Graduate"),
                                        UserChoice(
                                          value: 1,
                                          groupValue: EducationStatus,
                                          onChanged: (value) {
                                            setState(() {
                                              EducationStatus = value!;
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
                                    Text(
                                      "Self Employed Status",
                                      style: TextStyle(fontSize: 17),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        UserChoice(
                                          value: 0,
                                          groupValue: EmploymentStatus,
                                          onChanged: (value) {
                                            setState(() {
                                              EmploymentStatus = value!;
                                              print(EmploymentStatus);
                                            });
                                          },
                                        ),
                                        const Text("Yes"),
                                        UserChoice(
                                          value: 1,
                                          groupValue: EmploymentStatus,
                                          onChanged: (value) {
                                            setState(() {
                                              EmploymentStatus = value!;
                                              print(EmploymentStatus);
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
                        color: Color.fromARGB(255, 128, 151, 203),
                      ),
                      child: ElevatedButton(
                        onPressed: () {
                          submitForm();
                        },
                        child: const Text(
                          "Submit",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.transparent,
                          backgroundColor: Colors.transparent,
                          elevation: 10,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
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
