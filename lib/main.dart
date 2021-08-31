import 'package:expenses/components/transaction_list.dart';
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
  final titleController = TextEditingController();
  final valueController = TextEditingController();

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
         TransactionList(_transactions),
          Card(
            elevation: 5,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: <Widget>[
                  TextField(
                    controller: titleController,
                    decoration: InputDecoration(
                      labelText: 'Título'
                    ),
                  ),
                  TextField(
                    controller: valueController,
                    decoration: InputDecoration(
                      labelText: 'Valor (R\$)'
                    )
                  ),
                  FlatButton(
                    onPressed: (){},
                    child: Text('Nova Transação'),
                    textColor: Colors.purple,
                  )
                ],
              ),
            ),
          )
        ]
      ),
    );
  }
}