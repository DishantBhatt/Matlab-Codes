function bin = dec_to_bin(x)
  
  s = ' ';
  if(x < 0)
      s = '-';
      x = -x;
  end
  
  xint = floor(x);
  xdec = x - floor(x);
  Nmax = 52;
  count = 1;
  
  cbd = []; 
  cad = [];
  
  while(xint > 0)     
      c0 = mod(xint,2);
      xint = (xint-c0)/2;      
      
      cbd = [num2str(c0) cbd];
  end
  
  while(xdec > 0 && count<=Nmax)     
      xdec = 2*xdec;
      c1 = floor(xdec);
      xdec = xdec - c1;
      cad = [cad num2str(c1)];
      count = count + 1;
  end
    while(length(cbd)<11)
        cbd = [num2str(0) cbd];
    end
    
    while(length(cad) < 52)
        cad = [ cad num2str(0) ];
    end
    
    
  bin = [s cbd '.' cad];
  
end