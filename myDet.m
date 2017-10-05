function det = myDet(A)
[L,U,pA,sig] = lutx(A);

det = sig * prod(diag(U));