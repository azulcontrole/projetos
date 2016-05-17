CREATE TABLE IF NOT EXISTS `azul_erp`.`produto` (
  `id_produto` INT(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_subgrupo` INT(11) UNSIGNED NOT NULL,
  `id_unidade` INT(11) UNSIGNED NOT NULL,
  `id_ncm` INT(11) UNSIGNED NOT NULL,
  `id_pessoa` INT(11) UNSIGNED NOT NULL COMMENT 'Fabricante',
  `cod_barra_produto` VARCHAR(13) NOT NULL,
  `descricao_produto` VARCHAR(50) NULL DEFAULT NULL,
  `especifica_produto` VARCHAR(45) NULL DEFAULT NULL COMMENT 'tamanho, medidas, peso, etc.',
  `status` CHAR(1) NULL COMMENT '1=ativo, 2=inativo.',
  `tamanho_produto` VARCHAR(20) NULL DEFAULT NULL,
  `cor_produto` VARCHAR(20) NULL DEFAULT NULL,
  `cadastro_produto` TIMESTAMP NULL DEFAULT NULL,
  `alterado_produto` TIMESTAMP NULL,
  `foto_produto` VARCHAR(200) NULL DEFAULT NULL,
  `subtrib_produto` INT(1) NULL,
  `quant_minima` DECIMAL(5,3) NOT NULL,
  PRIMARY KEY (`id_produto`, `id_subgrupo`),
  UNIQUE INDEX `un_cod_barra` (`cod_barra_produto` ASC),
  INDEX `idx_unidade_produto` (`id_unidade` ASC),
  INDEX `idx_subgrupo` (`id_subgrupo` ASC),
  INDEX `idx_descricao` (`descricao_produto` ASC),
  INDEX `idx_especifica` (`especifica_produto` ASC),
  INDEX `ifx_idncm` (`id_ncm` ASC),
  INDEX `idx_pessoa_fabricante` (`id_pessoa` ASC),
  CONSTRAINT `fk_produto_subgrupo`
    FOREIGN KEY (`id_subgrupo`)
    REFERENCES `azul_erp`.`subgrupo` (`id_subgrupo`)
    ON DELETE RESTRICT
    ON UPDATE RESTRICT,
  CONSTRAINT `fk_produto_unidade`
    FOREIGN KEY (`id_unidade`)
    REFERENCES `azul_erp`.`unidade` (`id_unidade`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_produto_ncm`
    FOREIGN KEY (`id_ncm`)
    REFERENCES `azul_erp`.`ncm` (`id_ncm`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_pessoa_fabricante`
    FOREIGN KEY (`id_pessoa`)
    REFERENCES `azul_erp`.`pessoa` (`id_pessoa`)
    ON DELETE RESTRICT
    ON UPDATE RESTRICT)
ENGINE = InnoDB
AUTO_INCREMENT = 125
DEFAULT CHARACTER SET = utf8
COMMENT = 'cadastro de produtos'


CREATE TABLE IF NOT EXISTS `azul_erp`.`estoque` (
  `id_estoque` INT(11) UNSIGNED NOT NULL,
  `id_produto` INT(11) UNSIGNED NOT NULL,
  `id_local` INT UNSIGNED NOT NULL,
  `quant_entr_estoque` DECIMAL(5,3) NULL,
  `quant_saida_estoque` DECIMAL(5,3) NULL DEFAULT NULL,
  `data_compra_estoque` DATE NULL,
  `valor_compra_estoque` DOUBLE(12,2) NULL DEFAULT NULL,
  `valor_venda_estoque` DOUBLE(12,2) NULL DEFAULT NULL,
  `margem_estoque` DECIMAL(5,3) NULL DEFAULT NULL,
  `data_registro` TIMESTAMP NULL DEFAULT NULL,
  `data_alteracao` TIMESTAMP NULL,
  PRIMARY KEY (`id_estoque`),
  INDEX `idx_produto` (`id_produto` ASC),
  INDEX `idx_local` (`id_local` ASC),
  CONSTRAINT `fk_estoque_produto`
    FOREIGN KEY (`id_produto`)
    REFERENCES `azul_erp`.`produto` (`id_produto`)
    ON DELETE RESTRICT
    ON UPDATE RESTRICT,
  CONSTRAINT `fk_local`
    FOREIGN KEY (`id_local`)
    REFERENCES `azul_erp`.`local_estoque` (`id_local`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8

CREATE TABLE IF NOT EXISTS `azul_erp`.`local_estoque` (
  `id_local` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_empresa` INT(11) UNSIGNED NOT NULL,
  `localizacao` VARCHAR(45) NULL,
  `area` VARCHAR(45) NULL,
  `setor` VARCHAR(45) NULL,
  PRIMARY KEY (`id_local`),
  INDEX `idx_localizacao` (`localizacao` ASC),
  INDEX `idx_empresa` (`id_empresa` ASC),
  CONSTRAINT `fk_estoque_empresa`
    FOREIGN KEY (`id_empresa`)
    REFERENCES `azul_erp`.`empresa` (`id_empresa`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB

