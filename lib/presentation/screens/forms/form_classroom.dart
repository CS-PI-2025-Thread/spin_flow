import 'package:flutter/material.dart';

class ClassroomForm extends StatefulWidget {
  const ClassroomForm({super.key});

  @override
  State<ClassroomForm> createState() => _ClassroomFormState();
}

class _ClassroomFormState extends State<ClassroomForm> {
  final _formKey = GlobalKey<FormState>();

  final _nomeController = TextEditingController();
  final _capacidadeController = TextEditingController();
  final _numeroFilasController = TextEditingController();
  final _bikesPorFilaController = TextEditingController();

  bool _ativo = true;

  void _salvarFormulario() {
    if (_formKey.currentState!.validate()) {
      // Aqui você pode salvar os dados ou enviar para a API/localStorage
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Sala salva com sucesso!')),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Preencha todos os campos obrigatórios')),
      );
    }
  }

  @override
  void dispose() {
    _nomeController.dispose();
    _capacidadeController.dispose();
    _numeroFilasController.dispose();
    _bikesPorFilaController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Cadastro de Sala')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              TextFormField(
                controller: _nomeController,
                decoration: const InputDecoration(labelText: 'Nome da Sala'),
                validator: (value) =>
                    value == null || value.isEmpty ? 'Campo obrigatório' : null,
              ),
              TextFormField(
                controller: _capacidadeController,
                decoration: const InputDecoration(labelText: 'Capacidade Total de Bikes'),
                keyboardType: TextInputType.number,
                validator: (value) =>
                    value == null || value.isEmpty ? 'Campo obrigatório' : null,
              ),
              TextFormField(
                controller: _numeroFilasController,
                decoration: const InputDecoration(labelText: 'Número de Filas'),
                keyboardType: TextInputType.number,
              ),
              TextFormField(
                controller: _bikesPorFilaController,
                decoration: const InputDecoration(labelText: 'Número de Bikes por Fila'),
                keyboardType: TextInputType.number,
              ),
              SwitchListTile(
                title: const Text('Sala ativa'),
                value: _ativo,
                onChanged: (value) {
                  setState(() {
                    _ativo = value;
                  });
                },
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: _salvarFormulario,
                child: const Text('Salvar'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
