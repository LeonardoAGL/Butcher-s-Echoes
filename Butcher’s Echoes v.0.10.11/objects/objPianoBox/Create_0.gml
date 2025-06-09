// Variables inicials
selected_note = -1; // -1 = cap tecla seleccionada encara
note_max = 6; // Indica l'índex màxim de les tecles (Do=0 ... Si=6)
input_delay = 0; // Per evitar canvis ràpids
visible = false;

spr_uipiano_note = array_create(7);
spr_uipiano_note[0] = spr_uipiano_do;
spr_uipiano_note[1] = spr_uipiano_re;
spr_uipiano_note[2] = spr_uipiano_mi;
spr_uipiano_note[3] = spr_uipiano_fa;
spr_uipiano_note[4] = spr_uipiano_sol;
spr_uipiano_note[5] = spr_uipiano_la;
spr_uipiano_note[6] = spr_uipiano_si;
