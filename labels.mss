/* LABELS.MSS CONTENTS:
 * - place names
 * - area labels
 * - waterway labels 
 */

/* Font sets are defined in palette.mss */

/* Mapnik does not yet support character-spacing adjustments for 
   labels placed along a line. We can fake this using the replace()
   function in the text-name parameter by replacing each character
   with itself followed by one or more spaces. */

/* ================================================================== */
/* PLACE NAMES
/* ================================================================== */

#place::country[type='country'][zoom>3][zoom<9] {
  text-name:'[name]';
  text-face-name:@sans_bold;
  text-placement:point;
  text-fill:@country_text;
  text-halo-fill: @country_halo;
  text-halo-radius: 1;
  [zoom=3] {
    text-size:10 + @text_adjust;
    text-wrap-width: 40;
  }
  [zoom=4] {
    text-size:11 + @text_adjust;
    text-wrap-width: 50;
  }
  [zoom>4] {
    text-halo-radius: 2;
  }
  [zoom=5] {
    text-size:11 + @text_adjust;
    text-wrap-width: 50;
    text-line-spacing: 1;
  }
  [zoom=6] {
    text-size:12 + @text_adjust;
    text-character-spacing: 1;
    text-wrap-width: 80;
    text-line-spacing: 2;
  }
  [zoom=7] {
    text-size:14 + @text_adjust;
    text-character-spacing: 2;
  }
}

#place::state[type='state'][zoom>=5][zoom<=10] {
  text-name:'[name]';
  text-face-name:@sans_bold_italic;
  text-placement:point;
  text-fill:@state_text;
  text-halo-fill: @state_halo;
  text-halo-radius: 1;
  [zoom=6] {
    text-size:10 + @text_adjust;
    text-wrap-width: 40;
  }
  [zoom=7] {
    text-size:11 + @text_adjust;
    text-wrap-width: 50;
  }
  [zoom>8] {
    text-halo-radius: 2;
  }
  [zoom=8] {
    text-size:11 + @text_adjust;
    text-wrap-width: 50;
    text-line-spacing: 1;
  }
  [zoom=9] {
    text-size:12 + @text_adjust;
    text-character-spacing: 1;
    text-wrap-width: 80;
    text-line-spacing: 2;
  }
  [zoom=10] {
    text-size:14 + @text_adjust;
    text-character-spacing: 2;
  }
}

/* ---- Cities ------------------------------------------------------ */

#place::city[type='city'][zoom>=8][zoom<=15] {
  text-name:'[name]';
  text-face-name:@sans;
  text-placement:point;
  text-fill:@city_text;
  text-halo-fill:@city_halo;
  text-halo-radius:2;
  [zoom<=8] {
    text-size: 10 + @text_adjust;
    text-halo-radius:1;
  }
  [zoom=9] {
    text-size:10 + @text_adjust;
    text-wrap-width: 60;
  }
  [zoom=10] {
    text-size:11 + @text_adjust;
    text-wrap-width: 70;
  }
  [zoom=11] {
    text-size:12;
    text-character-spacing: 1;
    text-wrap-width: 80;
  }
  [zoom=12] {
    text-size:13 + @text_adjust;
    text-character-spacing: 1;
    text-wrap-width: 100;
  }
  [zoom=13] {
    text-size:14 + @text_adjust;
    text-character-spacing: 2;
    text-wrap-width: 200;
    text-transform: uppercase;
  }
  [zoom=14] {
    text-size:15 + @text_adjust;
    text-character-spacing: 4;
    text-wrap-width: 300;
    text-transform: uppercase;
  }
  [zoom=15] {
    text-size:16 + @text_adjust;
    text-character-spacing: 6;
    text-wrap-width: 400;
    text-transform: uppercase;
  }
}

/* ---- Towns ------------------------------------------------------- */

#place::town[type='town'][zoom>=9][zoom<=15] {
  text-name:'[name]';
  text-face-name:@sans;
  text-placement:point;
  text-fill:@town_text;
  text-size:9 + @text_adjust;
  text-halo-fill:@town_halo;
  text-halo-radius:1;
  text-wrap-width: 50;
  [zoom>=10] {
    text-halo-radius:2;
    text-size: 10 + @text_adjust;
  }
  [zoom>=11]{ text-size:11 + @text_adjust; }
  [zoom>=12]{
    text-size:12 + @text_adjust;
    text-line-spacing: 1;
  }
  [zoom>=13]{
    text-transform: uppercase;
    text-character-spacing: 1;
    text-line-spacing: 2;
  }
  [zoom>=14]{
    text-size:13 + @text_adjust;
    text-character-spacing: 2;
    text-line-spacing: 3;
  }
  [zoom>=15]{
    text-size:14 + @text_adjust;
    text-character-spacing: 3;
    text-line-spacing: 4;
  }
  [zoom>=15]{
    text-size:15 + @text_adjust;
    text-character-spacing: 4;
    text-line-spacing: 5;
  }
  [zoom>=17]{
    text-size:16 + @text_adjust;
    text-character-spacing: 5;
    text-line-spacing: 6;
  }
}

/* ---- Other small places ------------------------------------------ */
/*
#place::small[type='village'][zoom>=14][zoom<=15],
#place::small[type='suburb'][zoom>=14][zoom<=15],
#place::small[type='hamlet'][zoom>=14][zoom<=15] {
  text-name:'[name]';
  text-face-name:@sans;
  text-placement:point;
  text-fill:@other_text;
  text-size:10;
  text-halo-fill:@other_halo;
  text-halo-radius:1;
  text-wrap-width: 30;
  [zoom>=14] {
    text-size:11;
    text-character-spacing: 1;
    text-wrap-width: 40;
    text-line-spacing: 1;
  }
  [zoom>=15] {
    text-halo-radius: 2;
    text-transform: uppercase;
    text-character-spacing: 1;
    text-wrap-width: 60; 
    text-line-spacing: 1;
  }
  [zoom>=16] {
    text-size:12;
    text-character-spacing: 2;
    text-wrap-width: 120;
    text-line-spacing: 2;
  } 
  [zoom>=17] {
    text-size:13; 
    text-character-spacing: 3;
    text-wrap-width: 160;
    text-line-spacing: 4;
  }
  [zoom>=18] {
    text-size:14;
    text-character-spacing: 4;
    text-line-spacing: 6;
  }
}
*/

#place::small[type='locality'][zoom>=15] {
  text-name:'[name]';
  text-face-name:@sans;
  text-placement:point;
  text-fill:@locality_text;
  text-size:9 + @text_adjust;
  text-halo-fill:@locality_halo;
  text-halo-radius:1;
  text-wrap-width: 30;
  [zoom>=16] {
    text-size:10 + @text_adjust;
    text-wrap-width: 60;
    text-line-spacing: 1;
  }
  [zoom>=17] {
    text-size:11 + @text_adjust;
    text-wrap-width: 120;
    text-line-spacing: 2;
  }
  [zoom>=18] {
    text-size:12 + @text_adjust;
    text-character-spacing: 1;
    text-line-spacing: 4;
  }
}


/* ================================================================== */
/* AREA LABELS
/* ================================================================== */

#area_label[type='golf_course'][zoom>=10],
#area_label[type='park'][zoom>=10],
#area_label[type='beach'][zoom>=10],
#area_label[type='museum'][zoom>=10],
#area_label[type='school'][zoom>=10],
#area_label[type='library'][zoom>=10],
#area_label[type='bus_station'][zoom>=10],
#area_label[type='train_station'][zoom>=10],
#area_label[type='ferry_terminal'][zoom>=10],
#area_label[type='attraction'][zoom>=10],
#area_label[type='theatre'][zoom>=10],
#area_label[type='monument'][zoom>=10],
#area_label[type='swimming_pool'][zoom>=10]
{
  text-name: "''";
  text-fill: @park * 0.4;
  text-halo-fill: fadeout(@standard_fill,25%);
  text-halo-radius: 2;
  text-face-name:@sans;
  text-wrap-width:30;
  [zoom=10][area>102400000],
  [zoom=11][area>25600000],
  [zoom=13][area>1600000],
  [zoom=14][area>320000],
  [zoom=15][area>80000],
  [zoom=16][area>20000],
  [zoom=17][area>5000],
  [zoom>=18][area>=0] {
    text-name: "[name]";
  }
  [zoom>=15][area>1600000],
  [zoom>=16][area>80000],
  [zoom>=17][area>20000],
  [zoom>=18][area>5000] {
    text-name: "[name]";
    text-size: 12 + @text_adjust;
    text-line-spacing: 2;
    text-wrap-width: 60;
  }
  [zoom=16][area>1600000],
  [zoom=17][area>80000],
  [zoom>=18][area>20000] {
    text-size: 14 + @text_adjust;
    text-line-spacing: 4;
    text-character-spacing: 1;
    text-wrap-width: 120;
  }
  [zoom>=17][area>1600000],
  [zoom>=18][area>80000] {
    text-size: 16 + @text_adjust;
    text-line-spacing: 6;
    text-character-spacing: 2;
    text-wrap-width: 180;
  }
}

#area_label[type='beach'][zoom>=10],
#area_label[type='museum'][zoom>=10],
#area_label[type='school'][zoom>=10],
#area_label[type='library'][zoom>=10],
#area_label[type='bus_station'][zoom>=10],
#area_label[type='theatre'][zoom>=10],
#area_label[type='monument'][zoom>=10],
#area_label[type='ferry_terminal'][zoom>=10],
#area_label[type='train_station'][zoom>=10], 
#area_label[type='attraction'][zoom>=10] {
  text-fill: @poi_text * 0.4;
}

#area_label[type='cemetery'][zoom>=10] {
  text-name: "''";
  text-fill: @cemetery * 0.4;
  text-halo-fill: fadeout(@standard_fill,25%);
  text-halo-radius: 2;
  text-face-name:@sans;
  text-wrap-width:30;
  [zoom=10][area>102400000],
  [zoom=11][area>25600000],
  [zoom=13][area>1600000],
  [zoom=14][area>320000],
  [zoom=15][area>80000],
  [zoom=16][area>20000],
  [zoom=17][area>5000],
  [zoom>=18][area>=0] {
    text-name: "[name]";
  }
  [zoom=15][area>1600000],
  [zoom=16][area>80000],
  [zoom=17][area>20000],
  [zoom>=18][area>5000] {
    text-name: "[name]";
    text-size: 12 + @text_adjust;
    text-line-spacing: 2;
    text-wrap-width: 60;
  }
  [zoom=16][area>1600000],
  [zoom=17][area>80000],
  [zoom>=18][area>20000] {
    text-size: 14 + @text_adjust;
    text-line-spacing: 4;
    text-character-spacing: 1;
    text-wrap-width: 120;
  }
  [zoom>=17][area>1600000],
  [zoom>=18][area>80000] {
    text-size: 16 + @text_adjust;
    text-line-spacing: 6;
    text-character-spacing: 2;
    text-wrap-width: 180;
  }
}

#area_label[type='hospital'][zoom>=10] {
  text-name: "''";
  text-fill: @hospital * 0.4;
  text-halo-fill: fadeout(lighten(@standard_fill,10%),50%);
  text-halo-radius: 2;
  text-face-name:@sans;
  text-wrap-width:30;
  [zoom=14][area>320000],
  [zoom=15][area>80000],
  [zoom=16][area>20000],
  [zoom=17][area>5000],
  [zoom>=18][area>=0] {
    text-name: "[name]";
  }
  [zoom=16][area>80000],
  [zoom=17][area>20000],
  [zoom>=18][area>5000] {
    text-name: "[name]";
    text-size: 12 + @text_adjust;
    text-line-spacing: 2;
    text-wrap-width: 60;
  }
  [zoom=17][area>80000],
  [zoom>=18][area>20000] {
    text-size: 14 + @text_adjust;
    text-line-spacing: 4;
    text-character-spacing: 1;
    text-wrap-width: 120;
  }
  [zoom>=18][area>80000] {
    text-size: 16 + @text_adjust;
    text-line-spacing: 6;
    text-character-spacing: 2;
    text-wrap-width: 180;
  }
}

#area_label[type='college'][zoom>=10],
#area_label[type='school'][zoom>=10],
#area_label[type='university'][zoom>=10] {
  text-name: "''";
  text-fill: @other_text * 0.6;
  text-halo-fill: fadeout(lighten(@standard_fill,10%),50%);
  text-halo-radius: 2;
  text-face-name:@sans;
  text-wrap-width:30;
  [zoom=14][area>320000],
  [zoom=15][area>80000],
  [zoom=16][area>20000],
  [zoom=17][area>5000],
  [zoom>=18][area>=0] {
    text-name: "[name]";
  }
  [zoom=16][area>80000],
  [zoom=17][area>20000],
  [zoom>=18][area>5000] {
    text-name: "[name]";
    text-size: 12 + @text_adjust;
    text-line-spacing: 2;
    text-wrap-width: 60;
  }
  [zoom=17][area>80000],
  [zoom>=18][area>20000] {
    text-size: 14 + @text_adjust;
    text-line-spacing: 4;
    text-character-spacing: 1;
    text-wrap-width: 120;
  }
  [zoom>=18][area>80000] {
    text-size: 16 + @text_adjust;
    text-line-spacing: 6;
    text-character-spacing: 2;
    text-wrap-width: 180;
  }
}

#area_label[type='water'][zoom>=10] {
  text-name: "''";
  text-fill: @water * 0.75;
  text-halo-fill: fadeout(lighten(@water,5%),25%);
  text-halo-radius: 1;
  text-face-name:@sans_italic;
  text-wrap-width:30;
  [zoom=10][area>102400000],
  [zoom=11][area>25600000],
  [zoom=13][area>1600000],
  [zoom=14][area>320000],
  [zoom=15][area>80000],
  [zoom=16][area>20000],
  [zoom=17][area>5000],
  [zoom=18][area>=0] {
    text-name: "[name]";
  }
  [zoom=15][area>1600000],
  [zoom=16][area>80000],
  [zoom=17][area>20000],
  [zoom=18][area>5000] {
    text-name: "[name]";
    text-size: 12 + @text_adjust;
    text-line-spacing: 2;
    text-wrap-width: 60;
    text-character-spacing: 1;
  }
  [zoom=16][area>1600000],
  [zoom=17][area>80000],
  [zoom=18][area>20000] {
    text-size: 14 + @text_adjust;
    text-line-spacing: 4;
    text-character-spacing: 2;
    text-wrap-width: 120;
  }
  [zoom>=17][area>1600000],
  [zoom>=18][area>80000] {
    text-size: 16 + @text_adjust;
    text-line-spacing: 6;
    text-character-spacing: 3;
    text-wrap-width: 180;
  }
}
   
/* ================================================================== */
/* WATERWAY LABELS
/* ================================================================== */

#waterway_label[type='river'][zoom>=13],
#waterway_label[type='canal'][zoom>=15],
#waterway_label[type='stream'][zoom>=17] {
  text-name: '[name]';
  text-face-name: @sans_italic;
  text-fill: @water * 0.75;
  text-halo-fill: fadeout(lighten(@water,5%),25%);
  text-halo-radius: 1;
  text-placement: line;
  text-min-distance: 400;
  text-size: 10 + @text_adjust;
  [type='river'][zoom=14],
  [type='canal'][zoom=16],
  [type='stream'][zoom=18] {
    text-name: "[name].replace('([\S\ ])','$1 ')";
  }
  [type='river'][zoom=15],
  [type='canal'][zoom=17] {
    text-size: 11 + @text_adjust;
    text-name: "[name].replace('([\S\ ])','$1 ')";
  }
  [type='river'][zoom>=16],
  [type='canal'][zoom=18] {
    text-size: 14 + @text_adjust;
    text-name: "[name].replace('([\S\ ])','$1 ')";
    text-spacing: 300;
  }
}

/* ================================================================== */
/* ROAD LABELS
/* ================================================================== */
/*
#motorway_label[zoom>=11][zoom<=14][reflen<=8] {
  shield-name: "[ref]";
  shield-size: 9;
  shield-face-name: @sans_bold;
  shield-fill: #fff;
  shield-file: url(img/shield-motorway-1.png);
  [type='motorway'] {
    [reflen=1] { shield-file: url(img/shield-motorway-1.png); }
    [reflen=2] { shield-file: url(img/shield-motorway-2.png); }
    [reflen=3] { shield-file: url(img/shield-motorway-3.png); }
    [reflen=4] { shield-file: url(img/shield-motorway-4.png); }
    [reflen=5] { shield-file: url(img/shield-motorway-5.png); }
    [reflen=6] { shield-file: url(img/shield-motorway-6.png); }
    [reflen=7] { shield-file: url(img/shield-motorway-7.png); }
    [reflen=8] { shield-file: url(img/shield-motorway-8.png); }
  }
  [type='trunk'] {
    [reflen=1] { shield-file: url(img/shield-trunk-1.png); }
    [reflen=2] { shield-file: url(img/shield-trunk-2.png); }
    [reflen=3] { shield-file: url(img/shield-trunk-3.png); }
    [reflen=4] { shield-file: url(img/shield-trunk-4.png); }
    [reflen=5] { shield-file: url(img/shield-trunk-5.png); }
    [reflen=6] { shield-file: url(img/shield-trunk-6.png); }
    [reflen=7] { shield-file: url(img/shield-trunk-7.png); }
    [reflen=8] { shield-file: url(img/shield-trunk-8.png); }
  }
  [zoom=11] { shield-min-distance: 60; } //50
  [zoom=12] { shield-min-distance: 80; } //60
  [zoom=13] { shield-min-distance: 120; } //120
  [zoom=14] { shield-min-distance: 180; }
}
*/

#motorway_label[type='motorway'][zoom>9],
#motorway_label[type='trunk'][zoom>9] {
  text-name:"[name]";
  text-face-name:@sans_bold;
  text-placement:line;
  text-fill:@road_text;
  text-halo-fill:@road_halo;
  text-halo-radius:1;
  text-min-distance:140;
  text-character-spacing: 0.6;
  text-size:11 + @text_adjust;
  [zoom=11] { text-min-distance:100; }
  [zoom=12] { text-min-distance:120; }
  [zoom=13] { text-min-distance:140; }
  [zoom=17] { text-size:12 + @text_adjust; }
}
#motorway_label[type='motorway'][zoom>9] {
    text-size:10 + @text_adjust;
}

#mainroad_label[type='primary'][zoom>12],
#mainroad_label[type='secondary'][zoom>13],
#mainroad_label[type='tertiary'][zoom>13] {
  text-name:'[name]';
  text-face-name:@sans;
  text-placement:line;
  text-fill:@road_text;
  text-halo-fill:@road_halo;
  text-halo-radius:1;
  text-min-distance:120;
  text-size:10 + @text_adjust;
  [zoom=17] { text-size:11 + @text_adjust; }
}

#minorroad_label[zoom>14] {
  text-name:'[name]';
  text-face-name:@sans;
  text-placement:line;
  text-fill:@road_text;
  text-halo-fill:@road_halo;
  text-halo-radius:1;
  text-min-distance:120;
  text-size:10 + @text_adjust;
  [zoom=17] { text-size:11 + @text_adjust; }
}

/* ================================================================== */
/* ONE-WAY ARROWS
/* ================================================================== */

#motorway_label[oneway!=0][zoom>=15],
#mainroad_label[oneway!=0][zoom>=15],
#minorroad_label[oneway!=0][zoom>=15] {
  marker-placement:line;
  marker-max-error: 0.5;
  marker-spacing: 200;
  marker-file: url(img/icon/oneway.svg);
  [oneway=-1] { marker-file: url(img/icon/oneway-reverse.svg); }
  [zoom=15] { marker-transform: "scale(0.75 + @text_adjust)"; }
  [zoom=16] { marker-transform: "scale(1.0 * @text_adjust)"; }
  [zoom=17] { marker-transform: "scale(1.0 * @text_adjust)"; }
}


/* ****************************************************************** */
