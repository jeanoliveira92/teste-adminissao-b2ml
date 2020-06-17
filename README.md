# Teste de Admissão na B2ML

Sistema Java Web

## Tecnologias
* JAVA
* HTML
* CSS
* SQL
ALTER TABLE ONLY public.turma_aluno
    ADD CONSTRAINT turma_aluno_pkey PRIMARY KEY (turma_id, aluno_id);
* JDK E JRE 8
* PostgreSQL 12
* Payara Server 4.1.2.173
* Netbeans 8.2


## Banco de dados
Tabela Aluno
```
CREATE TABLE aluno (
    matricula integer NOT NULL primary key,
    nome character varying
);
```

Tabela Professor
```
CREATE TABLE professor (
    id integer NOT NULL  primary key,
    nome character varying,
    titulacao character varying
);
```

Tabela Turma
```
CREATE TABLE turma (
    id character varying NOT NULL  primary key,
    sala character varying,
    "dataAbertura" date,
    "dataEncerramento" date,
    professor integer
);
ALTER TABLE turma
    ADD CONSTRAINT professor_fk FOREIGN KEY (professor) REFERENCES public.professor(id) ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;
```

Tabela Relacionamento Aluno - Turma

```
CREATE TABLE public.turma_aluno (
    turma_id character varying NOT NULL,
    aluno_id integer NOT NULL
);
ALTER TABLE ONLY public.turma_aluno
    ADD CONSTRAINT turma_aluno_pkey PRIMARY KEY (turma_id, aluno_id);
```

## INTERFACE GERAL
<p align="center">
  <img alt="Frontend" src="https://github.com/jeanoliveira92/teste-adminissao-b2ml/blob/master/screenshot.png?raw=true" width="100%">
</p>


## Licença
Este projeto está licenciado sob a licença MIT - consulte o arquivo [LICENSE.md] (LICENSE.md) para obter detalhes.
