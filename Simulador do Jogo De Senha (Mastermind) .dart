import 'dart:io';
import 'dart:math';

void main() {

  final random = Random();
  List<int> senha = List.generate(4, (_) => random.nextInt(6) + 1);

  print("Bem-vindo ao Jogo de Senha (Mastermind)!");
  print("Tente adivinhar a sequência de 4 números (entre 1 e 6).");
  print("Você tem até 10 tentativas.\n");
  
  bool venceu = false;

  for (int tentativa = 1; tentativa <= 10; tentativa++) {

    List<int>? palpite = obterPalpite(tentativa);

    if (palpite == null) {

      print("Entrada inválida. Tente novamente.\n");

      tentativa--;
      continue;

    }

    int pretos = 0;
    int brancos = 0;
    
    List<bool> senhaUsada = List.filled(4, false);
    List<bool> palpiteUsado = List.filled(4, false);

    for (int i = 0; i < 4; i++) {

      if (palpite[i] == senha[i]) {

        pretos++;

        senhaUsada[i] = true;
        palpiteUsado[i] = true;

      }

    }

    for (int i = 0; i < 4; i++) {

      if (!palpiteUsado[i]) {

        for (int j = 0; j < 4; j++) {

          if (!senhaUsada[j] && palpite[i] == senha[j]) {

            brancos++;
            senhaUsada[j] = true;
            break;

          }
        }

      }
    }

    print("Tentativa $tentativa: $palpite");
    print("Pinos Pretos: $pretos | Pinos Brancos: $brancos\n");

    if (pretos == 4) {

      print("Parabéns! Você descobriu a senha secreta!");

      venceu = true;
      break;
    }
  }
  
  if (!venceu) {

    print("Você não conseguiu adivinhar em 10 tentativas.");
    print("A senha correta era: $senha");

  }
}

List<int>? obterPalpite(int tentativa) {

  stdout.write("Digite seu palpite #$tentativa (4 números entre 1 e 6, sem espaços): ");
  String? entrada = stdin.readLineSync();

  if (entrada == null || entrada.length != 4) {

    return null;

  }

  List<int> numeros = [];

  for (int i = 0; i < entrada.length; i++) {
      
    int? n = int.tryParse(entrada[i]);
    
    if (n == null || n < 1 || n > 6) {
      return null;
    }
    numeros.add(n);
  }
  return numeros;
}