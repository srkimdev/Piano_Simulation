while(1)
    note = menu('Piano keyboard', 'C4', 'C#4', 'D4', 'D#4', 'E4', 'F4', 'F#4', 'G4', 'G#4', 'A4', 'A#4', 'B4', 'C5');
    
    if note == 0
        break;
end

f = 440;
Fs = 44100; %sampling frequency
n = 0 : 1/Fs : 1;
Hz = 440 * 2 ^ ((note - 10) / 12);
x = sin (2*pi*Hz*n);

sound(x, Fs);

end
