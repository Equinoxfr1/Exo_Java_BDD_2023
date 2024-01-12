<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
<title>les conditions</title>
</head>
<body bgcolor=white>
<h1>Exercices sur les conditions</h1>
<form action="#" method="post">
    <p>Saisir la valeur 1 : <input type="text" id="inputValeur" name="valeur1">
    <p>Saisir la valeur 2 : <input type="text" id="inputValeur" name="valeur2">
    <p><input type="submit" value="Afficher">
</form>
<%-- Récupération des valeurs --%>
    <% String valeur1 = request.getParameter("valeur1"); %>
    <% String valeur2 = request.getParameter("valeur2"); %>

    <%-- Vérification de la condition entre les deux valeurs --%>
    <% if (valeur1 != null && valeur2 != null) { %>
        <%-- Conversion des valeurs en entiers pour la comparaison --%>
        <% int intValeur1 = Integer.parseInt(valeur1); %>
        <% int intValeur2 = Integer.parseInt(valeur2); %>
        
        <%-- Condition if pour comparer les valeurs --%>
        <% if (intValeur1 > intValeur2) { %>
            <p>Valeur 1 est supérieure à Valeur 2.</p>
        <% } else if (intValeur1 < intValeur2) { %>
            <p>Valeur 1 est inférieure à Valeur 2.</p>
        <% } else { %>
            <p>Valeur 1 est égale à Valeur 2.</p>
        <% } %>
   
    
<h2>Exercice 1 : Comparaison 1</h2>
<p>Ecrire un programme qui demande à l'utilisateur de saisir 3 valeurs (des chiffres),</br>
A, B et C et dites nous si la valeur de C est comprise entre A et B.</br>
Exemple :</br>
A = 10</br>
B = 20</br>
C = 15</br>
Oui C est compris entre A et B</p>

<p> Mon truc : </p>
<p>Saisir la valeur 1 : <input type="text" id="inputValeur" name="val1">
<p>Saisir la valeur 2 : <input type="text" id="inputValeur" name="val2">
<p>Saisir la valeur 3 : <input type="text" id="inputValeur" name="val3">

<p><input type="submit" value="AfficherEx1">

<% String val1 = request.getParameter("val1"); %>
<% String val2 = request.getParameter("val2"); %>
<% String val3 = request.getParameter("val3"); %>

<% if (val1 != null && val2 != null && val3 != null) { %>

<% int intVal1 = Integer.parseInt(val1); %>
<% int intVal2 = Integer.parseInt(val2); %>
<% int intVal3 = Integer.parseInt(val3); %>

<% if (intVal1 < intVal2) { %>
    <% if (intVal3 > intVal2) { %>
        <p>Oui C est compris entre A et B</p>
    <% } else { %>
            <p>Non C n'est pas compris entre A et B</p>
<% } else { %>
            <p>Non C n'est pas compris entre A et B</p>
        <% } %>
<% } %>




<h2>Exercice 2 : Pair ou Impair ?</h2>
<p>Écrivez un programme pour vérifier si un nombre est pair ou impair en utilisant une structure if</p>

<% } %>
<p><a href="index.html">Retour au sommaire</a></p>
</body>
</html>
