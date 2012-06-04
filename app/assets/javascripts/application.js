// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
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
