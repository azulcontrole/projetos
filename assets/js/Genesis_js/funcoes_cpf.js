//arquivo funcoes_cpf.js
// validador CPF
function moedaMask(z){  
                  v = z.value;
                  v=v.replace(/\D/g,"")  //permite digitar apenas números
                  v=v.replace(/[0-9]{12}/,"inválido")   //limita pra máximo 999.999.999,99
                  v=v.replace(/(\d{1})(\d{8})$/,"$1.$2")  //coloca ponto antes dos últimos 8 digitos
                  v=v.replace(/(\d{1})(\d{5})$/,"$1.$2")  //coloca ponto antes dos últimos 5 digitos
                  v=v.replace(/(\d{1})(\d{1,2})$/,"$1,$2")  //coloca virgula antes dos últimos 2 digitos
                  z.value = v;
            }

function jurosMask(z){  
    v = z.value;
    v=v.replace(/\D/g,"")  //permite digitar apenas números
    v=v.replace(/[0-9]{12}/,"inválido")   //limita pra máximo 999.999.999,99
    v=v.replace(/(\d{1})(\d{1,5})$/,"$1.$2")  //coloca virgula antes dos últimos 2 digitos
    z.value = v;
}

function taxaSeguroMask(z){  
    v = z.value;
    v=v.replace(/\D/g,"")  //permite digitar apenas números
    v=v.replace(/[0-9]{12}/,"inválido")   //limita pra máximo 999.999.999,99
    v=v.replace(/(\d{1})(\d{8})$/,"$1.$2")  //coloca ponto antes dos últimos 8 digitos
    v=v.replace(/(\d{1})(\d{5})$/,"$1.$2")  //coloca ponto antes dos últimos 5 digitos
    v=v.replace(/(\d{1})(\d{1,2})$/,"$1.$2")  //coloca virgula antes dos últimos 2 digitos
    z.value = v;
}

function verificarCPF(c){
    c=c.replace(/[^\d]+/g,'');
    var i;
    s = c;
    var c = s.substr(0,9);
    var dv = s.substr(9,2);
    var d1 = 0;
    var v = false;
 
    for (i = 0; i < 9; i++){
        d1 += c.charAt(i)*(10-i);
    }
    if (d1 == 0){
        alert("CPF Inválido")
        v = true;
        return false;
    }
    d1 = 11 - (d1 % 11);
    if (d1 > 9) d1 = 0;
    if (dv.charAt(0) != d1){
        alert("CPF Inválido")
        v = true;
        return false;
    }
 
    d1 *= 2;
    for (i = 0; i < 9; i++){
        d1 += c.charAt(i)*(11-i);
    }
    d1 = 11 - (d1 % 11);
    if (d1 > 9) d1 = 0;
    if (dv.charAt(1) != d1){
        alert("CPF Inválido")
        v = true;
        return false;
    }
    if (!v) {
        //alert(c + "nCPF Válido")
        return true;
    }
}

function verificarCNPJ(cnpj) {
 
    cnpj = cnpj.replace(/[^\d]+/g,'');
    alert(cnpj);
    if(cnpj == ''){
       alert("CNPJ Inválido");
       return false;
     }

    if (cnpj.length != 14){
       alert("CNPJ Inválido");
        return false;
    }
    // Elimina CNPJs invalidos conhecidos
    /*
    if (cnpj == "00000000000000" || 
        cnpj == "11111111111111" || 
        cnpj == "22222222222222" || 
        cnpj == "33333333333333" || 
        cnpj == "44444444444444" || 
        cnpj == "55555555555555" || 
        cnpj == "66666666666666" || 
        cnpj == "77777777777777" || 
        cnpj == "88888888888888" || 
        cnpj == "99999999999999"){
        alert("CNPJ Inválido")
        return false;
    }
    */
    // Valida DVs
    tamanho = cnpj.length - 2
    numeros = cnpj.substring(0,tamanho);
    digitos = cnpj.substring(tamanho);
    soma = 0;
    pos = tamanho - 7;
    for (i = tamanho; i >= 1; i--) {
      soma += numeros.charAt(tamanho - i) * pos--;
      if (pos < 2)
            pos = 9;
    }
    resultado = soma % 11 < 2 ? 0 : 11 - soma % 11;
    if (resultado != digitos.charAt(0)){
       alert("CNPJ Inválido");
       return false;
    }     
    tamanho = tamanho + 1;
    numeros = cnpj.substring(0,tamanho);
    soma = 0;
    pos = tamanho - 7;
    for (i = tamanho; i >= 1; i--) {
      soma += numeros.charAt(tamanho - i) * pos--;
      if (pos < 2)
            pos = 9;
    }
    resultado = soma % 11 < 2 ? 0 : 11 - soma % 11;
    if (resultado != digitos.charAt(1)){
       alert("CNPJ Inválido");
          return false;
    }
    return true;  
}

function formatar(mascara, documento){
  var i = documento.value.length;
  var saida = mascara.substring(0,1);
  var texto = mascara.substring(i)
  
  if (texto.substring(0,1) != saida){
            documento.value += texto.substring(0,1);
  }
  
}

function mostraMsg(msg){
    alert(msg);
    return false;
}
  
function send(action){
  switch(action) {
    case 'save':
      url = 'save.php';
      break;
    case 'vvolta':
      url = 'menu.html';
      break;
    case 'simulador':
      url = 'simulador.php';
      break;
    case 'publish':
      url = 'simulamensal.php';
      break;
    case 'simulacao':
      alert("Simulacao");
//      url = 'simulacao.php';
      url ="?m=cad_simulamensal&t=lista";
      break;
  }
  
  document.forms[0].action = url;
  document.forms[0].submit();
}      
