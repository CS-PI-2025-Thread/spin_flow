import 'package:flutter/material.dart';

class TelaDashboard extends StatelessWidget {
  const TelaDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Painel da Professora'),
          bottom: const TabBar(
            isScrollable: true,
            tabs: [
              Tab(text: 'Visão Geral'),
              Tab(text: 'Cadastros'),
              Tab(text: 'Aulas'),
              Tab(text: 'Manutenção'),
              Tab(text: 'Recados'),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            _VisaoGeral(),
            _Cadastros(),
            _AulasEAuloes(),
            _Manutencao(),
            _Recados(),
          ],
        ),
      ),
    );
  }
}

// --- VISÃO GERAL ---
class _VisaoGeral extends StatelessWidget {
  const _VisaoGeral();

  @override
  Widget build(BuildContext context) {
    final cards = [
      _buildInfoCard(Icons.message, '3', 'Recados'),
      _buildInfoCard(Icons.person, '82', 'Alunos Ativos'),
      _buildInfoCard(Icons.schedule, '12', 'Aulas Agendadas'),
      _buildInfoCard(Icons.music_note, '4', 'Mix de Músicas'),
      _buildInfoCard(Icons.directions_bike, '18', 'Bikes OK'),
    ];

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 8,
        mainAxisSpacing: 8,
        children: cards,
      ),
    );
  }

  static Widget _buildInfoCard(IconData icon, String value, String label) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 40, color: Colors.blue),
            const SizedBox(height: 12),
            Text(value, style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            Text(label, style: const TextStyle(fontSize: 16)),
          ],
        ),
      ),
    );
  }
}

// --- ABA CADASTROS ---
class _Cadastros extends StatelessWidget {
  const _Cadastros();

  @override
  Widget build(BuildContext context) {
    final cadastros = [
       {'title': 'Vídeo Aula', 'route': '/video-aula-cadastro'},
      {'title': 'Aluno', 'route': '/aluno-cadastro'},
      {'title': 'Fabricante', 'route': '/fabricante-cadastro'},
      {'title': 'Sala', 'route': '/sala-cadastro'},
      {'title': 'Tipo Manutenção', 'route': '/tipo-manutencao-cadastro'},
      {'title': 'Categoria Música', 'route': ''},
      {'title': 'Banda Artista', 'route': ''},
      {'title': 'Turma', 'route': ''},
      {'title': 'Bike', 'route': ''},
      {'title': 'Música', 'route': ''},
      {'title': 'Mix Aula (Playlist)', 'route': ''},
      {'title': 'Grupo Aluno', 'route': ''},
    ];

    return ListView.builder(
      itemCount: cadastros.length,
      itemBuilder: (context, index) {
        final item = cadastros[index];
        return _buildCadastroTile(context, item['title']!, item['route']!);
      },
    );
  }

  static Widget _buildCadastroTile(BuildContext context, String title, String route) {
    return ListTile(
      title: Text(title),
      trailing: const Icon(Icons.arrow_forward_ios),
      onTap: () {
        if (route.isNotEmpty) {
          Navigator.pushNamed(context, route);
        }
      },
    );
  }
}

// --- OUTRAS ABAS (esqueleto) ---
class _AulasEAuloes extends StatelessWidget {
  const _AulasEAuloes();

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('Aulas e Aulões'));
  }
}

class _Manutencao extends StatelessWidget {
  const _Manutencao();

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('Manutenção'));
  }
}

class _Recados extends StatelessWidget {
  const _Recados();

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('Recados'));
  }
}
