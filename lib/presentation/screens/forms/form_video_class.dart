import 'package:flutter/material.dart';

class VideoClassForm extends StatefulWidget {
  const VideoClassForm({super.key});

  @override
  State<VideoClassForm> createState() => _VideoClassFormState();
}

class _VideoClassFormState extends State<VideoClassForm> {
  final _formKey = GlobalKey<FormState>();
  String nome = '';
  String linkVideo = '';
  bool ativo = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Cadastro de Vídeo Aula')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              TextFormField(
                decoration: const InputDecoration(labelText: 'Nome'),
                validator: (value) => value == null || value.isEmpty ? 'Informe o nome' : null,
                onSaved: (value) => nome = value!,
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Link do Vídeo'),
                validator: (value) => value == null || value.isEmpty ? 'Informe o link do vídeo' : null,
                onSaved: (value) => linkVideo = value!,
              ),
              SwitchListTile(
                title: const Text('Ativo'),
                value: ativo,
                onChanged: (value) => setState(() => ativo = value),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState!.save();
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Vídeo Aula salva com sucesso!')),
                    );
                  }
                },
                child: const Text('Salvar'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
