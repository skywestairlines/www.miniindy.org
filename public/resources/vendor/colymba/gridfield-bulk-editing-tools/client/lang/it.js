if(typeof(ss) == 'undefined' || typeof(ss.i18n) == 'undefined') {
  if(typeof(console) != 'undefined') console.error('Class ss.i18n not defined');
} else {
  ss.i18n.addDictionary('it', {
    "GRIDFIELD_BULK_UPLOAD.PROGRESS_INFO": "Caricamento del/dei file(s) %s. %s completato. %s errore(i).",
    "GRIDFIELD_BULK_MANAGER.BULKACTION_EMPTY_SELECT": "Devi selezionare almeno una voce.",
    "GRIDFIELD_BULK_MANAGER.CONFIRM_DESTRUCTIVE_ACTION": "I dati saranno persi per sempre. Vuoi continuare?"
});
}