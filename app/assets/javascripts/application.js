//= require jquery
//= require jquery_ujs
//= require_tree .



function mascaraData(elemento, evento) {
  tab=8
  backspace=9

  if (evento.keyCode == backspace || evento.keyCode == tab)
      return true;

  if (elemento.value.length == 2) {
      elemento.value +='/';
      return true;
  }

  if (elemento.value.length == 5) {
      elemento.value +='/';
      return true;
  }

  zero = 48
  nove = 57

  return(evento.charCode >=zero && evento.charCode <=nove);
}






function mascaraTelefone(elemento, evento) {
  tab=8
  backspace=9

  if (evento.keyCode == backspace || evento.keyCode == tab)
     return true;

  if (elemento.value.length == 0) {
      elemento.value ='(';
      return true;
  }

  if (elemento.value.length == 3) {
      elemento.value +=') ';
      return true;
  }

  if (elemento.value.length == 9) {
      elemento.value +='-';
      return true;
  }

  zero = 48
  nove = 57

  return(evento.charCode >=zero && evento.charCode <=nove);
}





function mascaraCPF(elemento, evento) {
   tab=8
   backspace=9

   if (evento.keyCode == backspace || evento.keyCode == tab)
      return true;

   if (elemento.value.length == 3) {
       elemento.value +='.';
       return true;
   }

   if (elemento.value.length == 7) {
       elemento.value +='.';
       return true;
   }

   if (elemento.value.length == 11) {
       elemento.value +='-';
       return true;
   }

   zero = 48
   nove = 57

   return(evento.charCode >=zero && evento.charCode <=nove);
}




function mascaraCEP(elemento, evento) {
   tab=8
   backspace=9

   if (evento.keyCode == backspace || evento.keyCode == tab)
       return true;

   if (elemento.value.length == 5) {
       elemento.value +='-';
       return true;
   }

   zero = 48
   nove = 57

   return(evento.charCode >=zero && evento.charCode <=nove);
}
