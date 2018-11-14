%% ELE 532 LAB 2: FOURIER SERIES ANALYSIS USING MATLAB
% AUTHORS: ISAAC ANG 500776093 REHUBA FAIROJ
%
%% A.1
% Derive the expression for the Exponential Fourier Series
% $x_1(t) = cos(3\pit/10 + 1/2cos \pi/10t)$ 
%
% Please find the solution on the attached file, named Prob_A.pdf
%% A.2
% Repeat problem A.1 for the periodic signals $x_2(t)$ and $x_3(t)$ 
%
% Please find the solution on the attached file, named Prob_A.pdf
%% A.3
% With expression for Dn, write a MATLAB function that generates Dn for a
% user specified range of values of n. 
%
%%
% The function to generate Dn is located at the END of the script file
% The function is as follows:
%
% function [Dn] = Dn_gen(func,n,w,To)
%   syms t
%   coef = int((func.*exp(-1j.*n.*w.*t)),t,-5,5);
%   Dn = coef.*(1/To);
% end
%%
%prompt = "What range of Dn would you like?";
%u = input(prompt);
%n = (-u:u); 
%x1 = @(t) (cos((3*pi)./10).*t) +((1/2).*cos(pi./10).*t);
%Dn_1 = Dn_gen(x1,n,(pi/10),5);
%Dn_2 = Dn_gen(1,n,(pi/10),20);
%Dn_3 = Dn_gen(1,n,(pi/20),40);
%% A.4
% Generate and plot the magnitude and phase spectra of $x_1(t)$, $x_2(t)$
% and $x_3(t)$ for the following index ranges:
%
%%
% a.) -5 <= n <= 5
t1 = (-5:5);
x1 = @(t) (cos((3*pi)./10).*t) +((1/2).*cos(pi./10).*t);
Dn_1 = Dn_gen(x1,t1,(pi/10),20); %this invokes the Dn_gen function
Dn_2 = Dn_gen(1,t1,(pi/10),20);
Dn_3 = Dn_gen(1,t1,(pi/20),40);
%
% for x1
figure(1);
subplot(2,1,1);
stem(t1,abs(Dn_1)) ;axis([-6 6 -1 5]); %abs() to find the magnitude
xlabel('n'); ylabel('|Dn1|'); 
title('Magnitude Spectra of x1 -5 to 5');
subplot(2,1,2);
stem(t1,angle(Dn_1)); axis([-6 6 -2 2]); %angle to find the phase
xlabel('n'); ylabel('\angle Dn1');  
title('Phase Spectra of x1 -5 to 5');

%
% for x2
figure(2);
subplot(2,1,1);
stem(t1,abs(Dn_2)); axis([-6 6 -0.25 1]);
xlabel('n'); ylabel('|Dn2|'); 
title('Magnitude Spectra of x2 -5 to 5');
subplot(2,1,2);
stem(t1,angle(Dn_2)); axis([-6 6 -0.25 4]);
xlabel('n'); ylabel('\angle Dn2');
title('Phase Spectra of x2 -5 to 5');

%
% for x3
figure(3);
subplot(2,1,1);
stem(t1,abs(Dn_3));axis([-6 6 -0.25 0.5]);
xlabel('n'); ylabel('|x3|');
title('Magnitude Spectra of x3 -5 to 5');
subplot(2,1,2);
stem(t1,angle(Dn_3));axis([-6 6 -1 4]);
xlabel('n');ylabel('\angle Dn3');
title('Phase Spectra of x3 -5 to 5');

%%
% b.) -20 <= n <= 20
t4 = (-20:20);
x1 = @(t) (cos((3*pi)./10).*t) +((1/2).*cos(pi./10).*t);
Dn_1 = Dn_gen(x1,t4,(pi/10),20);
Dn_2 = Dn_gen(1,t4,(pi/10),20);
Dn_3 = Dn_gen(1,t4,(pi/20),40);
%
% for x1
figure(4);
subplot(2,1,1);
stem(t4,abs(Dn_1)) ;axis([-22 22 -1 5]);
xlabel('n'); ylabel('|Dn1|'); 
title('Magnitude Spectra of x1 -20 to 20');
subplot(2,1,2);
stem(t4,angle(Dn_1)); axis([-22 22 -2 2]);
xlabel('n'); ylabel('\angle Dn1');  
title('Phase Spectra of x1 -20 to 20');
snapnow;
%
% for x2
figure(5);
subplot(2,1,1);
stem(t4,abs(Dn_2)); axis([-22 22 -0.25 0.6]);
xlabel('n'); ylabel('|Dn2|'); 
title('Magnitude Spectra of x2 -20 to 20');
subplot(2,1,2);
stem(t4,angle(Dn_2)); axis([-22 22 -0.25 4]);
xlabel('n'); ylabel('\angle Dn2');
title('Phase Spectra of x2 -20 to 20');
snapnow;
%
% for x3
figure(6);
subplot(2,1,1);
stem(t4,abs(Dn_3));axis([-22 22 -0.25 0.4]);
xlabel('n'); ylabel('|x3|');
title('Magnitude Spectra of x3 -20 to 20');
subplot(2,1,2);
stem(t4,angle(Dn_3));axis([-22 22 -1 4]);
xlabel('n');ylabel('\angle Dn3');
title('Phase Spectra of x3 from -20 to 20');
snapnow;

%%
% c.) -50 <= n <= 50
t4 = (-50:50);
x1 = @(t) (cos((3*pi)./10).*t) +((1/2).*cos(pi./10).*t);
Dn_1 = Dn_gen(x1,t4,(pi/10),20);
Dn_2 = Dn_gen(1,t4,(pi/10),20);
Dn_3 = Dn_gen(1,t4,(pi/20),40);
%
% for x1
figure(7);
subplot(2,1,1);
stem(t4,abs(Dn_1)) ;axis([-55 55 -1 2]);
xlabel('n'); ylabel('|Dn1|'); 
title('Magnitude Spectra of x1 from -50 to 50') ;
subplot(2,1,2);
stem(t4,angle(Dn_1)); axis([-55 55 -2 2]);
xlabel('n'); ylabel('\angle Dn1');  
title('Phase Spectra of x1 from -50 to 50');
snapnow;
%
% for x2
figure(8);
subplot(2,1,1);
stem(t4,abs(Dn_2)); axis([-55 55 -0.25 0.6]);
xlabel('n'); ylabel('|Dn2|'); 
title('Magnitude Spectra of x2 from -50 to 50');
subplot(2,1,2);
stem(t4,angle(Dn_2)); axis([-55 55 -0.25 4]);
xlabel('n'); ylabel('\angle Dn2');
title('Phase Spectra of x2 from -50 to 50');
snapnow;
%
% for x3
figure(9);
subplot(2,1,1);
stem(t4,abs(Dn_3));axis([-55 55 -0.25 0.4]);
xlabel('n'); ylabel('|x3|');
title('Magnitude Spectra of x3 from -50 to 50');
subplot(2,1,2);
stem(t4,angle(Dn_3));axis([-55 55 -1 4]);
xlabel('n');ylabel('\angle Dn3');
title('Phase Spectra of x3 from -50 to 50');
snapnow;
%%
% d.) -500 <= n <=500
t4 = (-500:500);
x1 = @(t) (cos((3*pi)./10).*t) +((1/2).*cos(pi./10).*t);
Dn_1 = Dn_gen(x1,t4,(pi/10),20);
Dn_2 = Dn_gen(1,t4,(pi/10),20);
Dn_3 = Dn_gen(1,t4,(pi/20),40);
%
% for x1
figure(10);
subplot(2,1,1);
stem(t4,abs(Dn_1)) ;axis([-500 500 -1 2]);
xlabel('n'); ylabel('|Dn1|'); 
title('Magnitude Spectra of x1 from -500 to 500') ;
subplot(2,1,2);
stem(t4,angle(Dn_1)); axis([-500 500 -2 2]);
xlabel('n'); ylabel('\angle Dn1');  
title('Phase Spectra of x1 from -500 to 500');
snapnow;
%
% for x2
figure(11);
subplot(2,1,1);
stem(t4,abs(Dn_2)); axis([-500 500 -0.25 0.6]);
xlabel('n'); ylabel('|Dn2|'); 
title('Magnitude Spectra of x2 from -500 to 500');
subplot(2,1,2);
stem(t4,angle(Dn_2)); axis([-500 500 -0.25 4]);
xlabel('n'); ylabel('\angle Dn2');
title('Phase Spectra of x2 from -500 to 500');
snapnow;
%
% for x3
figure(12);
subplot(2,1,1);
stem(t4,abs(Dn_3));axis([-500 500 -0.25 0.4]);
xlabel('n'); ylabel('|x3|');
title('Magnitude Spectra of x3 from -500 to 500');
subplot(2,1,2);
stem(t4,angle(Dn_3));axis([-500 500 -1 4]);
xlabel('n');ylabel('\angle Dn3');
title('Phase Spectra of x3 from -500 to 500');
snapnow;
%% A.5
% Write a MATLAB function that takes a MATLAB generated $D_n$ set and
% reconstructs the original time domain signal from which the Fourier
% coeffecients had been derived.
%%
% The function is as follows:
%
%function [fxn] = recon(D_n,w,t)
%y = zeros(size(t));
%for n = 1:2:100
%newr = ((D_n.*exp(1j.*n.*w.*t)),n,-20,20);
    %temp =  ((D_n.*exp(1j.*n.*w.*t)));
    %y = temp + y;
    %y1 = symsum((D_n.*exp(1j.*n.*t.*w)),n,-10,10); <-alternate option
%end
%fxn = y;
%end
%% A.6
% Reconstruct the time domain signals x1, x2 and x3
%% 
% a.)
n = -5:5; %larger n values allow for better representation of signal
Dn1 = 0.5*(abs(n)==3) + 0.25*(abs(n)==1);
t = [-300:300];
w = pi/10;
xo = zeros(size(t));

for i = 1:length(n) %looping through n values in the summation
    temp = Dn1(i)*exp(1j*n(i)*w*t);
    xo = xo +temp;
end
figure();
subplot(3,1,1);
plot(t,xo); title('Reconstruction of x1');
xlabel('t');ylabel('x1'); grid;

Dn2 = 0.05*sinc(n/2);
w2 = pi/10;
x2 = zeros(size(t));
for i = 1:length(n)%looping through n values in the summation
    temp = Dn2(i)*exp(1j*n(i)*w*t);
    x2 = x2 +temp;
end
subplot(3,1,2);
plot(t,x2);title('Reconstruction of x2');
xlabel('t');ylabel('x2'); grid;

Dn3 = 0.025*sinc(n/4);
w3 = pi/20;
x3 = zeros(size(t));
for i = 1:length(n)%looping through n values in the summation
    temp = Dn3(i)*exp(1j*n(i)*w*t);
    x3 = x3 +temp;
end
subplot(3,1,3);
plot(t,x3); title('Reconstruction of x3');
xlabel('t');ylabel('x3'); grid;
%%
% b.)
n = -20:20;%larger n values allow for better representation of signal
Dn1 = 0.5*(abs(n)==3) + 0.25*(abs(n)==1);
t = [-300:300];
w = pi/10;
xo = zeros(size(t));

for i = 1:length(n)%looping through n values in the summation
    temp = Dn1(i)*exp(1j*n(i)*w*t);
    xo = xo +temp;%these two lines execute the sum of the Dn*exp values
end
figure();
subplot(3,1,1);
plot(t,xo); title('Reconstruction of x1');
xlabel('t');ylabel('x1'); grid;

Dn2 = 0.5*sinc(n/2);
w2 = pi/10;
x2 = zeros(size(t));
for i = 1:length(n)%looping through n values in the summation
    temp = Dn2(i)*exp(1j*n(i)*w*t);
    x2 = x2 +temp; %these two lines execute the sum of the Dn*exp values
end
subplot(3,1,2);
plot(t,x2);title('Reconstruction of x2');axis([-300 300 -0.25 1.25]);
xlabel('t');ylabel('x2'); grid;

Dn3 = 0.25*sinc(n/4);
w3 = pi/20;
x3 = zeros(size(t));
for i = 1:length(n)%looping through n values in the summation
    temp = Dn3(i)*exp(1j*n(i)*w*t);
    x3 = x3 +temp;%these two lines execute the sum of the Dn*exp values
end
subplot(3,1,3);
plot(t,x3); title('Reconstruction of x3');axis([-300 300 -0.25 1.25]);
xlabel('t');ylabel('x3'); grid;
%%
% c.)
n = -50:50;%larger n values allow for better representation of signal
Dn1 = 0.5*(abs(n)==3) + 0.25*(abs(n)==1);
t = [-300:300];
w = pi/10;
xo = zeros(size(t));

for i = 1:length(n)%looping through n values in the summation
    temp = Dn1(i)*exp(1j*n(i)*w*t);
    xo = xo +temp;%these two lines execute the sum of the Dn*exp values
end
figure();
subplot(3,1,1);
plot(t,xo); title('Reconstruction of x1');
xlabel('t');ylabel('x1'); grid;

Dn2 = 0.5*sinc(n/2);
w2 = pi/10;
x2 = zeros(size(t));
for i = 1:length(n)%looping through n values in the summation
    temp = Dn2(i)*exp(1j*n(i)*w*t);
    x2 = x2 +temp;%these two lines execute the sum of the Dn*exp values
end
subplot(3,1,2);
plot(t,x2);title('Reconstruction of x2');axis([-300 300 -0.25 1.25]);
xlabel('t');ylabel('x2'); grid;

Dn3 = 0.25*sinc(n/4);
w3 = pi/20;
x3 = zeros(size(t));
for i = 1:length(n)%looping through n values in the summation
    temp = Dn3(i)*exp(1j*n(i)*w*t);
    x3 = x3 +temp;%these two lines execute the sum of the Dn*exp values
end
subplot(3,1,3);
plot(t,x3); title('Reconstruction of x3');axis([-300 300 -0.25 1.25]);
xlabel('t');ylabel('x3'); grid;
%%
% d.)
n = -500:500;
Dn1 = 0.5*(abs(n)==3) + 0.25*(abs(n)==1);
t = [-300:1:300];
w = pi/10;
xo = zeros(size(t));

for i = 1:length(n)%looping through n values in the summation
    temp = Dn1(i)*exp(1j*n(i)*w*t);
    xo = xo +temp;%these two lines execute the sum of the Dn*exp values
end
figure();
subplot(3,1,1);
plot(t,xo); title('Reconstruction of x1');
xlabel('t');ylabel('x1'); grid;

Dn2 = 0.5*sinc(n/2);
w2 = pi/10;
x2 = zeros(size(t));
for i = 1:length(n)%looping through n values in the summation
    temp = Dn2(i)*exp(1j*n(i)*w*t);
    x2 = x2 +temp;%these two lines execute the sum of the Dn*exp values
end
subplot(3,1,2);
plot(t,x2);title('Reconstruction of x2');axis([-300 300 -0.25 1.25]);
xlabel('t');ylabel('x2'); grid;

Dn3 = 0.25*sinc(n/4);
w3 = pi/20;
x3 = zeros(size(t));
for i = 1:length(n)%looping through n values in the summation
    temp = Dn3(i)*exp(1j*n(i)*w*t);
    x3 = x3 +temp;%these two lines execute the sum of the Dn*exp values
end
subplot(3,1,3);
plot(t,x3); title('Reconstruction of x3');axis([-300 300 -0.25 1.25]);
xlabel('t');ylabel('x3'); grid;
%% FUNCTION FOR A.3
function [Dn] = Dn_gen(func,n,w,To)
syms t
coef = int((func.*exp(-1j.*n.*w.*t)),t,-5,5); %integrating the values to find the Dn 
Dn = coef.*(1/To); %multiplying the integrand by 1/To, as per the equation
end

%% B.1
% Determine the fundamental frequencies of x1, x2 and x3
%
% The fundamental frequency of A.1 is pi/10 as the highest common factor of
% the numerator is pi and the lowest common multiple of the denominator is
% 10. The fundamental frequency of x2 is given by using the graph and using
% the formulae (fundamental frequency = (2*pi)/period)=2*pi/20=pi/10. Using
% the same equation one can find that the fundamentl frequency of x3 is
% pi/20.
%
% #$w_0$1 = \pi/10
% #$w_0$2 = \pi/10
% #$w_0$3 = \pi/40
%% B.2
% What is the main difference between the Fourier coefficients of x1 and
% x2?
%
% The difference betwene the coefficients of x1(t) are finite while the
% coefficients of x2(t) is an infinite set of numbers
%% B.3
% Signals x2 and x3 have the same rectangular pulse shape but different
% periods. How are these characteristics reflected in their respective
% Fourier coefficients?
%
% The coefficients of x2 are only where n is even while for x3, the
% coefficients are only possible where n is at intervals of multiples of 4. The
% coefficients of x2 are multiples of 0.5/pi where as the coefficients of
% x3 are multiples of 0.25/pi
%% B.4
% Derive Do of x4 from Do of x2
%
% Theere is a 0.5 shift down from the x2 value of D0 therefore the D0 value
% of X4 is 0 according to the formula; Dnx4=0.5Dnx2 and
% Dnx2=(sin(pi*n/2))(n*pi)
%% B.5
% Explain how the reconstructed signal changes as you increase the number
% of Fourier Coefficients used in the reconstruction
%
% As the number of Coefficients increased, the more the reconstructed
% signal resembled the original waveform. 
%% B.6
%
% In order to perfectly reconstruct the periodic waveforms, an infinite
% number of Fourier Coefficients is required. During this lab, it was noted
% that as the range of n increased, the reconstructed waveform began to
% resemble the the original function. Therefore, the value of n would need
% to be inifite in order to perfectly reconstruct the periodic waveform.
%
%% B.7
%
% This is a viable senario. If x(t) was an analog signal, it would not be
% possible to store the signal on a computer as computers are digital
% machines and cannot store exact sinusoids. In this case, it would be
% viable to store the Fourier coefficients in order to reconstruct the
% signal. 
% However, if the signal was like x2 , square waves, it would make more
% sense to store it as is rather than reconstruct it from its Fourier
% coefficients. This is because, as evident from this lab, it takes a very
% long time for the computer to reconsutrct the signal and therefore would
% not make any sense to reconstruct the signal in this case. 
%
% Therefore, it is based on the signal that we are storing that affects our
% decision. 