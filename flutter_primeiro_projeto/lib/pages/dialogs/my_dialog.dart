import 'package:flutter/material.dart';

class MyDialog extends Dialog {
  MyDialog(BuildContext context)
      : super(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            child: Container(
              width: 300,
              height: 300,
              child: Column(
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
              ),
            ));
}
