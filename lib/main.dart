
import 'package:expenses/components/transaction_user.dart';
import 'package:expenses/models/transaction.dart';
import 'package:flutter/material.dart';
main() => runApp(ExpensesApp());
class ExpensesApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MyHomePage());
  }
}

class MyHomePage extends StatelessWidget{
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( 
        title: Text('Despesas Pessoais')
      ),
      body: Column(
        children: <Widget> [
          Container(
            width: double.infinity,
            child:Card(
                color: Colors.blue[600],
                elevation: 5,
                child: Text('Gráfico')
              ),
          ),
         TransactionUser()
        ]
      ),
    );
  }
}