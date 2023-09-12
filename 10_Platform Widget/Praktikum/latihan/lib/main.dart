import 'package:flutter/material.dart';

void main() {
  runApp(const Latihan());
}

class Latihan  extends StatelessWidget {
  const Latihan ({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        
        appBar: AppBar(
          title: const Text('Homepage'),
          centerTitle: true,
        ),
        body: Container(
          color: Colors.blueGrey,
          margin: const EdgeInsets.only(top: 30, left: 20, bottom: 15, right: 20),
          child: Center(
            child: Column(children: [
              const Row( 
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Muchson'),
                  Text('Muchson')
                ],
              ),
              const SizedBox(
                height: 70,
              ),
              const Text('List Anak Didik'),
              
              Expanded(
                child: ListView(
                  padding: const EdgeInsets.all(10),
                  children: const [
                  Text('ADE ALI INDRA'),
                  Text('ALWIN ZUHRIANDI MANALU'),
                  Text('ANISA YUNIARTI'),
                  Text('Bima Pangestu Nugraha'),
                  Text('Dastin Pranata Yuda'),
                  Text('David Christian Hui'),
                  Text('David Liem'),
                  Text('Delia Sepiana'),
                  Text('FAJRUL KAMAL'),
                  Text('GHAZI FARHANU DISASMORO'),
                  Text('HIDAYAH DANIAWATI'),
                  Text('JUHARMANSAH'),
                  Text('KATARINA ANDREA LAURENTIA'),
                  Text('MUHAMMAD AFRIZAL RASYID'),
                  Text('MUHAMMAD ARARYA HAFIZH ATHALLA'),
                  Text('MUHAMMAD ILHAM'),
                  Text('MUHAMMAD NGURAH ARYA PRATAMA'),
                  Text('MUSTIKA CHAIRANI'),
                  Text('NURMALASARI'),
                  Text('Phrimus Nufeto'),
                  Text('PUTRI DIANA HAFSYAWATI'),
                  Text('RACHAEL NATHASYA'),
                  Text('RAFI TAUFIQURAHMAN'),
                  Text('RAMADHAN PUTRA NUGRAHA'),
                  Text('YUNITA ANGGERAINI'),
                  Text('ADE ALI INDRA'),
                  Text('ALWIN ZUHRIANDI MANALU'),
                  Text('ANISA YUNIARTI'),
                  Text('Bima Pangestu Nugraha'),
                  Text('Dastin Pranata Yuda'),
                  Text('David Christian Hui'),
                  Text('David Liem'),
                  Text('Delia Sepiana'),
                  Text('FAJRUL KAMAL'),
                  Text('GHAZI FARHANU DISASMORO'),
                  Text('HIDAYAH DANIAWATI'),
                  Text('JUHARMANSAH'),
                  Text('KATARINA ANDREA LAURENTIA'),
                  Text('MUHAMMAD AFRIZAL RASYID'),
                  Text('MUHAMMAD ARARYA HAFIZH ATHALLA'),
                  Text('MUHAMMAD ILHAM'),
                  Text('MUHAMMAD NGURAH ARYA PRATAMA'),
                  Text('MUSTIKA CHAIRANI'),
                  Text('NURMALASARI'),
                  Text('Phrimus Nufeto'),
                  Text('PUTRI DIANA HAFSYAWATI'),
                  Text('RACHAEL NATHASYA'),
                  Text('RAFI TAUFIQURAHMAN'),
                  Text('RAMADHAN PUTRA NUGRAHA'),
                  Text('YUNITA ANGGERAINI'),
                  Text('ADE ALI INDRA'),
                  Text('ALWIN ZUHRIANDI MANALU'),
                  Text('ANISA YUNIARTI'),
                  Text('Bima Pangestu Nugraha'),
                  Text('Dastin Pranata Yuda'),
                  Text('David Christian Hui'),
                  Text('David Liem'),
                  Text('Delia Sepiana'),
                  Text('FAJRUL KAMAL'),
                  Text('GHAZI FARHANU DISASMORO'),
                  Text('HIDAYAH DANIAWATI'),
                  Text('JUHARMANSAH'),
                  Text('KATARINA ANDREA LAURENTIA'),
                  Text('MUHAMMAD AFRIZAL RASYID'),
                  Text('MUHAMMAD ARARYA HAFIZH ATHALLA'),
                  Text('MUHAMMAD ILHAM'),
                  Text('MUHAMMAD NGURAH ARYA PRATAMA'),
                  Text('MUSTIKA CHAIRANI'),
                  Text('NURMALASARI'),
                  Text('Phrimus Nufeto'),
                  Text('PUTRI DIANA HAFSYAWATI'),
                  Text('RACHAEL NATHASYA'),
                  Text('RAFI TAUFIQURAHMAN'),
                  Text('RAMADHAN PUTRA NUGRAHA'),
                  Text('YUNITA ANGGERAINI'),
                  Text('ADE ALI INDRA'),
                  Text('ALWIN ZUHRIANDI MANALU'),
                  Text('ANISA YUNIARTI'),
                  Text('Bima Pangestu Nugraha'),
                  Text('Dastin Pranata Yuda'),
                  Text('David Christian Hui'),
                  Text('David Liem'),
                  Text('Delia Sepiana'),
                  Text('FAJRUL KAMAL'),
                  Text('GHAZI FARHANU DISASMORO'),
                  Text('HIDAYAH DANIAWATI'),
                  Text('JUHARMANSAH'),
                  Text('KATARINA ANDREA LAURENTIA'),
                  Text('MUHAMMAD AFRIZAL RASYID'),
                  Text('MUHAMMAD ARARYA HAFIZH ATHALLA'),
                  Text('MUHAMMAD ILHAM'),
                  Text('MUHAMMAD NGURAH ARYA PRATAMA'),
                  Text('MUSTIKA CHAIRANI'),
                  Text('NURMALASARI'),
                  Text('Phrimus Nufeto'),
                  Text('PUTRI DIANA HAFSYAWATI'),
                  Text('RACHAEL NATHASYA'),
                  Text('RAFI TAUFIQURAHMAN'),
                  Text('RAMADHAN PUTRA NUGRAHA'),
                  Text('YUNITA ANGGERAINI'),
                  ],
                )
              ),
              const SizedBox(
              height: 20
              )
            ]),
          ),
        ),

      ),
    );
  }
}
