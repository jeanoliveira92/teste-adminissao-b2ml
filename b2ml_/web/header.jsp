<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://fonts.googleapis.com/css2?family=Nunito:ital,wght@0,200;0,300;0,400;0,600;0,700;0,800;0,900;1,200;1,300;1,400;1,600;1,700;1,800;1,900&display=swap" rel="stylesheet">
        <style>
            <%@include file="/style.css"%>
        </style>
        <script src="https://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
        <script>
            <%@include file="/script.js"%>
        </script>
        <title>${param.pageName}</title>
    </head>

    <body>
        <header>
            <div class="container">
                <a href="/">
                    <img class="logo" src="https://b2ml.com.br/b2ml/wp-content/uploads/2019/03/logo1.png">
                </a>
                <ul>
                    <li><a href="/aluno">Cadastrar Aluno</a></li>
                    <li><a href="/professor">Cadastrar Professor</a></li>
                    <li><a href="#">Área da Turma</a>
                        <ul>
                            <li><a href="/turma">Cadastrar Turma</a></li>
                            <li><a href="/turma/adicionar">Adicionar Aluno/Professor</a></li>
                            <li><a href="/urma">Exibir Turma</a></li>
                            <li><a href="/turma/check">Checar Turma</a></li>
                        </ul>
                    </li>
                </ul>
            </div>
        </header>