import 'package:flutter/material.dart';
import 'package:flutter_primeiro_projeto/pages/dialogs/my_dialog.dart';

class DialogsPage extends StatelessWidget {
  const DialogsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dialogs'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (_) {
                      return MyDialog(context);
                    },
                  );
                },
                child: const Text('Dialog')),
            ElevatedButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return SimpleDialog(
                        title: const Text('Simple Dialog'),
                        contentPadding: const EdgeInsets.all(10),
                        children: [
                          const Padding(
                            padding: EdgeInsets.all(10),
                            child: Text('Título'),
                          ),
                          TextButton(
                            onPressed: () => Navigator.of(context).pop(),
                            child: const Text('Fechar Dialog'),
                          )
                        ],
                      );
                    },
                  );
                },
                child: const Text('SimpleDialog')),
            ElevatedButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: const Text('Simple Dialog'),
                        content: const SingleChildScrollView(
                          child: ListBody(
                            children: [
                              Padding(
                                padding: EdgeInsets.all(10),
                                child: Text('Deseja realmente salvar?'),
                              ),
                            ],
                          ),
                        ),
                        actions: [
                          TextButton(
                            onPressed: () => Navigator.of(context).pop(),
                            child: const Text('Cancelar'),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: const Text('Confirmar'),
                          ),
                        ],
                      );
                    },
                  );
                },
                child: const Text('AlertDialog')),
            ElevatedButton(
                onPressed: () async {
                  final selectedTime = await showTimePicker(
                    context: context,
                    initialTime: TimeOfDay.now(),
                  );
                  print('O horário selecionado foi $selectedTime');
                },
                child: const Text('TimePicker')),
            ElevatedButton(onPressed: () async {
               final selectedDate = await showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(2000),
                    lastDate: DateTime(2025),
                  );
                  print('A data selecionada foi $selectedDate');
            }, child: const Text('DatePicker')),
          ],
        ),
      ),
    );
  }
}
