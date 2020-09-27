
// Controle de Fluxo

var idade = prompt("Qual a sua Idade");

if (idade >= 18) {
    console.log("Posso ir no show do Iron Maiden - corram para as colinas!")
} else if (idade >= 12) {
    console.log("Posso ir no Show do Jonas Brothers.")
} else {
    console.log("Não possui idade suficiente.")
}

var ingresso = prompt("Qual o tipo de ingresso");
switch (ingresso){
    case 'vip':
        console.log("Irei ficar no camarote")
        break;
    case 'premium':
        console.log("Irei ficar na pista Premium.")
        break;
    case 'comun':
        console.log("Irei ficar na arquibancada.")
        break;
    default:
        console.log("Tipo de ingresso Inválido.")
        break;
}