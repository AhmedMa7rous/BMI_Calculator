import 'dart:math';

import 'package:bmi_calculator/modules/result/result.dart';
import 'package:bmi_calculator/shared/components/components.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  //MARK: - Properties
  bool isMale = true;
  double userHeight = 60;
  int weight = 40;
  int age = 18;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0a0f21),
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: const Text(
          'BMI CALCULATOR',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          isMale = true;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: isMale ? Colors.red : const Color(0xFF1d1f33)
                        ),
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image(
                              image: AssetImage('assets/images/male.png'),
                              height: 60,
                              width: 60,
                              color: Colors.white,
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              'MALE',
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.grey
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          isMale = false;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: isMale ? const Color(0xFF1d1f33) : Colors.red
                        ),
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image(
                              image: AssetImage('assets/images/female.png'),
                              height: 60,
                              width: 60,
                              color: Colors.white,
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              'FEMALE',
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.grey
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: const Color(0xFF1d1f33)
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'HEIGHT',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.grey
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                     Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          '${userHeight.round()}',
                          style: const TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Colors.white
                          ),
                        ),
                        const Text(
                          'CM',
                          style: TextStyle(
                              fontSize: 10,
                              color: Colors.grey
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Slider(
                      value: userHeight,
                      min: 60,
                      max: 250,
                      activeColor: Colors.red,
                      onChanged: (value) {
                        setState(() {
                          userHeight = value;
                        });
                      },
                    )
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: const Color(0xFF1d1f33)
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'WEIGHT(KG)',
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.grey
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Text(
                            '$weight',
                            style: const TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Colors.white
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              OperationButton(
                                heroTag: 'weight-',
                                icon: const Icon(
                                  Icons.remove,
                                  size: 30,
                                  color: Colors.white,
                                ),
                                completion: () {
                                  setState(() {
                                    weight--;
                                  });
                                },
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              OperationButton(
                                heroTag: 'weight+',
                                icon: const Icon(
                                  Icons.add,
                                  size: 30,
                                  color: Colors.white,
                                ),
                                completion: () {
                                  setState(() {
                                    weight++;
                                  });
                                }
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: const Color(0xFF1d1f33)
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'AGE',
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.grey
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Text(
                            '$age',
                            style: const TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Colors.white
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              OperationButton(
                                heroTag: 'age-',
                                icon: const Icon(
                                  Icons.remove,
                                  size: 30,
                                  color: Colors.white,
                                ),
                                completion: () {
                                  setState(() {
                                    age--;
                                  });
                                }
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              OperationButton(
                                  heroTag: 'age+',
                                  icon: const Icon(
                                    Icons.add,
                                    size: 30,
                                    color: Colors.white,
                                  ),
                                  completion: () {
                                    setState(() {
                                      age++;
                                    });
                                  }
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              width: double.infinity,
              height: 80,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.red,
              ),
              child: MaterialButton(
                onPressed: () {
                  double result = weight / pow(userHeight / 100, 2);
                  
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Result(result: result)));
                },
                child: const Text(
                  'CALCULATE',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Colors.white
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
