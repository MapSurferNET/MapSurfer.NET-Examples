@base: #9EB4D6;
@sans:"Droid Sans Book","Arial Regular","DejaVu Sans Book";
@labels-color: #717768; 
@labels-halo-color: #D8E0BE;
@contour-color: #828A77;
 
Map { 
  background-color:@base; 
  background-opacity: 1.0;  // change to 0.0 if semitransparent layer is needed
}  

#srtm-low[zoom>=12][zoom<=14] {
  line-color: @contour-color; 
  line-width: 0.15;
  line-join:round; 
  line-smooth: 0.5;
    
  [Elevation % 200] 
  { 
    line-width:0.6;
     
    text-name: '[Elevation].ToString() + " m"';
    text-face-name: @sans;
    text-fill: @labels-color;
    text-size: 9.25;
    text-spacing: 300;
    text-halo-radius:1;
    text-halo-fill: @labels-halo-color;
    text-halo-opacity: 0.6;
    text-placement: line;
    text-avoid-edges: true;
  }
}
 
#srtm-high[zoom>=15] {
  line-color: @contour-color;
  line-width: 0.2;
  line-join:round;
  line-smooth: 0.5;
   
  [Elevation % 100] { 
    line-width:0.6;
  
    text-name: '[Elevation].ToString() + " m"';
    text-face-name: @sans;
    text-fill: @labels-color;
    text-size: 9.75; 
    text-spacing: 400;
    text-halo-radius:1;
    text-halo-fill: @labels-halo-color;
    text-halo-opacity: 0.6;
    text-placement: line;
    text-avoid-edges: true;
  }
}  
  
#dem[zoom>=6] {
  raster-opacity:1;
  raster-scaling:lanczos;
  raster-colorizer-default-mode: linear;
  raster-colorizer-default-color: transparent;
  raster-colorizer-stops:
    stop(0, #00000000) 
    stop(10, #C7DAA5)
    stop(200, #DEE5C3)
    stop(1000, #B9CFB5)
    stop(1500, #A5BBA1)
    stop(3500, #CDE3C9)
    stop(5500, white);
}  