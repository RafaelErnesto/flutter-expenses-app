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
  final _transactions = [
    Transaction(id: 't1', title: 'Novo Tênis de Corrida', value: 310.76, date: DateTime.now()),
    Transaction(id: 't2', title: 'Conta de Luz', value: 211.30, date: DateTime.now()),
  ];

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
          Container(
            width: double.infinity,
            child:Card(
                child: Text('Lista de Transações'),
                color:Colors.green[600],
                elevation: 5,
              ),
          ),
        ]
      ),
    );
  }
}