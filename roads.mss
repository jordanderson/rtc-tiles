/* ==================================================================
   ROAD & RAIL LINES
/* ================================================================== */

/* At lower zoomlevels, just show major automobile routes: motorways
and trunks. */

#roads_low[zoom>=5][zoom<=8] {
  [type='motorway'] { line-color: @motorway_line; }
  [type='trunk'] { line-color: @trunk_line; }
  [zoom=5] {
    [type='motorway'] { line-width: 0.4; }
    [type='trunk'] { line-width: 0.2; } }
  [zoom=6] {
    [type='motorway'] { line-width: 0.5; }
    [type='trunk'] { line-width: 0.25; } }
  [zoom=7] {
    [type='motorway'] { line-width: 0.6; }
    [type='trunk'] { line-width: 0.3; } }
  [zoom=8] {
    [type='motorway'] { line-width: 1; }
    [type='trunk'] { line-width: 0.5; } }
}

/* At mid-level scales start to show primary and secondary routes
as well. */

#roads_med[zoom>=9][zoom<=10] {
  [type='motorway'],
  [type='motorway_link'] {
    line-color: @motorway_line;
  }
  [type='trunk'],
  [type='trunk_link'] {
    line-color: @trunk_line;
  }
  [type='primary'] { line-color: @primary_line; }
  [type='secondary'] { line-color: @secondary_line; }
  [type='tertiary'] { line-color: @standard_line; }
  [zoom=9] {
    [type='motorway'],[type='trunk'] { line-width: 1.0; }
    [type='primary'],[type='secondary'],
    [type='motorway_link'],[type='trunk_link'] { line-width: 0.5; }
  }
  [zoom=10] {
    [type='motorway'],[type='trunk'] { line-width: 1.0; }
    [type='primary'],[type='secondary'],
    [type='motorway_link'],[type='trunk_link'] { line-width: 0.0; }
  }
} 

/* At higher levels the roads become more complex. We're now showing 
more than just automobile routes - railways, footways, and cycleways
come in as well.

/* Road width variables that are used in road & bridge styles */
@rdz11_maj: 0.1; @rdz11_med: 0.1; @rdz11_min: 0.1;
@rdz12_maj: 2.5; @rdz12_med: 1.2; @rdz12_min: 0.8;
@rdz13_maj: 3;   @rdz13_med: 1.5; @rdz13_min: 1;
@rdz14_maj: 5;   @rdz14_med: 3.5;   @rdz14_min: 3.5;
@rdz15_maj: 6 + @width_adjust*.4;   @rdz15_med: 9 + @width_adjust*.4;   @rdz15_min: 9 + @width_adjust*.4;
@rdz16_maj: 7 + @width_adjust*1.5;  @rdz16_med: 12 + @width_adjust*1.5;  @rdz16_min: 12 + @width_adjust*1.5;
@rdz17_maj: 16 + @width_adjust*2.5;  @rdz17_med: 20 + @width_adjust*2.5;  @rdz17_min: 20 + @width_adjust*2.5;
@rdz18_maj: 22 + @width_adjust*2;  @rdz18_med: 26 + @width_adjust*2;  @rdz18_min: 26 + @width_adjust*2;

/* ---- Bike Facilities ---------------------------------------------- */

#bike_lane[zoom>=11] {
  line-width: 1 + @width_adjust;
  line-color: @bike_lane;
  line-opacity: 0.8;
  [zoom=14] {line-opacity: 1.0; }
}

#bike_shared[zoom>=11] {
  line-width: 1 + @width_adjust;
  line-color: @bike_shared;
  line-opacity: 0.8;
  line-dasharray: 3,2; 
  [zoom=14] {line-opacity: 1.0; }
  [zoom>=15] {line-dasharray: 3,2;}
  [zoom>=17] {line-dasharray: 3,3;}
  
}

#greenway::outline[zoom>=15] {
  line-color: #fff;
  [zoom=15] {  line-width: 3.5 + @width_adjust; }
  [zoom=16] {  line-width: 5 + @width_adjust; }
  [zoom=17] {  line-width: 6 + @width_adjust; }
  [zoom=18] {  line-width: 8 + @width_adjust; }

}

#greenway[zoom>=11] {
    line-width: 1 + @width_adjust;
    line-color: @greenway;
    line-opacity: 0.9;
}
#bike_lane[zoom>=16],
#greenway[zoom>=16] {
    line-opacity: 0.5;  
}

#bike_shared[zoom>=16] {
	line-opacity: 0.6;  
}


#bike_lane,#bike_shared,#greenway {
  [zoom=11] { line-width: 0.4; }
  [zoom=12] { line-width: 0.6; }
  [zoom=13] { line-width: 0.8 + @width_adjust; }
  [zoom=14] { line-width: 0.8 + @width_adjust; }
  [zoom=15] { line-width: 1.2 + @width_adjust; }
  [zoom=16] { line-width: 2.0 + @width_adjust; }
  [zoom=17] { line-width: 3.0 + @width_adjust; }
  [zoom=18] { line-width: 5.0 + @width_adjust; }

}

/* ---- Casing ----------------------------------------------- */

#roads_high::outline[zoom>=11][zoom<=20],
#tunnel[render='1_outline'][zoom>=11][zoom<=20],
#bridge[render='1_outline'][zoom>=11][zoom<=20]{
  /* -- colors & styles -- */
  line-cap: round;
  [bridge=1] {
    line-cap: butt;
    line-opacity: 0.5;
  }

  line-join: round;
  line-color: @standard_case;
  [bridge=1] { line-color: @standard_case * 0.7; }
  [type='motorway'],
  [type='motorway_link'] {
    line-color: @motorway_case;
    [bridge=1] { line-color: @motorway_case * 0.7; }
  }
  [type='motorway_link'] {
    line-color: @motorway_link_case;
    [bridge=1] { line-color: @motorway_link_case * 0.7; }
  }
  [type='trunk'],
  [type='trunk_link'] {
    line-color: @trunk_case;
    [bridge=1] { line-color: @trunk_case * 0.7; }
  }
  [type='primary'],
  [type='primary_link'] {
    line-color: @primary_case;
    [bridge=1] { line-color: @primary_case * 0.7; }
  }
  [type='secondary'],
  [type='secondary_link'] {
    line-color: @secondary_case;
    [bridge=1] { line-color: @secondary_case * 0.8; }
  }
  [stylegroup='railway'] {
    line-color: fadeout(@land,50%);
    [bridge=1] { line-color: @secondary_case * 0.7; }
    [tunnel=1] { line-opacity: 0.0; }
  }
  [tunnel=1] { 
    line-dasharray: 3,3; 
    line-opacity: 0.1;
  }        
  /* -- Casing widths -- */
  [zoom=11] {
    [stylegroup='motorway'] { line-width: @rdz11_maj + 1; }
    /* No minor bridges yet */
    [stylegroup='mainroad'] { line-width: 0; }
    [stylegroup='minorroad']{ line-width: 0; }
    [stylegroup='service']  { line-width: 0; }
    [stylegroup='noauto']   { line-width: 0; }
    [stylegroup='railway']  { line-width: 0; }
  }
  [zoom=12] {
    [stylegroup='motorway'] { line-width: @rdz12_maj + 1; }
  	[stylegroup='mainroad'] { line-width: 0; }
    [stylegroup='minorroad']{ line-width: 0; }
    /* No minor bridges yet */
    [stylegroup='service']  { line-width: 0; }
    [stylegroup='noauto']   { line-width: 0; }
    [stylegroup='railway']  { line-width: 0; }
  }
  [zoom=13] {
    [stylegroup='motorway'] { line-width: @rdz13_maj + 2; }
   	[stylegroup='mainroad'] { line-width: 0; }
    [stylegroup='minorroad']{ line-width: 0; }
    /* No minor bridges yet */
    [stylegroup='service']  { line-width: 0; }
    [stylegroup='noauto']   { line-width: 0; }
    [stylegroup='railway']  { line-width: 0; }
  } 
  [zoom=14] {
    
    [stylegroup='motorway'] { line-width: @rdz14_maj + 2; }
  	[stylegroup='mainroad'] { line-width: @rdz14_med + 1.5; }
    [stylegroup='minorroad']{ line-width: @rdz14_min + 1; }
    /* No minor bridges yet */
    [stylegroup='service']  { line-width: 0; }
    [stylegroup='noauto']   { line-width: 0; }
    [stylegroup='railway']  { line-width: 0; }
    [type='motorway_link'] { line-width: 2 + @width_adjust; }
  }
  [zoom=15] {
    [stylegroup='motorway'] { line-width: @rdz15_maj + 2.5; }
    [stylegroup='mainroad'] { line-width: @rdz15_med + 2; }
    [stylegroup='minorroad']{ line-width: @rdz15_min + 1.5; }
    [stylegroup='service']  { line-width: @rdz15_min / 3 + 1; }
  /*  [stylegroup='noauto']   { line-width: @rdz15_min / 4 + 1; } */
    [stylegroup='railway']  { line-width: 1.5 + 1 + @width_adjust; }
    [type='motorway_link'] { line-width: 3 + @width_adjust; }
  }
  [zoom=16] {
    [stylegroup='motorway'] { line-width: @rdz16_maj + 3; }
    [stylegroup='mainroad'] { line-width: @rdz16_med + 3; }
    [stylegroup='minorroad']{ line-width: @rdz16_min + 3; }
    [stylegroup='service']  { line-width: @rdz16_min / 3 + 2; }
    /* [stylegroup='noauto']   { line-width: @rdz16_min / 4 + 2; } */
    [stylegroup='railway']  { line-width: 2 + 2 + @width_adjust; }
    [type='motorway_link'] { line-width: 5 + @width_adjust; }
  }
  [zoom>=17] {
    [stylegroup='motorway'] { line-width: @rdz17_maj + 3; }
    [stylegroup='mainroad'] { line-width: @rdz17_med + 3; }
    [stylegroup='minorroad']{ line-width: @rdz17_min + 3; }
    [stylegroup='service']  { line-width: @rdz17_min / 3 + 2; }
  /*  [stylegroup='noauto']   { line-width: @rdz17_min / 4 + 4; } */
    [stylegroup='railway']  { line-width: 3 + 4 + @width_adjust; } // 3 + 4
    [type='motorway_link'] { line-width: 8 + @width_adjust; }
  }
  [zoom>=18] {
    [stylegroup='motorway'] { line-width: @rdz18_maj + 3; }
    [stylegroup='mainroad'] { line-width: @rdz18_med + 3; }
    [stylegroup='minorroad']{ line-width: @rdz18_min + 3; }
    [stylegroup='service']  { line-width: @rdz18_min / 3 + 5; }
  /*  [stylegroup='noauto']   { line-width: @rdz18_min / 4 + 6; } */
    [stylegroup='railway']  { line-width: 8 + @width_adjust; }
  }
}

#roads_high[zoom>=11][zoom<=20],
#tunnel[render='3_inline'][zoom>=11][zoom<=20],
#bridge[render='3_inline'][zoom>=11][zoom<=20]{
  /* -- colors & styles -- */
  line-color: @standard_fill;
  [type='motorway'],
  [type='motorway_link'] {
    line-color: @motorway_fill;
    [tunnel=1] { 
      line-color: lighten(@motorway_fill, 10%); 
      line-opacity: 0.3;
      [zoom>=17] {line-opacity: 0.5; }
    }
   [type='motorway_link'] { line-color: @motorway_link_fill; }
   [type='motorway_link'][zoom=14] { line-width: .75 + @width_adjust; }
   [type='motorway_link'][zoom=15] { line-width: 2 + @width_adjust; }
   [type='motorway_link'][zoom=16] { line-width: 3 + @width_adjust; }
   [type='motorway_link'][zoom=17] { line-width: 5 + @width_adjust; }

  }
  [type='trunk'],
  [type='trunk_link'] {
    line-color: @trunk_fill;
    [tunnel=1] { 
      line-color: lighten(@trunk_fill, 10%); 
      line-opacity: 0.3;
      [zoom>=17] {line-opacity: 0.5; }
    }
  }
  [type='primary'],
  [type='primary_link'] {
    line-color: @primary_fill;
    [tunnel=1] { 
      line-color: lighten(@primary_fill, 10%); 
      line-opacity: 0.3;
      [zoom>=17] {line-opacity: 0.5; }
    }
  }
  [type='secondary'],
  [type='secondary_link'] {
    line-color: @secondary_fill;
    [tunnel=1] { 
      line-color: lighten(@secondary_fill, 10%); 
      line-opacity: 0.3;
      [zoom>=17] {line-opacity: 0.5; }
    }
  }
  [stylegroup='railway'] {
    line-color: @rail_line;
    line-dasharray: 1,1;
    [tunnel=1] { 
      line-opacity: 0.0; 
    }
    [zoom>15] { line-dasharray: 1,2; } 
  }
  [stylegroup='noauto'],
  [stylegroup='service'],
  [stylegroup='minorroad'] {
    line-width: 0;
  }
  [stylegroup='service'],
  [stylegroup='minorroad'],
  [stylegroup='mainroad'],
  [stylegroup='motorway'] {
    line-cap: round;
    line-join: round;
  }
  [stylegroup='noauto'] {
    line-join: round;
  }
  
  /* -- widths -- */

  [zoom=11] {
    [stylegroup='motorway'] { line-width: @rdz11_maj; }
    [stylegroup='mainroad'] { line-width: @rdz11_med; }
    [stylegroup='minorroad']{ line-width: 0; }
    [stylegroup='railway']  { line-width: 0.2; }
  }
  [zoom=12] {
    [stylegroup='motorway'] { line-width: @rdz12_maj; }
    [stylegroup='mainroad'] { line-width: @rdz12_med; }
    [stylegroup='minorroad']{ line-width: 0; }
    [stylegroup='railway']  { line-width: 0.4; }
  }
  [zoom=13] {
    [stylegroup='motorway'] { line-width: @rdz13_maj; }
    [stylegroup='mainroad'] { line-width: @rdz13_med; }
    [stylegroup='minorroad']{ line-width: @rdz13_min; }
    [stylegroup='service']  { line-width: @rdz13_min / 3; }
    [stylegroup='railway']  { line-width: 0.8; }
  }
  [zoom=14] {
    [stylegroup='motorway'] { line-width: @rdz14_maj; }
    [stylegroup='mainroad'] { line-width: @rdz14_med; }
    [stylegroup='minorroad']{ line-width: @rdz14_min; }
    [stylegroup='service']  { line-width: @rdz14_min / 3; }
    [stylegroup='noauto']   { 
      line-width: @rdz14_min / 4; 
      line-dasharray: 1,1;
      line-opacity: 0.6;
    }
    [stylegroup='railway']  { line-width: 1; }
  }
  [zoom=15] {
    [stylegroup='motorway'] { line-width: @rdz15_maj; }
    [stylegroup='mainroad'] { line-width: @rdz15_med; }
    [stylegroup='minorroad']{ line-width: @rdz15_min; }
    [stylegroup='service']  { line-width: @rdz15_min / 3; }
    [stylegroup='noauto']   { 
      line-width: @rdz15_min / 6;
      line-dasharray: 1,2; 
      line-color: @rail_fill;
      line-opacity: 0.8;
     }
    [stylegroup='railway']  { line-width: 1.5 + @width_adjust; }
  }
  [zoom=16] {
    [stylegroup='motorway'] { line-width: @rdz16_maj; }
    [stylegroup='mainroad'] { line-width: @rdz16_med; }
    [stylegroup='minorroad']{ line-width: @rdz16_min; }
    [stylegroup='service']  { line-width: @rdz16_min / 3; }
    [stylegroup='noauto']   { 
      line-width: @rdz16_min / 6; 
      line-dasharray: 2,2;
      line-color: @rail_fill;
      line-opacity: 0.8;
    }
    [stylegroup='railway']  { line-width: 2; }
  }
  [zoom=17] {
    [stylegroup='motorway'] { line-width: @rdz17_maj; }
    [stylegroup='mainroad'] { line-width: @rdz17_med; }
    [stylegroup='minorroad']{ line-width: @rdz17_min; }
    [stylegroup='service']  { line-width: @rdz17_min / 3; }
    [stylegroup='noauto']   { 
      line-width: @rdz17_min / 5; 
      line-dasharray: 2,2;
      line-opacity: 0.7;
    }
    [stylegroup='railway']  { line-width: 3; }
  }
  [zoom>=18] {
    [stylegroup='motorway'] { line-width: @rdz18_maj; }
    [stylegroup='mainroad'] { line-width: @rdz18_med; }
    [stylegroup='minorroad']{ line-width: @rdz18_min; }
    [stylegroup='service']  { line-width: @rdz18_min / 2; }
    [stylegroup='noauto']   { 
      line-width: @rdz18_min / 5; 
      line-dasharray: 3,3; 
      line-opacity: 0.8;
    }
    [stylegroup='railway']  { line-width: 4 + @width_adjust; }
  }
}

/* ---- Bridge fill for dashed lines -------------------------------- */
#tunnel[render='2_line'][zoom>=14][zoom<=20],
#bridge[render='2_line'][zoom>=14][zoom<=20]{
  /* -- colors & styles -- */
  [stylegroup='noauto'] {
    line-color: @land;
    line-width: 0;
    line-join: round;
  }
  [stylegroup='railway'] {
    line-color: @land;
    line-join: round;
  }
  [tunnel=1] {
          line-opacity: 0.0;
     }
  
  /* -- widths -- */
  [zoom=14] {
    [stylegroup='noauto']   { line-width: @rdz14_min / 4 + 1; }
    [stylegroup='railway']  { line-width: 1 + 1 + @width_adjust; }
  }
  [zoom=15] {
    [stylegroup='noauto']   { line-width: @rdz15_min / 4 + 1; }
    [stylegroup='railway']  { line-width: 1.5 + 1 + @width_adjust; }
  }
  [zoom=16] {
    [stylegroup='noauto']   { line-width: @rdz16_min / 4 + 1; }
    [stylegroup='railway']  { line-width: 2 + 1 + @width_adjust; }
  }
  [zoom=17] {
    [stylegroup='noauto']   { line-width: @rdz17_min / 4 + 6; }
    [stylegroup='railway']  { line-width: 3 + 2 + @width_adjust; }
  }
  [zoom>=18] {
    [stylegroup='noauto']   { line-width: @rdz18_min / 4 + 3; }
    [stylegroup='railway']  { line-width: 4 + 3 + @width_adjust; }
  }
  
  /* ---- motorway links --------------------------------------------------- */
  [type='motorway_link'] {
    line-width: 0.2 + @width_adjust;
    
  }
  
}


/* ---- Turning Circles --------------------------------------------- */
#turning_circle_case[zoom>=14] {
  marker-fill:@standard_fill;
  marker-line-color:@standard_case;
  marker-line-width:2;
  marker-allow-overlap:true;
}
#turning_circle_fill[zoom>=14] {
  marker-fill:@standard_fill;
  marker-line-width:0;
  marker-line-opacity:0;
  marker-allow-overlap:true;
}
#turning_circle_case,
#turning_circle_fill {
  [zoom=14] { marker-width:@rdz14_min * 1.1; }
  [zoom=15] { marker-width:@rdz15_min * 1.1; }
  [zoom=16] { marker-width:@rdz16_min * 1.1; }
  [zoom=17] { marker-width:@rdz17_min * 1.1; }
  [zoom>=18] { marker-width:@rdz18_min * 1.1; }
}

/* ================================================================== */
/* AEROWAYS
/* ================================================================== */

#aeroway[zoom>9] {
  line-color:@aeroway;
  line-cap:butt;
  line-join:miter;
  [type='runway'] {
    [zoom=10]{ line-width:1 + @width_adjust; }
    [zoom=11]{ line-width:2 + @width_adjust; }
    [zoom=12]{ line-width:3 + @width_adjust; }
    [zoom=13]{ line-width:5 + @width_adjust; }
    [zoom=14]{ line-width:7 + @width_adjust; }
    [zoom=15]{ line-width:11 + @width_adjust; }
    [zoom=16]{ line-width:15 + @width_adjust; }
    [zoom=17]{ line-width:19 + @width_adjust; }
    [zoom>17]{ line-width:23 + @width_adjust; }
  }
  [type='taxiway'] {
    [zoom=10]{ line-width:0.2 + @width_adjust; }
    [zoom=11]{ line-width:0.2 + @width_adjust; }
    [zoom=12]{ line-width:0.2 + @width_adjust; }
    [zoom=13]{ line-width:1 + @width_adjust; }
    [zoom=14]{ line-width:1.5 + @width_adjust; }
    [zoom=15]{ line-width:2 + @width_adjust; }
    [zoom=16]{ line-width:3 + @width_adjust; }
    [zoom=17]{ line-width:4 + @width_adjust; }
    [zoom>17]{ line-width:5 + @width_adjust; }
  }
}

/******************************************************************* */
