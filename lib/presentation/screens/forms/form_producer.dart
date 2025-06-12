import 'package:flutter/material.dart';

class ProducerForm extends StatefulWidget {
  const ProducerForm({super.key});

  @override
  State<ProducerForm> createState() => _ProducerFormState();
}

class _ProducerFormState extends State<ProducerForm> {
  final _formKey = GlobalKey<FormState>();

  final _nomeController = TextEditingController();
  final _descricaoController = TextEditingController();
  final _nomeContatoController = TextEditingController();
  final _emailContatoController = TextEditingController();
  final _telefoneContatoController = TextEditingController();

  bool _ativo = true;

  void _salvarFormulario() {
    if (_formKey.currentState!.validate()) {
      // Aqui você pode salvar os dados ou enviar para a API/localStorage
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Fabricante salvo com sucesso!')),
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
    _descricaoController.dispose();
    _nomeContatoController.dispose();
    _emailContatoController.dispose();
    _telefoneContatoController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Cadastro de Fabricante')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
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
                maxLines: 2,
              ),
              TextFormField(
                controller: _nomeContatoController,
                decoration: const InputDecoration(labelText: 'Nome do contato principal'),
                validator: (value) =>
                    value == null || value.isEmpty ? 'Campo obrigatório' : null,
              ),
              TextFormField(
                controller: _emailContatoController,
                decoration: const InputDecoration(labelText: 'Email de contato'),
                keyboardType: TextInputType.emailAddress,
                validator: (value) =>
                    value == null || !value.contains('@') ? 'Email inválido' : null,
              ),
              TextFormField(
                controller: _telefoneContatoController,
                decoration: const InputDecoration(labelText: 'Telefone de contato'),
                keyboardType: TextInputType.phone,
              ),
              SwitchListTile(
                title: const Text('Fabricante ativo'),
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
