<jsp:include page="header.jsp">
    <jsp:param name="pageName" value="Cadastrar Professor" />
</jsp:include>

<body>
    <div class="content">
        <section class="section-index">
            <div class="container-small">
                <form action="/professor" method="POST">
                    <h2>Cadastrar Professor</h2>

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

                    <label>Titulação</label>
                    <input type="text" name="titulacao" id="titulacao" placeholder="Doutor em Engenharia Elétrica">

                    <label>Nome:</label>
                    <input type="text" name="nome" id="nome" placeholder="Jean Carlos">
                    <button type="subimit">Cadastrar</button>
                </form>
            </div>
        </section>
    </div>
</body>

</html>