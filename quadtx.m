function [Q,fcount] = quadtx(F,a,b,tol,varargin)
%QUADTX Evaluate definite integral numerically.
% Q = QUADTX(F,A,B) approximates the integral of F(x)
% from A to B to within a tolerance of 1.e-6.
%
% Q = QUADTX(F,A,B,tol) uses tol instead of 1.e-6.
%
% The first argument, F, is a function handle or
% an anonymous function that defines F(x).
%
% Arguments beyond the first four,
% Q = QUADTX(F,a,b,tol,p1,p2,...), are passed on to the
% integrand, F(x,p1,p2,..).
%
% [Q,fcount] = QUADTX(F,...) also counts the number of
% evaluations of F(x).
%
% See also QUAD, QUADL, DBLQUAD, QUADGUI.
% Default tolerance
if nargin < 4 | isempty(tol)
tol = 1.e-6;
end
% Initialization
c = (a + b)/2;
fa = F(a,varargin{:});
fc = F(c,varargin{:});
fb = F(b,varargin{:});
% Recursive call
[Q,k] = quadtxstep(F, a, b, tol, fa, fc, fb, varargin{:});
fcount = k + 3;