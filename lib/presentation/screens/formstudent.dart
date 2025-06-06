import 'package:flutter/material.dart';

class AlunoCadastro extends StatefulWidget {
  const AlunoCadastro({super.key});

  @override
  State<AlunoCadastro> createState() => _AlunoCadastroState();
}

class _AlunoCadastroState extends State<AlunoCadastro> {
  final _formKey = GlobalKey<FormState>();

  final _nomeController = TextEditingController();
  final _emailController = TextEditingController();
  final _telefoneController = TextEditingController();
  final _instagramController = TextEditingController();
  final _facebookController = TextEditingController();
  final _tiktokController = TextEditingController();

  DateTime? _dataNascimento;
  String? _genero;
  bool _ativo = true;

  Future<void> _selecionarDataNascimento(BuildContext context) async {
    final dataSelecionada = await showDatePicker(
      context: context,
      initialDate: DateTime(2005),
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
    );

    if (dataSelecionada != null) {
      setState(() {
        _dataNascimento = dataSelecionada;
      });
    }
  }

  void _salvarFormulario() {
    if (_formKey.currentState!.validate() && _dataNascimento != null && _genero != null) {
      // Aqui você pode salvar os dados ou enviar para a API/localStorage
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Aluno salvo com sucesso!')),
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
    _emailController.dispose();
    _telefoneController.dispose();
    _instagramController.dispose();
    _facebookController.dispose();
    _tiktokController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Cadastro de Aluno')),
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
                controller: _emailController,
                decoration: const InputDecoration(labelText: 'Email'),
                keyboardType: TextInputType.emailAddress,
                validator: (value) =>
                    value == null || !value.contains('@') ? 'Email inválido' : null,
              ),
              const SizedBox(height: 10),
              ListTile(
                title: Text(_dataNascimento == null
                    ? 'Selecionar data de nascimento'
                    : 'Data de nascimento: ${_dataNascimento!.day}/${_dataNascimento!.month}/${_dataNascimento!.year}'),
                trailing: const Icon(Icons.calendar_today),
                onTap: () => _selecionarDataNascimento(context),
              ),
              DropdownButtonFormField<String>(
                decoration: const InputDecoration(labelText: 'Gênero'),
                value: _genero,
                items: const [
                  DropdownMenuItem(value: 'Masculino', child: Text('Masculino')),
                  DropdownMenuItem(value: 'Feminino', child: Text('Feminino')),
                  DropdownMenuItem(value: 'Outro', child: Text('Outro')),
                ],
                onChanged: (value) {
                  setState(() {
                    _genero = value;
                  });
                },
                validator: (value) =>
                    value == null ? 'Selecione um gênero' : null,
              ),
              TextFormField(
                controller: _telefoneController,
                decoration: const InputDecoration(labelText: 'Telefone de contato'),
                keyboardType: TextInputType.phone,
              ),
              TextFormField(
                controller: _instagramController,
                decoration: const InputDecoration(labelText: 'Perfil Instagram'),
              ),
              TextFormField(
                controller: _facebookController,
                decoration: const InputDecoration(labelText: 'Perfil Facebook'),
              ),
              TextFormField(
                controller: _tiktokController,
                decoration: const InputDecoration(labelText: 'Perfil TikTok'),
              ),
              SwitchListTile(
                title: const Text('Aluno ativo'),
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
