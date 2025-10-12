% Create an AC Voltage Waveform

% Parameters
A = 10; % Amplitude (V)
f = 50; % Frequency (Hz), 50Hz for Germany's standard household socket
T = 1/f; % Period (s) 
t = 0:1e-4:2*T; % Time vector for two cycles

% Get voltage signal 
v = A * sin(2*pi*f*t); 

% Waveform plot
plot(t, v, 'b', 'LineWidth', 2); 
grid on;
xlabel('Time (s)'); 
ylabel('Voltage (V)'); 
title('AC Voltage Waveform'); 

% Add a horizontal line for RMS voltage
VRMS = A / sqrt(2); 
hold on; 
% The sine wave oscillates symetrically. Show for above and below zero
yline(VRMS, '--r', sprintf('V_{RMS} = %.2f V'), VRMS); 
yline(-VRMS, '--r'); 

% Annotate the period
text(T/2, 0.8*A, sprintf('Period = %.2f s', T), 'HorizontalAlignment', 'center'); 

% Axis limits for clarity
xlim([0 4*T]); 
ylim([-1.2*A 1.2*A]); 