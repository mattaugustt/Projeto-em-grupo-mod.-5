CREATE DATABASE IF NOT EXISTS blocc;
USE blocc;

CREATE TABLE IF NOT EXISTS criptomoeda (
    Nome VARCHAR(255),
    Data DATE,
    Alta FLOAT,
    Baixa FLOAT,
    Aberto FLOAT,
    Fechado FLOAT,
    Volume FLOAT,
    Valor_de_Mercado FLOAT
);

-- carregando os dados --
LOAD DATA INFILE 'C:/Users/47131502023.1/Desktop/sql/criptomoedas.csv'
INTO TABLE criptomoeda
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 LINES;

SELECT * FROM criptomoeda;
