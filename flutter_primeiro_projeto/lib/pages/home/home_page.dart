import 'package:flutter/material.dart';

enum PopupMenuPages {
  container,
  rowsColumns,
  mediaQuery,
  layoutBuilder,
  botoesRotacaoTexto,
  singleChildScrollView,
  listView,
  dialogs,
  snackbar,
  form,
  cidades,
  stack,
  bottomNavigatorBarAndIndexedStack,
  circleAvatar,
  colors,
  materialBanner,
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
        actions: [
          PopupMenuButton<PopupMenuPages>(
            tooltip: 'Selecione um item do menu',
            onSelected: (PopupMenuPages valueSelected) {
              switch (valueSelected) {
                case PopupMenuPages.container:
                  Navigator.of(context).pushNamed('/container');
                  break;
                case PopupMenuPages.rowsColumns:
                  Navigator.of(context).pushNamed('/rows_columns');
                  break;
                case PopupMenuPages.mediaQuery:
                  Navigator.of(context).pushNamed('/media_query');
                  break;
                case PopupMenuPages.layoutBuilder:
                  Navigator.of(context).pushNamed('/layout_builder');
                  break;
                case PopupMenuPages.botoesRotacaoTexto:
                  Navigator.of(context).pushNamed('/botoes_rotacao_texto');
                  break;
                case PopupMenuPages.singleChildScrollView:
                  Navigator.of(context)
                      .pushNamed('/single_child_scroll_view');
                  break;
                case PopupMenuPages.listView:
                  Navigator.of(context)
                      .pushNamed('/list_view');
                  break;
                case PopupMenuPages.dialogs:
                  Navigator.of(context).pushNamed('/dialogs');
                  break;
                case PopupMenuPages.snackbar:
                  Navigator.of(context).pushNamed('/snack_bar');
                  break;
                case PopupMenuPages.form:
                  Navigator.of(context).pushNamed('/form');
                  break;
                case PopupMenuPages.cidades:
                  Navigator.of(context).pushNamed('/cidades');
                  break;
                case PopupMenuPages.stack:
                  Navigator.of(context).pushNamed('/stack');
                  break;
                case PopupMenuPages.bottomNavigatorBarAndIndexedStack:
                  Navigator.of(context).pushNamed('/bottom_navigator_bar_indexed_stack');
                  break;
                case PopupMenuPages.circleAvatar:
                  Navigator.of(context).pushNamed('/circle_avatar');
                  break;
                case PopupMenuPages.colors:
                  Navigator.of(context).pushNamed('/colors');
                  break;
                case PopupMenuPages.materialBanner:
                  Navigator.of(context).pushNamed('/material_banner');
                  break;
              }
            },
            itemBuilder: (BuildContext context) {
              return <PopupMenuItem<PopupMenuPages>>[
                const PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.container,
                  child: Text('Container'),
                ),
                const PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.rowsColumns,
                  child: Text('Rows e Columns'),
                ),
                const PopupMenuItem<PopupMenuPages>(
                    value: PopupMenuPages.mediaQuery,
                    child: Text('Media Query')),
                const PopupMenuItem<PopupMenuPages>(
                    value: PopupMenuPages.layoutBuilder,
                    child: Text('Layout Builder')),
                const PopupMenuItem<PopupMenuPages>(
                    value: PopupMenuPages.botoesRotacaoTexto,
                    child: Text('Botões e Rotação de Texto')),
                const PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.singleChildScrollView,
                  child: Text('SingleChildScrollView'),
                ),
                const PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.listView,
                  child: Text('ListView'),
                ),
                const PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.dialogs,
                  child: Text('Dialogs'),
                ),
                const PopupMenuItem<PopupMenuPages>(
                    value: PopupMenuPages.snackbar,
                    child: Text('SnackBar')),
                const PopupMenuItem<PopupMenuPages>(
                    value: PopupMenuPages.form,
                    child: Text('Form')),
                const PopupMenuItem<PopupMenuPages>(
                    value: PopupMenuPages.cidades, 
                    child: Text('Cidades')),
                const PopupMenuItem<PopupMenuPages>(
                    value: PopupMenuPages.stack,
                    child: Text('Stack')),
                const PopupMenuItem<PopupMenuPages>(
                    value: PopupMenuPages.bottomNavigatorBarAndIndexedStack,
                    child: Text('BottomNavigatorBar e IndexedStack')),
                const PopupMenuItem<PopupMenuPages>(
                    value: PopupMenuPages.circleAvatar,
                    child: Text('CircleAvatar')),
                const PopupMenuItem<PopupMenuPages>(
                    value: PopupMenuPages.colors,
                    child: Text('Colors')),
                const PopupMenuItem<PopupMenuPages>(
                    value: PopupMenuPages.materialBanner,
                    child: Text('MaterialBanner')),
              ];
            },
          ),
        ],
      ),
      body: Theme(
        data: Theme.of(context).copyWith(
          primaryColor: Colors.blue,
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom( 
              backgroundColor: Colors.yellow
            )
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: (){}, child: const Text('Botão X')),
              Container(
                width: 100,
                height: 100,
                color: Theme.of(context).primaryColor,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
