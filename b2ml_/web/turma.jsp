<jsp:include page="header.jsp">
    <jsp:param name="pageName" value="Cadastrar Turma" />
</jsp:include>

<body>
    <div class="content">
        <section class="section-index">
            <div class="container-small">
                <form action="/turma" method="POST">
                    <h2>Cadastrar Turma</h2>

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

                    <label>Sala</label>
                    <input type="text" name="sala" id="sala" placeholder="EM01">

                    <label>Data de Abertura</label>
                    <input type="date" name="dataab" id="dataab">
                    
                    <label>Data de Encerramento</label>
                    <input type="date" name="dataen" id="dataen">
                    <button type="subimit">Cadastrar</button>
                </form>
            </div>
        </section>
    </div>
</body>

</html>