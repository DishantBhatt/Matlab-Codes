function bin = HW5Problem5(x)
  
  s = ' ';
  if(x < 0)
      s = '-';
      x = -x;
  end
  
  xint = floor(x);
  xdec = x - floor(x);
  Nmax = 104;
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

  bin = [s cbd '.' cad];
  
  xint = floor(x);
  xdec = x - floor(x);
  Nmax = 104;
  count = 1;
  
  cbd = []; 
  cad = [];
  
  while(xint > 0)     
      c0 = mod(xint,3);
      xint = (xint-c0)/3;      
      
      cbd = [num2str(c0) cbd];
  end
  
  while(xdec > 0 && count<=Nmax)     
      xdec = 3*xdec;
      c1 = floor(xdec);
      xdec = xdec - c1;
      cad = [cad num2str(c1)];
      count = count + 1;
  end

  binbase3 = [s cbd '.' cad]
  
  xint = floor(x);
  xdec = x - floor(x);
  Nmax = 104;
  count = 1;
  
  cbd = []; 
  cad = [];
  
  while(xint > 0)     
      c0 = mod(xint,8);
      xint = (xint-c0)/8;      
      
      cbd = [num2str(c0) cbd];
  end
  
  while(xdec > 0 && count<=Nmax)     
      xdec = 8*xdec;
      c1 = floor(xdec);
      xdec = xdec - c1;
      cad = [cad num2str(c1)];
      count = count + 1;
  end

  binbase8 = [s cbd '.' cad]
  
  xint = floor(x);
  xdec = x - floor(x);
  Nmax = 104;
  count = 1;
  
  cbd = []; 
  cad = [];
  
  while(xint > 0)     
      c0 = mod(xint,16);
      xint = (xint-c0)/16;
       if(c0==10)
           c0 = 'A';
 elseif(c0==11)
    c0 = 'B';
 elseif(c0==12)
    c0 = 'C';
elseif(c0==13)
    c0 = 'D';
elseif(c0==14)
    c0 = 'E';
 elseif(c0==15)
    c0 = 'F';
end
      
      cbd = [num2str(c0) cbd];
  end
  
  while(xdec > 0 && count<=Nmax)     
      xdec = 16*xdec;
      c1 = floor(xdec);
      xdec = xdec - c1;
           if(c1==10)
           c1 = 'A';
 elseif(c1==11)
    c1 = 'B';
 elseif(c1==12)
    c1 = 'C';
elseif(c1==13)
    c1 = 'D';
elseif(c1==14)
    c1 = 'E';
 elseif(c1==15)
    c1 = 'F';
end
      cad = [cad num2str(c1)];
      count = count + 1;
  end

  binhex = [s cbd '.' cad]
  
  
end