import 'package:flutter/material.dart';
import 'package:haseeb_portfolio/app_components/side_menu.dart';
import 'package:haseeb_portfolio/constants/app_color.dart';
import 'package:haseeb_portfolio/responsive.dart';

class MainScreen extends StatelessWidget {
  final List<Widget> children;
  const MainScreen({Key? key, required this.children}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SideMenu(),
      appBar:  Responsive.isDesktop(context) ? null : AppBar(
        backgroundColor: bgColor,
        leading: Builder(
          builder: (context) =>  IconButton(onPressed: () => Scaffold.of(context).openDrawer(),
            icon: Icon(Icons.menu),
          ),
        )
      ),
      body: Center(
        child: Container(
          constraints: const BoxConstraints(maxHeight: maxWidth),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if(Responsive.isDesktop(context))
               const Expanded(
                  flex: 2,
                  child: SideMenu()),
              SizedBox(width: defaultPadding,),
              Expanded(
                  flex: 7,
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ...children
                      ],
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
