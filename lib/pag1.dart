import 'package:flutter/material.dart';

import 'banco.dart';

class pagina1 extends StatefulWidget {
  //const pagina1({Key? key}) : super(key: key);

  @override
  _pagina1State createState() => _pagina1State();
}

class _pagina1State extends State<pagina1> {
//criando a variavel NOME que ira receber o NOME q digitarmos no APP...
//essa variavel é do tipo TEXT ou seja vai receber um valor TEXTUAL DIGITADO
  TextEditingController nome = TextEditingController();

  @override
  Widget build(BuildContext context) {
    //criando o SCAFFOLD/ESQUELETO do APP
    return Scaffold(
      //body vai receber um ScrollView... EU ACHO Q assim podemos de "rolar" a pagina
      //para baixo se tivermos VARIOS campos para digitar TEXTO
      body: SingleChildScrollView(
        //criando um FORM/FORMULARIO... Pois os valores serao digitados em um formulario
        child: Form(
          //os campos para digitar serao do tipo colunas... ou seja os campos vao ficar
          //um em baixo do outro
          child: Column(
            //todos column recebem uma LISTA/VETOR de CHILD... ou seja recebe um CHILDREN
            //no nosso caso, cada CHILD do nosso CHILDREN, sera um TEXT FORM FIELD
            //ou seja um campo para digitar texto
            children: [
              //criando um Text Form Field, ou seja criando um campo para digitar um texto
              TextFormField(
                //o tipo de valor q sera digitado é do tipo TEXT/TEXTUAL
                keyboardType: TextInputType.text,
                //criando uma DECORACAO... No caso vamos add um texto pequeno escrito
                //insira o nome
                decoration: InputDecoration(
                  labelText: "insira o nome",
                ),
                //o q for digitado no nosso Text Form Field ficara centralizado
                textAlign: TextAlign.center,
                //no CONTROLLER nos colocamos qual sera a VARIAVEL q irá receber
                //os valores passados no Text Form Field... No caso os valores passados
                //vao para a variavel NOME
                controller: nome,
              ),
              //criando um campo para deteccao de toque na tela
              GestureDetector(
                //caso seja dado UM CLIQUE/TOQUE / ONTAP
                onTap: () {
                  //nos vamos chamar a CLASSE BANCO, e para ela nos vamos passar o q ta
                  //armazenado na variavel NOME, mas vamos passar passar em forma
                  //textual portando vamos por o .TEXT no final
                  Banco(nome.text)
                      //existe uma FUNCAO dentro da classe BANCO, funcao q se chama ADDUSER
                      //para essa funcao nos temos q passar o q esta armazenado na variavel
                      //NOME, para a classe ADDUSER poder cadastrar o NOME q foi digitado
                      //em um DOC no FIREBASE
                      .addUser(nome.text)
                      //convertendo para string o nome
                      .toString();
                  //
                  // OUTRA FORMA DE ADD o valor q foi digitado no FIREBASE
                  //Banco(nome.text).addUser(nome.text); //FUNCIONA
                  //
                  //
                },
                //o GESTURE DETECTOR ACIMA so vai funcionar se clicarmos dentro deste
                //CONTAINER...
                child: Container(
                  //altura de 100 px
                  height: 100,
                  //largura de 100 px
                  width: 100,
                  //cor azul
                  color: Colors.blue,
                  //texto q estara dentro do container
                  child: Text('enviar cadastro'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
