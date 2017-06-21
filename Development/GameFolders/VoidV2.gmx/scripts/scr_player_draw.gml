draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, 0, c_white, 1);
draw_sprite_ext(spr_collision, 0, x, y, sprite_width/1000, sprite_height/1000, 0, c_white, 1);

scr_player_check_change();

if wasd_alpha > 0 {
    wasd_alpha -= wasd_alpha_reduce;
    draw_sprite_ext(spr_wasd, 0, x, y, 0.5, 0.5, 0, c_white, wasd_alpha);
}

draw_set_color(c_white);
draw_set_font(FONT);
draw_set_halign(fa_left);
draw_set_valign(fa_bottom);
draw_text(x+sprite_width/2, y-sprite_height/2, "Mass: " + string(floor(mass)));
draw_line(x+sprite_width/2, y-sprite_height/2+2, x+sprite_width/2+150, y-sprite_height/2+2);
draw_line(x+sprite_width/2-20, y-sprite_height/2+20, x+sprite_width/2, y-sprite_height/2+2);

//draw_set_color(c_blue);
//draw_circle(x, y, mass/2, true);

draw_set_color(c_aqua);
draw_text(view_xview[0]+32, view_yview[0]+100, fps);

/*
//feitje stage 1
if paused = true && OBJECT_PLAYER.mass < 500 && OBJECT_PLAYER.mass > 300 {
draw_set_font(FONT);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_alpha(0.8);
draw_set_color(c_black);
draw_rectangle(view_xview[0] + view_wview[0]/2 - 800, view_yview[0] + view_hview[0]/2 - 400, view_xview[0] + view_wview[0]/2 + 800, view_yview[0] + view_hview[0]/2 + 400, false);
draw_set_color(c_white);
draw_set_alpha(1);
draw_rectangle(view_xview[0] + view_wview[0]/2 - 800, view_yview[0] + view_hview[0]/2 - 400, view_xview[0] + view_wview[0]/2 + 800, view_yview[0] + view_hview[0]/2 + 400, true);
draw_text(view_xview[0] + view_wview[0]/2 - 800 + 2, view_yview[0] + view_hview[0]/2 - 400, " Een gele dwergster (bijvoorbeeld onze Zon)# heeft een levensduur van ongeveer 10 miljard jaar.# Als de gele dwergster alle waterstof in de kern in helium heeft omgezet# wordt hij groot en rood,# een rode reus. In dit stadium fuseert helium tot koolstof# waaruit een reactie volgt# waarbij zuurstof gevormd wordt.#    klik op 'enter' om door te gaan"); ;

//feitje stage 2
}
if paused = true && OBJECT_PLAYER.mass < 900 && OBJECT_PLAYER.mass > 700 {
draw_set_font(FONT);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_alpha(0.8);
draw_set_color(c_black);
draw_rectangle(view_xview[0] + view_wview[0]/2 - 800, view_yview[0] + view_hview[0]/2 - 400, view_xview[0] + view_wview[0]/2 + 800, view_yview[0] + view_hview[0]/2 + 400, false);
draw_set_color(c_white);
draw_set_alpha(1);
draw_rectangle(view_xview[0] + view_wview[0]/2 - 800, view_yview[0] + view_hview[0]/2 - 400, view_xview[0] + view_wview[0]/2 + 800, view_yview[0] + view_hview[0]/2 + 400, true);
draw_text(view_xview[0] + view_wview[0]/2 - 800 + 2, view_yview[0] + view_hview[0]/2 - 400, "De benaming dwerg zegt niets over de massa# of over de omvang van de ster, noch wordt er eenzelfde# ontstaansgeschiedenis of fase in hun leven mee aangeduid.# Er zijn dwergsterren die heet zijn en dwergsterren die koel zijn.# Hieraan danken zij de verschillende benamingen# (bruin, oranje, rood, geel, wit en zwart).# Klik op 'enter' om door te gaan");

//feitje stage 3
}
if paused = true && OBJECT_PLAYER.mass < 1800 && OBJECT_PLAYER.mass > 1400{
draw_set_font(FONT);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_alpha(0.8);
draw_set_color(c_black);
draw_rectangle(view_xview[0] + view_wview[0]/2 - 800, view_yview[0] + view_hview[0]/2 - 400, view_xview[0] + view_wview[0]/2 + 800, view_yview[0] + view_hview[0]/2 + 400, false);
draw_set_color(c_white);
draw_set_alpha(1);
draw_rectangle(view_xview[0] + view_wview[0]/2 - 800, view_yview[0] + view_hview[0]/2 - 400, view_xview[0] + view_wview[0]/2 + 800, view_yview[0] + view_hview[0]/2 + 400, true);
draw_text(view_xview[0] + view_wview[0]/2 - 800 + 2, view_yview[0] + view_hview[0]/2 - 400, " Een hypernova is de zwaarste bekende explosie in het heelal,# afgezien van de oerknal.# Een hypernova wordt veroorzaakt door het ineenstorten# van een zeer zware ster tot een zwaar zwart gat.# De massa van de kern van de ineenstortende ster is meer dan 25 keer# die van de zon.#    klik op 'enter' om door te gaan" );
//feitje stage 4
}
if paused = true && OBJECT_PLAYER.mass < 3500 && OBJECT_PLAYER.mass > 2500{
draw_set_font(FONT);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_alpha(0.8);
draw_set_color(c_black);
draw_rectangle(view_xview[0] + view_wview[0]/2 - 800, view_yview[0] + view_hview[0]/2 - 400, view_xview[0] + view_wview[0]/2 + 800, view_yview[0] + view_hview[0]/2 + 400, false);
draw_set_color(c_white);
draw_set_alpha(1);
draw_rectangle(view_xview[0] + view_wview[0]/2 - 800, view_yview[0] + view_hview[0]/2 - 400, view_xview[0] + view_wview[0]/2 + 800, view_yview[0] + view_hview[0]/2 + 400, true);
draw_text(view_xview[0] + view_wview[0]/2 - 800 + 2, view_yview[0] + view_hview[0]/2 - 400, "Een karakteristieke blauwe reus heeft een massa van gemiddeld 10 maal# de zonnemassa en produceert tienduizend maal meer energie dan onze# zon.# Door deze hoge snelheid van de kernfusie in het binnenste van de ster# raakt de waterstof relatief snel op, zodat de ster reeds na enkele# tientallen miljoenen jaren de hoofdreeks verlaat en op weg gaat# om een supernova van het type II te worden.#Ter vergelijking: een ster als onze zon heeft een levensduur van# 10 miljard jaar.#    klik op 'enter' om door te gaan");

//feitje stage 5
}
if paused = true && OBJECT_PLAYER.mass < 7000 && OBJECT_PLAYER.mass > 5000{
draw_set_font(FONT);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_alpha(0.8);
draw_set_color(c_black);
draw_rectangle(view_xview[0] + view_wview[0]/2 - 800, view_yview[0] + view_hview[0]/2 - 400, view_xview[0] + view_wview[0]/2 + 800, view_yview[0] + view_hview[0]/2 + 400, false);
draw_set_color(c_white);
draw_set_alpha(1);
draw_rectangle(view_xview[0] + view_wview[0]/2 - 800, view_yview[0] + view_hview[0]/2 - 400, view_xview[0] + view_wview[0]/2 + 800, view_yview[0] + view_hview[0]/2 + 400, true);
draw_text(view_xview[0] + view_wview[0]/2 - 800 + 2, view_yview[0] + view_hview[0]/2 - 400, " Een witte dwerg is een van de mogelijke eindfasen# van een ster die aan het# einde van haar levenscyclus is gekomen.# In de witte dwerg vinden dus geen kernreacties meer plaats.# De massa van de kern moet kleiner zijn dan# 1,4 zonmassa's om de ster in een witte dwerg te laten veranderen.# Is de massa groter, dan eindigt de ster als een neutronenster# of een zwart gat.#     klik op 'enter' om door te gaan");
//feitje stage 6
}
if paused = true && OBJECT_PLAYER.mass < 15000 && OBJECT_PLAYER.mass > 9999{
draw_set_font(FONT);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_alpha(0.8);
draw_set_color(c_black);
draw_rectangle(view_xview[0] + view_wview[0]/2 - 800, view_yview[0] + view_hview[0]/2 - 400, view_xview[0] + view_wview[0]/2 + 800, view_yview[0] + view_hview[0]/2 + 400, false);
draw_set_color(c_white);
draw_set_alpha(1);
draw_rectangle(view_xview[0] + view_wview[0]/2 - 800, view_yview[0] + view_hview[0]/2 - 400, view_xview[0] + view_wview[0]/2 + 800, view_yview[0] + view_hview[0]/2 + 400, true);
draw_text(view_xview[0] + view_wview[0]/2 - 800 + 2, view_yview[0] + view_hview[0]/2 - 400, "een zwart gat is een gebied# in de astronomische ruimte waaruit niets,# zelfs licht niet, kan ontsnappen.# Dit is het gevolg van een extreme vervorming van de ruimtetijd die hier optreedt,# door de zwaartekracht van een zeer# compacte enorme massa.#     klik op 'enter' om door te gaan");
}
