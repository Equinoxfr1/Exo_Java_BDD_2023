<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
<title>Boucles</title>
</head>
<body bgcolor=white>
<h1>Exercices sur les boucles</h1>
<form action="#" method="post">
    <label for="inputValeur">Saisir le nombre d'étoiles : </label>
    <input type="text" id="inputValeur" name="valeur">
    <input type="submit" value="Afficher">
</form>


<% String valeur = request.getParameter("valeur"); %>
<% if (valeur != null && !valeur.isEmpty()) { %>
<%int cpt = Integer.parseInt(valeur); %>

<h2>Exercice 1 : Le carré d'étoiles</h2>
    <% for (int i = 1; i <= cpt; i++) { %>
        <% for (int j = 1; j <= cpt; j++) { %>
           <%="*"%>
        <% } %>
    </br>
    <% } %>
</p>
<p></p>

<h2>Exercice 2 : Triangle rectangle gauche</h2>
<p>
    <p>
    <% for (int i = 1; i <= cpt; i++) { %>
        <% for (int j = 1; j <= i; j++) { %>
           <%="*"%>
        <% } %>
    </br>
    <% } %>
</p>

<h2>Exercice 3 : Triangle rectangle inversé</h2>
<p>
<% for (int i = 1; i <= cpt; i++) { %>
        <% for (int j = 0; j <= cpt-i; j++) { %>
           <%="*" %>
        <% } %>
    </br>
    <% } %>
</p>

<h2>Exercice 4 : Triangle rectangle 2</h2>
<p><% for (int i = 1; i <= cpt; i++) { %>
        <% for (int j = 1; j <= cpt-i; j++) { %>
           <%="\u00A0\u00A0" %>
        <% } %>
        <% for (int k = 1; k <= i; k++) { %>
           <%="*" %>
        <% } %>
    </br>
    <% } %></p>

<h2>Exercice 5 : Triangle isocele</h2>
<p>
<% for (int i = 1; i <= cpt; i++) { %>
        <% for (int j = 1; j <= cpt-i; ++j) { %>
           <%="\u00A0" %>
        <% } %>
        <% for (int k = 1; k <= i; k++) { %>
           <%="*" %>
        <% } %>
    </br>
    <% } %>
</p>

<h2>Exercice 6 : Le demi losange</h2>
<p><% for (int i = 1; i <= cpt; i++) { %>
        <% for (int j = 1; j <= cpt-i; j++) { %>
           <%="\u00A0\u00A0" %>
        <% } %>
        <% for (int k = 1; k <= i; k++) { %>
           <%="*" %>
        <% } %>
    </br>
    <% } %>
</p>
<p><% for (int ii = cpt; ii >= 1; ii--) { %>
        <% for (int jj = 1; jj <= cpt-ii; jj++) { %>
           <%="\u00A0\u00A0" %>
        <% } %>
        <% for (int kk = 1; kk <= ii; kk++) { %>
           <%="*" %>
        <% } %>
    </br>
    <% } %>
</p>

<h2>Exercice 7 : La table de multiplication</h2>
<p>
<% for (int i = 1 ; i <= cpt ; i++){ %>
    <% = "x" + "=" %>
    <% = "=" %>
</p>

<% } %>
<p><a href="index.html">Retour au sommaire</a></p>
</body>
</html>
