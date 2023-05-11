select @@version;

use gameonline;

create table tb_classes (
  id bigint auto_increment,
  nome VARCHAR(50),
  funcao VARCHAR(255),
  PRIMARY KEY (id)
);
 INSERT INTO tb_classes (id, nome, funcao) VALUES (1, "ELFO MAGICO", "PROTEGER O REINO COM SUA MAGIA");
   INSERT INTO tb_classes (id, nome, funcao) VALUES (2, "DINOSSAURO", "DEVASTAR TUDO E TODOS");
   
create table tb_personagens (
 id bigint auto_increment,
  nome VARCHAR(50),
  poder_ataque int,
  poder_defesa int,
  PRIMARY KEY (id),
    CONSTRAINT fk_classe foreign key(classe_id) REFERENCES tb_classes(id)
);
   
   INSERT INTO tb_personagens (id, nome, poder_ataque, poder_defesa) VALUES (1, "FIG", 1500.00, 1850.00);
      INSERT INTO tb_personagens (id, nome, poder_ataque, poder_defesa) VALUES (1, "WINX SUPREMA", 9999.00, 9999.00);
            INSERT INTO tb_personagens (id, nome, poder_ataque, poder_defesa) VALUES (1, "TALHYA", 4368.00, 2437.00);
            INSERT INTO tb_personagens (id, nome, poder_ataque, poder_defesa) VALUES (1, "TANUS", 9998.00, 9500 );
         INSERT INTO tb_personagens (id, nome, poder_ataque, poder_defesa) VALUES (2, "RAMON DINO", 9999.00, 9999.00);
      INSERT INTO tb_personagens (id, nome, poder_ataque, poder_defesa) VALUES (2, "KOCTOPHREUTES", 2350.00, 6892.00);
         INSERT INTO tb_personagens (id, nome, poder_ataque, poder_defesa) VALUES (2, "BARNEY", 8579.00, 9200.00);
            INSERT INTO tb_personagens (id, nome, poder_ataque, poder_defesa) VALUES (2, "BAPTEUMURTUS", 1800.00, 7000.00);
            
           SELECT * FROM tb_personagens WHERE poder_ataque > 2000;
           
           SELECT * FROM tb_personagens WHERE poder_defesa BETWEEN 1000 AND 2000;
           
           SELECT * FROM tb_personagens WHERE nome LIKE '%C%';
           
SELECT * FROM tb_personagens INNER JOIN tb_classes ON tb_classes.id = tb_personagens.classe_id;

SELECT * FROM tb_personagens INNER JOIN tb_classes ON tb_classes.id = tb_personagens.classe_id WHERE tb_classes.funcao = "ELFO MAGICO";
   
select * from db_generation_game_online;



