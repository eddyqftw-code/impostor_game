import 'dart:math';
import 'package:flutter/material.dart';
import 'card_widget.dart';

class GameScreen extends StatefulWidget {
  const GameScreen({super.key});

  @override
  State<GameScreen> createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  // Lista de cuvinte diversificate din mai multe domenii
  final List<String> cuvinte = [
"padure","copac","floare","iarba","frunze","rauri","lacuri","munti","dealuri","mare",
"plaja","nisip","pamant","soare","luna","stele","nor","furtuna","ploaie","zapada",
"vant","curcubeu","fluture","pasare","caini","pisici","cal","vaca","oaie","porc",
"iepure","broasca","sarpe","albine","gandac","melc","pesti","scoici","delfin","balena",
"urs","lup","vulpe","cerb","iepure","soarece","viespe","pasare","bufnita","corb",
"biblioteca","cinematograf","aeroport","restaurant","stadion","universitate","supermarket",
"parcare","magazin","laborator","gradinita","spital","apartament","locuinta","pensiune",
"hotel","piata","garaj","autogara","scoala","muzeu","teatru","pavilion","complex","sala",
"parc","gradina","banca","posta","politie","primarie","consulat","telefon","calculator",
"tableta","carte","pix","caiet","geanta","rucsac","lampa","scaun","masa","pat",
"oglinda","perna","patura","pahar","farfurie","lingura","furculita","cutit","bicicleta",
"motocicleta","masina","camion","barca","avion","elicopter","feribot","trotineta",
"buldozer","excavator","tractor","laptop","casti","televizor","radio","camera","proiector",
"microfon","boxa","monitor","mouse","tastatura","router","switch","cablu","priza","baterie",
"doctor","profesor","inginer","arhitect","programator","sofer","pompier","policist",
"bucatar","librar","muzician","artist","fotograf","scriitor","jurnalist","cantaret",
"dizainer","constructor","farmacist","gradinar","vanzator","fotbal","baschet","volei",
"tenis","handbal","sah","golf","inot","alergare","ciclism","ski","snowboard","karate",
"educatie","tehnologie","comunicare","marketing","investitie","infrastructura","resurse",
"competitie","proiect","strategie","dezvoltare","organizatie","consultanta","eveniment",
"prezentare","publicitate","documentare","experiment","laborator","productie",
"constructie","transport","turism","agricultura","industria","cultura","arte","muzica",
"teatru","film","cinema","spectacol","festival","expozitie","conferinta","reprezentare",
"interpretare","publicatie","revista","ziare","newsletter","site","blog","podcast","video",
"tutorial","program","aplicatie","platforma","server","cloud","database","backup","securitate",
"criptare","parola","autentificare","utilizator","administrator","cont","profil","setari",
"tema","layout","design","grafica","animatie","illustratie","fotografie","videochat",
"live","evenimente","agenda","calendar","orar","intalnire","sedinta","prezentare","raport",
"analiza","statistica","tabel","grafic","diagram","planificare","strategie","proiect",
"task","activitate","calendar","deadline","prioritate","evaluare","feedback","training",
"workshop","seminar","conferinta","prelegere","discutie","debate","consiliu","comisie",
"parteneriat","cooperare","asociatie","club","fundatie","ONG","organizatori","participant",
"joc","activitate","provocare","competitie","eveniment","turneu","liga","campionat","finala",
"castigator","premiu","medalie","trofeu","diploma","certificat","badge","recompensa","bonus",
"bonusuri","discount","reducere","oferta","promotie","campanie","publicitate","marketing",
"strategie","plan","concept","idee","viziune","misiune","obiectiv","scop","valori","principii",
"reguli","politica","procedura","contract","acord","protocol","norma","standarde","legislatie",
"drepturi","obligatii","responsabilitati","risc","siguranta","protectie","asigurare","finantare",
"investitie","buget","resurse","cost","pret","valoare","profit","venit","cheltuieli","economii",
"banca","credit","depozit","cont","plata","transfer","impozit","taxa","factura","bon",
"nota","chitanta","document","formular","cerere","adeverinta","certificat","raport","analiza",
"evaluare","audit","inspectie","verificare","monitorizare","control","management","leadership",
"echipa","coordonator","supervizor","director","manager","asistent","consultant","specialist",
"expert","tehnician","operator","functionar","angajat","colaborator","voluntar","student",
"elev","profesor","mentor","trainer","coach","consultant","reprezentant","agent","delegat",
"ambasador","lider","presedinte","secretar","trezorier","colegiu","comitet","consiliu","adunare",
"sedinta","conferinta","reuniune","intalnire","discutie","negociere","dialog","dezbatere",
"prezentare","demonstratie","exemplu","caz","studii","analiza","research","investigatie",
"experiment","proiect","plan","strategie","program","aplicatie","platforma","software","hardware",
"device","echipament","instrument","material","subiect","tema","problema","solutie","metoda",
"tehnica","procedura","proces","activitate","eveniment","calendar","agenda","orar","planificare",
"organizare","coordonare","gestionare","monitorizare","evaluare","feedback","recomandare",
"sugestie","observatie","comentariu","nota","documentatie","manual","ghid","instructiuni",
"tutorial","exemplu","model","sablon","template","fisa","formular","cerere","raport",
"statistica","grafic","diagrama","tabel","lista","inventar","catalog","index","registru",
"bibliografie","referinta","citatie","nota","anexa","atentie","avertisment","indicatie",
"informatii","date","detalii","specificatii","parametru","criteriu","indicator","standard",
"norma","regula","politica","procedura","reglementare","legislatie","document","contract",
"acord","protocol","certificat","autorizatie","licenta","permis","aprobare","validare",
"verificare","audit","control","inspectie","monitorizare","evaluare","scoring","rating",
"reputatie","feedback","opinie","recenzie","comentariu","satisfactie","performanta","productivitate",
"eficienta","calitate","impact","rezultat","contributie","influenta","autoritate","putere",
"lider","manager","director","coordonator","supervizor","asistent","angajat","colaborator",
"voluntar","participant","student","elev","profesor","mentor","trainer","coach","consultant",
"expert","specialist","tehnician","operator","functionar","reprezentant","agent","delegat",
"ambasador","lider","presedinte","secretar","trezorier","colegiu","comitet","consiliu",
"adunare","sedinta","conferinta","reuniune","intalnire","negociere","dialog","dezbatere",
"prezentare","demonstratie","exemplu","caz","studii","analiza","research","investigatie",
"experiment","proiect","plan","strategie","program","aplicatie","platforma","software",
"hardware","device","echipament","instrument","material","subiect","tema","problema",
"solutie","metoda","tehnica","procedura","proces","activitate","eveniment","calendar",
"agenda","orar","planificare","organizare","coordonare","gestionare","monitorizare",
"evaluare","feedback","recomandare","sugestie","observatie","comentariu","nota","documentatie",
"manual","ghid","instructiuni","tutorial","exemplu","model","sablon","template","fisa",
"formular","cerere","raport","statistica","grafic","diagrama","tabel","lista","inventar",
"catalog","index","registru","bibliografie","referinta","citatie","nota","anexa","atentie",
"avertisment","indicatie","informatii","date","detalii","specificatii","parametru","criteriu",
"indicator","standard","norma","regula","politica","procedura","reglementare","legislatie",
"document","contract","acord","protocol","certificat","autorizatie","licenta","permis",
"aprobare","validare","verificare","audit","control","inspectie","monitorizare","evaluare"
];


  int numarJucatori = 5;
  int numarImpostori = 1;
  List<int> impostori = [];
  String? cuvantCurent;
  bool rundaActiva = false;

  void pornesteRunda() {
    final random = Random();
    setState(() {
      cuvantCurent = cuvinte[random.nextInt(cuvinte.length)];

      impostori = [];
      while (impostori.length < numarImpostori) {
        int idx = random.nextInt(numarJucatori);
        if (!impostori.contains(idx)) impostori.add(idx);
      }

      rundaActiva = true;
    });
  }

  void inchideRunda() {
    setState(() {
      rundaActiva = false;
      cuvantCurent = null;
      impostori = [];
    });
  }

  String textPentruJucator(int index) {
    if (!rundaActiva) return '';
    return impostori.contains(index) ? 'IMPOSTOR' : cuvantCurent!;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Impostor Game'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          if (!rundaActiva) ...[
            const SizedBox(height: 10),
            const Text('Selecteaza numarul de jucatori:', style: TextStyle(fontSize: 16)),
            Text('$numarJucatori jucatori', style: const TextStyle(fontWeight: FontWeight.bold)),
            Slider(
              value: numarJucatori.toDouble(),
              min: 3,
              max: 12,
              divisions: 9,
              label: numarJucatori.toString(),
              onChanged: (value) {
                setState(() {
                  numarJucatori = value.toInt();
                  if (numarImpostori >= numarJucatori) {
                    numarImpostori = numarJucatori - 1;
                  }
                });
              },
            ),
            const SizedBox(height: 10),
            const Text('Selecteaza numarul de impostori:', style: TextStyle(fontSize: 16)),
            Text('$numarImpostori impostori', style: const TextStyle(fontWeight: FontWeight.bold)),
            Slider(
              value: numarImpostori.toDouble(),
              min: 1,
              max: (numarJucatori - 1).toDouble(),
              divisions: numarJucatori - 2,
              label: numarImpostori.toString(),
              onChanged: (value) {
                setState(() {
                  numarImpostori = value.toInt();
                });
              },
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: pornesteRunda,
              child: const Text('Pornește runda'),
            ),
          ],
          if (rundaActiva) ...[
            const SizedBox(height: 20),
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(8.0),
                child: Wrap(
                  spacing: 20,
                  runSpacing: 20,
                  alignment: WrapAlignment.center,
                  children: List.generate(numarJucatori, (index) {
                    return CardWidget(
                      frontText: 'Jucator ${index + 1}',
                      backText: textPentruJucator(index),
                      backColor: impostori.contains(index) ? Colors.red : Colors.green,
                    );
                  }),
                ),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: inchideRunda,
              child: const Text('Închide runda'),
            ),
          ],
        ],
      ),
    );
  }
}
