

import 'package:flutter/material.dart';
class calculator extends StatefulWidget {
  const calculator({Key? key}) : super(key: key);

  @override
  State<calculator> createState() => _calculatorState();
}

class _calculatorState extends State<calculator> {
  String equation="0";
  String result="0";
  String expression="1";
  double equationFontsize=20.0;
  double resultFontsize=10.0;
  buttonPressed(String buttonText){
    setState((){
      if(buttonText=="c"){

      }else if(buttonText=="a"){
    }else if(buttonText=="a"){
      }else {
        if (equation == "0") {
          equation = buttonText;
        } else {
          equation = equation + buttonText;
        }
      }
    });

  }
  buildButton(String buttonText,double buttonHeight,Color buttonColor){
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: MediaQuery.of(context).size.height*0.1*buttonHeight,
        color: buttonColor,

padding: EdgeInsets.all(16.0),

child: Text(buttonText,style: TextStyle(
  fontSize: 10.0,fontWeight: FontWeight.normal,color: Colors.white
),),

      ),
    ) ;

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(title: Text("simple calculator"),
      ) ,
      body: Expanded(
        child: (
           Column(
            children: [
              Container(
                alignment: Alignment.centerRight,
                padding: EdgeInsets.fromLTRB(10, 20, 10, 0),
                child: Text(equation,style: TextStyle(fontSize: equationFontsize),),
              ),
              Container(
                alignment: Alignment.centerRight,
                padding: EdgeInsets.fromLTRB(10, 20, 10, 0),
                child: Text(result,style: TextStyle(fontSize: resultFontsize),),
              ),
              Expanded(
                  child: Divider(

              ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    child: Container(
                      width: MediaQuery.of(context).size.width*.15,
                      child: Table(
                        children: [
                          TableRow(
                            children: [
                             buildButton("c",1,Colors.purpleAccent),
                              buildButton("*",1,Colors.amber),
                              buildButton("b",1,Colors.purple),
                            ]
                            ,
                          ),
            TableRow(
            children: [
            buildButton("c",1,Colors.black54),
    buildButton("*",1,Colors.black54),
    buildButton("+",1,Colors.black54),
    ]
            ),
          TableRow(
            children: [
              buildButton("7",1,Colors.black54),
              buildButton("8",1,Colors.black54),
              buildButton("9",1,Colors.black54),
            ]
          ),
          TableRow(
            children: [
              buildButton("4",1,Colors.black54),
              buildButton("5",1,Colors.black54),
              buildButton("6",1,Colors.black54),
            ]
          ),
          TableRow(
            children: [
              buildButton("1",1,Colors.black54),
              buildButton("2",1,Colors.black54),
              buildButton("3",1,Colors.black54),
            ]
          ),
                          TableRow(
                              children: [
                                buildButton(".",1,Colors.black54),
                                buildButton("0",1,Colors.black54),
                                buildButton("00",1,Colors.black54),
                              ]
                          ),
                        ],

                      ),
                    ),
                  ),
                  SizedBox(
                    child: Container(
                      width:MediaQuery.of(context).size.width*0.25,
                      child:Table(
                        children: [
                          TableRow(
                            children:[
                              buildButton("*",1,Colors.amber),
                            ]
                          ),
    TableRow(
    children:[
    buildButton("-",1,Colors.amber),
    ]
    ),
    TableRow(
    children:[
    buildButton("+",1,Colors.amber),
    ]
    ), TableRow(
    children:[
    buildButton("=",1,Colors.amber),
    ]
    ),
                        ],
                      ),
                    ),
                  )
                ],
              )
            ],


          )
        ),
      ),
    );




  }
}
