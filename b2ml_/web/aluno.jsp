<jsp:include page="header.jsp">
    <jsp:param name="pageName" value="Cadastrar Aluno" />
</jsp:include>

<body>
    <div class="content">
        <section class="section-index">
            <div class="container-small">
                <form action="/aluno" method="POST">
                    <h2>Cadastrar Aluno</h2>

                    <%
                        String isInserted = (String) request.getAttribute("message");
                        if (isInserted != null) {
                    %>
                    <div class="alert">
                        <%= isInserted%>
                    </div>
                    <% } %>
                    
                    <%
                        String error = (String) request.getAttribute("error");
                        if (error != null) {
                    %>
                    <div class="error">
                        <%= error%>
                    </div>
                    <% } %>

                    <label>Matricula</label>
                    <input type="text" name="matricula" id="matricula" placeholder="00000000">

                    <label>Nome:</label>
                    <input type="text" name="nome" id="nome" placeholder="Jean Carlos">
                    <button type="subimit">Cadastrar</button>
                </form>
            </div>
        </section>
    </div>
</body>

</html>