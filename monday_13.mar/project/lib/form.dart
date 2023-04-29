import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:project/theme/theme_manager.dart';
import 'Model.dart';

class MyForm extends StatefulWidget {
  const MyForm({super.key});

  @override
  State<MyForm> createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  bool obscureText = true;

  TextEditingController daycontroller = new TextEditingController();
  TextEditingController monthcontroller = new TextEditingController();
  TextEditingController yearcontroller = new TextEditingController();

  final _keyRom = GlobalKey<FormState>();
  final emailControler = TextEditingController();
  final passwordControler = TextEditingController();
  final FullNameControler = TextEditingController();
  bool _autovalidate = false;

  String? gender;
  bool displaymonthlist = false;
  bool displaydaylist = false;
  bool displayyearlist = false;
  Details details = new Details();
  List country = [
    {"title": "jordan", "value": "1"},
    {"title": "canada", "value": "2"},
    {"title": "usa", "value": "3"},
    {"title": "brazil", "value": "4"},
  ];
  String defaultValue = "";
  List<String> monthlist = [
    "1",
    "2",
    "3",
    "4",
    "5",
    "6",
    "7",
    "8",
    "9",
    "10",
    "11",
    "12"
  ];
  List<String> daylist = [
    "1",
    "2",
    "3",
    "4",
    "5",
    "6",
    "7",
    "8",
    "9",
    "10",
    "11",
    "12",
    "13",
    "14",
    "15",
    "16",
    "17",
    "18",
    "19",
    "20",
    "21",
    "22",
    "23",
    "24",
    "25",
    "26",
    "27",
    "28",
    "29",
    "30",
  ];
  List<String> yearlist = [
    "2000",
    "2001",
    "2002",
    "2003",
    "2004",
    "2005",
    "2006",
    "2007",
    "2008",
    "2009",
    "2010",
    "2011"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        actions: [
          Switch(
              value: ThemeManager._themeMode == ThemeMode.dark,
              onChanged: (newValue) {
                _themeManager.toggleTheme(newValue);
              })
        ],
        title: Text('Login'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _keyRom,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                FlutterLogo(
                  size: 60,
                ),
                TextFormField(
                  controller: FullNameControler,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'pleas enter Full Name ';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                      label: Text('Full Name'),
                      hintText: 'emaple:leen talal ',
                      prefixIcon: Icon(
                        Icons.person_pin,
                        size: 35,
                      )),
                ),
                TextFormField(
                  controller: emailControler,
                  keyboardType: TextInputType.emailAddress,
                  validator: (value) {
                    if (value == null ||
                        value.isEmpty ||
                        !EmailValidator.validate(value)) {
                      return 'pleas enter email addres ';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                      label: Text('Email'),
                      hintText: 'emaple.joine.com',
                      prefixIcon: Icon(Icons.email)),
                ),
                SizedBox(
                  height: 10,
                ),
                InputDecorator(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.0)),
                    contentPadding: const EdgeInsets.all(10),
                  ),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton<String>(
                        value: defaultValue,
                        isDense: true,
                        isExpanded: true,
                        menuMaxHeight: 350,
                        items: [
                          const DropdownMenuItem(
                              child: Text(
                                "Select Coountry",
                                style: TextStyle(color: Colors.grey),
                              ),
                              value: ""),
                          ...country.map<DropdownMenuItem<String>>((e) {
                            return DropdownMenuItem(
                                child: Text(e['title']), value: e['value']);
                          }).toList(),
                        ],
                        onChanged: (newvalue) {
                          // setState(
                          //   () =>
                          //     defaultValue = newvalue!,
                          //     _keyRom.currentState!.validate(){

                          //     }

                          // );
                          setState(() => defaultValue = newvalue!);
                          validator:
                          (value) {
                            if (value == null || value.isEmpty) {
                              return 'pleas select country ';
                            }
                            return null;
                          };
                        }),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "Gender: ",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    Expanded(
                      child: RadioListTile(
                        title: Text("Male"),
                        value: "male",
                        groupValue: gender,
                        onChanged: (value) {
                          setState(() {
                            gender = value.toString();
                            Icon(Icons.male);
                          });
                        },
                      ),
                    ),
                    Expanded(
                      child: RadioListTile(
                        title: Text("Female"),
                        value: "female",
                        groupValue: gender,
                        onChanged: (value) {
                          setState(() {
                            gender = value.toString();
                            Icon(Icons.female);
                          });
                        },
                      ),
                    ),
                  ],
                ),
                Divider(),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Text("Day"),
                          inputField("Day", daycontroller),
                          displaydaylist
                              ? selectoptionfild("Day", daycontroller)
                              : SizedBox(),
                        ],
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Column(
                        children: [
                          Text("Month"),
                          inputField("Month", monthcontroller),
                          displaymonthlist
                              ? selectoptionfild("Month", monthcontroller)
                              : SizedBox(),
                        ],
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Column(
                        children: [
                          Text("Year"),
                          inputField("Year", yearcontroller),
                          displayyearlist
                              ? selectoptionfild("Year", yearcontroller)
                              : SizedBox(),
                        ],
                      ),
                      SizedBox(
                        width: 30,
                      ),
                    ],
                  ),
                ),

                // ignore: prefer_const_constructors

                TextFormField(
                  controller: passwordControler,
                  obscureText: obscureText,
                  keyboardType: TextInputType.visiblePassword,
                  validator: (value) {
                    if (value == null || value.length < 6) {
                      return 'pleas enter password ';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                      label: Text('Passsword'),
                      hintText: '*****',
                      suffix: InkWell(
                        onTap: () {
                          setState(() {
                            obscureText = !obscureText;
                          });
                        },
                        child: obscureText
                            ? Icon(Icons.visibility)
                            : Icon(Icons.visibility_off),
                      ),
                      prefixIcon: Icon(Icons.password)),
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () {
                        _handLoginAction();
                      },
                      child: Text('Sumbmit')),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  _handLoginAction() {
    if (_keyRom.currentState!.validate()) {
      //_keyRom.currentState?.save();
      ScaffoldMessenger.of(context)
          .showSnackBar(const SnackBar(content: Text('Procesing Data')));

      // String email = emailControler.text;
      Navigator.pushNamed(context, "/home");

      // Navigator.push(
      //   context,
      //   MaterialPageRoute(
      //     builder: (context) => HomePage(
      //       email: email,
      //     ),
      //   ),
      // );
    }

    //  _validateForm() {
    //   bool _isValid = _keyRom.currentState.validate();

    //   if (_selectedItem == null) {
    //     setState(() => _dropdownError = "Please select an option!");
    //     _isValid = false;
    //   }

    //   if (_isValid) {
    //     //form is valid
    //   }
    // }
  }

  Widget inputField(String type, TextEditingController controller) {
    return Container(
      width: 110,
      height: 50,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        color: Colors.white,
        borderRadius: BorderRadius.circular(6),
      ),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
            border: InputBorder.none,
            suffixIcon: GestureDetector(
                onTap: () {
                  switch (type) {
                    case "Day":
                      displaydaylist = !displaydaylist;
                      break;

                    case "Month":
                      displaymonthlist = !displaymonthlist;
                      break;
                    case "Year":
                      displaydaylist = !displayyearlist;
                      break;
                  }
                },
                child: Icon(Icons.arrow_downward))),
      ),
    );
  }

  Widget selectoptionfild(String type, TextEditingController controller) {
    return Container(
        width: 130,
        height: 50,
        decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            color: Colors.white,
            borderRadius: BorderRadius.circular(9),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                spreadRadius: 1,
                blurRadius: 3,
                offset: Offset(0, 1),
              )
            ]),
        child: ListView.builder(
            itemCount: type == "Day"
                ? daylist.length
                : type == "Month"
                    ? monthlist.length
                    : yearlist.length,
            itemBuilder: ((context, index) {
              return GestureDetector(
                onTap: () {
                  setState(() {
                    switch (type) {
                      case "Day":
                        controller.text = daylist[index];
                        break;
                      case "Month":
                        controller.text = monthlist[index];
                        break;

                      case "Year":
                        controller.text = yearlist[index];
                        break;
                    }
                  });
                },
                child: ListTile(
                  title: Text(type == "Day"
                      ? daylist[index]
                      : type == "Month"
                          ? monthlist[index]
                          : yearlist[index]),
                ),
              );
            })));
  }
}
