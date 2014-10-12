CREATE SCHEMA `competence` ;




CREATE TABLE `competence`.`tb01_usuario` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `usuario` VARCHAR(45) NOT NULL,
  `nome` VARCHAR(45) NULL,
  `senha` VARCHAR(45) NOT NULL,
  `perfil` CHAR(1) NULL,
  `tipo` CHAR(1) NULL,
  `situacao` CHAR(1) NULL,
  `email` VARCHAR(45) NULL,
  `celular` INT(11) NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `usuario_UNIQUE` (`usuario` ASC));

  
  CREATE TABLE `competence`.`tb02_produto` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(45) NOT NULL,
  `tipo` VARCHAR(3) NOT NULL,
  `situacao` CHAR(1) NULL,
  `quantidade` INT(4) NOT NULL,
  `valor` DECIMAL(15,2) NULL,
  `descricao` VARCHAR(60) NULL,
  `sigla` VARCHAR(5) NULL,
  PRIMARY KEY (`id`));

  
  
  
  
  CREATE TABLE `competence`.`tb03_cliente` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `cpfcnpj` INT(15) NOT NULL,
  `nome` VARCHAR(80) NOT NULL,
  `rg` INT(9) NULL,
  `cnh` INT(11) NULL,
  `razao_social` VARCHAR(60) NULL,
  `endereco` VARCHAR(45) NULL,
  `endereco_num` INT(6) NULL,
  `endereco_compl` VARCHAR(15) NULL,
  `bairro` VARCHAR(20) NULL,
  `cep` INT(8) NOT NULL,
  `cidade` VARCHAR(20) NULL,
  `estado` VARCHAR(20) NULL,
  `tel_principal` VARCHAR(11) NOT NULL,
  `tel_comercial` VARCHAR(11) NULL,
  `tel_ramal_1` VARCHAR(11) NULL,
  `tel_ramal_2` VARCHAR(11) NULL,
  `tel_celular_1` VARCHAR(11) NULL,
  `tel_celular_2` VARCHAR(11) NULL,
  `situacao` CHAR(1) NOT NULL,
  `tipo` VARCHAR(5) NOT NULL,
  `perfil` VARCHAR(5) NOT NULL,
  `indicacao` VARCHAR(45) NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `cpfcnpj_UNIQUE` (`cpfcnpj` ASC),
  UNIQUE INDEX `rg_UNIQUE` (`rg` ASC),
  UNIQUE INDEX `cnh_UNIQUE` (`cnh` ASC));
  
  
CREATE TABLE `competence`.`tb04_proposta` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `data_hora` TIMESTAMP NOT NULL,
  `valor_total` DECIMAL(15,2) NOT NULL,
  `prazo` VARCHAR(10) NULL,
  `tipo_prazo` VARCHAR(10) NULL,
  `tipo_pagamento` VARCHAR(20) NULL,
  `qtde_parcela` INT(3) NOT NULL,
  `status` VARCHAR(15) NOT NULL,
  `situacao` CHAR(1) NOT NULL,
  `tipo` VARCHAR(15) NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `id_usuario`
    FOREIGN KEY (`id`)
    REFERENCES `competence`.`tb01_usuario` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `id_cliente`
    FOREIGN KEY (`id`)
    REFERENCES `competence`.`tb03_cliente` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);
    
ALTER TABLE `competence`.`tb04_proposta` 
ADD COLUMN `id_cliente` INT NOT NULL AFTER `tipo`,
ADD COLUMN `id_usuario` INT NOT NULL AFTER `id_cliente`,
ADD INDEX `id_cliente_fk_idx` (`id_cliente` ASC),
ADD INDEX `id_usuario_fk_idx` (`id_usuario` ASC);
ALTER TABLE `competence`.`tb04_proposta` 
ADD CONSTRAINT `id_cliente_fk`
  FOREIGN KEY (`id_cliente`)
  REFERENCES `competence`.`tb03_cliente` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION,
ADD CONSTRAINT `id_usuario_fk`
  FOREIGN KEY (`id_usuario`)
  REFERENCES `competence`.`tb01_usuario` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

  
    
    CREATE TABLE `competence`.`tb05_nota` (
  `id` INT NOT NULL,
  `codigo` VARCHAR(45) NULL,
  `data_emissao` TIMESTAMP NOT NULL,
  `data_servico` VARCHAR(45) NOT NULL,
  `situacao` VARCHAR(45) NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `id`
    FOREIGN KEY (`id`)
    REFERENCES `competence`.`tb04_proposta` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

    ALTER TABLE `competence`.`tb05_nota` 
DROP FOREIGN KEY `id`;
ALTER TABLE `competence`.`tb05_nota` 
ADD CONSTRAINT `id_proposta`
  FOREIGN KEY (`id`)
  REFERENCES `competence`.`tb04_proposta` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;
  
CREATE TABLE `competence`.`tb06_proposta_produto` (
  `id` INT NOT NULL,
  `data` TIMESTAMP NOT NULL,
  `id_proposta` INT NOT NULL,
  `id_produto` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `id_proposta_idx` (`id_proposta` ASC),
  INDEX `id_produto_idx` (`id_produto` ASC),
  CONSTRAINT `id_proposta_fk`
    FOREIGN KEY (`id_proposta`)
    REFERENCES `competence`.`tb04_proposta` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `id_produto_fk`
    FOREIGN KEY (`id_produto`)
    REFERENCES `competence`.`tb02_produto` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);



