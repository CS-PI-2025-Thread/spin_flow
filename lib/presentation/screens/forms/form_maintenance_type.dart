import 'package:flutter/material.dart';

class MaintenanceTypeForm extends StatefulWidget {
  const MaintenanceTypeForm({super.key});

  @override
  State<MaintenanceTypeForm> createState() => _MaintenanceTypeFormState();
}

class _MaintenanceTypeFormState extends State<MaintenanceTypeForm> {
  final _formKey = GlobalKey<FormState>();

  final _nomeController = TextEditingController();
  final _descricaoController = TextEditingController();
  bool _ativo = true;

  void _salvarFormulario() {
    if (_formKey.currentState!.validate()) {
      // Aqui você pode salvar os dados ou enviar para a API/localStorage
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Tipo de manutenção salvo com sucesso!')),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Preencha os campos obrigatórios')),
      );
    }
  }

  @override
  void dispose() {
    _nomeController.dispose();
    _descricaoController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Cadastro de Tipo de Manutenção')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              TextFormField(
                controller: _nomeController,
                decoration: const InputDecoration(labelText: 'Nome'),
                validator: (value) =>
                    value == null || value.isEmpty ? 'Campo obrigatório' : null,
              ),
              TextFormField(
                controller: _descricaoController,
                decoration: const InputDecoration(labelText: 'Descrição'),
                maxLines: 3,
              ),
              SwitchListTile(
                title: const Text('Ativo'),
                value: _ativo,
                onChanged: (value) => setState(() => _ativo = value),
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
