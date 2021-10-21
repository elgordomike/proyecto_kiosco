import 'package:flutter/material.dart';

class PaginaProducto extends StatelessWidget{

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(10),
            child: TextFormField(
              maxLength: 50,
              validator: (value){
                if (value!.isEmpty){
                  return "Tiene que colocar Nombre";
                }
                return null;
              },
              decoration: const InputDecoration(
                  labelText: "Nombre",
                  contentPadding: EdgeInsets.all(5),
                  border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10)))
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5),
            child: TextFormField(
              decoration: const InputDecoration(
                  labelText: "Marca",
                  contentPadding: EdgeInsets.all(10),
                  border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10)))
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5),
            child: TextFormField(
              decoration: const InputDecoration(
                  labelText: "Lugar",
                  contentPadding: EdgeInsets.all(10),
                  border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10)))
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5),
            child: TextFormField(
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                  labelText: "Precio",
                  contentPadding: EdgeInsets.all(10),
                  border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10)))
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5),
            child: TextFormField(
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                  labelText: "Codigo",
                  contentPadding: EdgeInsets.all(10),
                  border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10)))
              ),
            ),
          ),
          RaisedButton(
            child: Text("Guardar"),
            onPressed: (){
              if (_formKey.currentState!.validate()){
                print("Bien!");
              }
            },
          )
        ]
      ),
    );
  }
}