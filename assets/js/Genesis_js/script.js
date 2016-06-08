//var mensagem = '<?=$msg;?>';
$(function () {
    /*alert("ola mundo");*/
    $("td").click(function () {
        var conteudoOriginal = $(this).text();
        document.location.href = 'simulador.php?largura=' + conteudoOriginal + '|' + jscpf + '|' + jsvalor + '|' + jservico;
    });
});
/*
  // Holds mm/dd/yyyy
  ::-webkit-datetime-edit { }
  // appears when you edited date
  ::-webkit-clear-button { }
  // Up/down button 
  ::-webkit-inner-spin-button { }
  // ▼ select 
  ::-webkit-calendar-picker-indicator { }
  // month field
  ::-webkit-datetime-edit-month-field { }
  // day field
  ::-webkit-datetime-edit-day-field { }
  // year field
  ::-webkit-datetime-edit-year-field { }
*/
