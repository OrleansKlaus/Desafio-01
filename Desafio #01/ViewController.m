//
//  ViewController.m
//  Desafio #01
//
//  Created by Orleans Klaus on 2/24/15.
//  Copyright (c) 2015 Orleans Klaus. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize lblPergunta, lblResposta, cont, listaPerguntas, listaRespostas, image;

- (void)viewDidLoad {
    
    // Atribuir cor de fundo da tela
    self.view.backgroundColor = [UIColor blueColor];
    
    // Iniciando o contador de perguntas e respostas
    cont = 0;
    // Iniciando array
    listaPerguntas = [[NSArray alloc] init];
    
    // Adicionando os objetos no Array
    listaPerguntas =
    [[NSArray alloc]initWithObjects:@"Quem é o presidente do Brasil?",
     @"Qual celular você possui?",
     @"Qual empresa você trabalha?",
     nil];
    
    // Resgatando um objeto através de seu índice
    NSLog(@"Resgatando um objeto: %@",[listaPerguntas objectAtIndex:1]);
    
    // Resgatando a quantidade de registros no array
    NSLog(@"Quantidade de registros: %lu",(unsigned long)[listaPerguntas count]);
    
    // Exibindo o último objeto do array
    NSLog(@"Último registro do array: %@",[listaPerguntas lastObject]);
    
    // Obtendo informações sobre o índice de um objeto
    NSLog(@"Número do índice %lu",(unsigned long)[listaPerguntas indexOfObject:@"Quem é o presidente do Brasil?"]);
    
    // Consultando se um objeto existe dentro de um array
    if ([listaPerguntas containsObject:@"teste"]) {
        NSLog(@"Objeto existe");
    } else {
        NSLog(@"Objeto não existe");
    }
    
    // Iniciando array
    listaRespostas = [[NSArray alloc] init];
    
    // Adicionando os objetos no Array
    listaRespostas =
    [[NSArray alloc]initWithObjects:@"O presidente do Brasil é a Dilma!",
     @"Eu possuo o Iphone 6!",
     @"Eu trabalho no MackMobile!",
     nil];
    
    // Resgatando um objeto através de seu índice
    NSLog(@"Resgatando um objeto: %@",[listaRespostas objectAtIndex:1]);
    
    // Resgatando a quantidade de registros no array
    NSLog(@"Quantidade de registros: %lu",(unsigned long)[listaRespostas count]);
    
    // Exibindo o último objeto do array
    NSLog(@"Último registro do array: %@",[listaRespostas lastObject]);
    
    // Obtendo informações sobre o índice de um objeto
    NSLog(@"Número do índice %lu",(unsigned long)[listaRespostas indexOfObject:@"Eu trabalho no MackMobile!"]);
    
    [super viewDidLoad];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)btPergunta:(UIButton *)sender {
    lblPergunta.text = [listaPerguntas objectAtIndex:self.contador];
    NSLog(@"cont: %i", cont);
    lblResposta.text = @"???";
    image.image = nil;
    return;
}

- (IBAction)btResposta:(UIButton *)sender {
    lblResposta.text = [listaRespostas objectAtIndex:cont];
    NSLog(@"cont: %i", cont);
    
    if (cont == 0) {
        image.image = [UIImage imageNamed:@"dilma.png"];
    }else if (cont==1){
        image.image = [UIImage imageNamed:@"iphone6.png"];
    }else if (cont==2){
        image.image = [UIImage imageNamed:@"mackmobile.png"];
    }
    
    return;
}

- (int)contador{
    cont = cont +1;
    
    if (cont==3) {
        self.cont = 0;
    }
    return cont;
}

@end
