@base: black;
@sans:"Droid Sans Book","Arial Regular","DejaVu Sans Book";
@labels-color: black; 
@labels-halo-color: white;
 
Map { 
  background-color:@base; 
  background-opacity: 1.0;  // change to 0.0 if semitransparent layer is needed
}  
    
#srtm-low[zoom>=13][zoom<=14] {
  line-color:white; 
  line-width: 0.3;
  line-join:round; 
  line-smooth: 0.5;
    
  [Elevation % 200] 
  { 
    line-width:0.6;
     
    text-name: '[Elevation].ToString() + " m"';
    text-face-name: @sans;
    text-fill:@labels-color;
    text-size:10;
    text-spacing: 300;
    text-halo-radius:1;
    text-halo-fill: @labels-halo-color;
    text-halo-opacity: 0.6;
    text-placement: line;
    text-avoid-edges: true;
  }
}
 
#srtm-high[zoom>=15] {
  line-color:white;
  line-width: 0.3;
  line-join:round;
  line-smooth: 0.5;
   
  [Elevation % 100] { 
    line-width:0.6;
  
    text-name: '[Elevation].ToString() + " m"';
    text-face-name: @sans;
    text-fill:@labels-color;
    text-size:10; 
    text-spacing: 400;
    text-halo-radius:1;
    text-halo-fill: @labels-halo-color;
    text-halo-opacity: 0.6;
    text-placement: line;
    text-avoid-edges: true;
  }
}