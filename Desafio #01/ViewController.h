//
//  ViewController.h
//  Desafio #01
//
//  Created by Orleans Klaus on 2/24/15.
//  Copyright (c) 2015 Orleans Klaus. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *lblPergunta;
@property (weak, nonatomic) IBOutlet UILabel *lblResposta;
@property (nonatomic) int cont;

- (IBAction)btPergunta:(UIButton *)sender;
- (IBAction)btResposta:(UIButton *)sender;
@property (weak, nonatomic) IBOutlet UIImageView *image;

@property NSArray *listaPerguntas;
@property NSArray *listaRespostas;


@end

