function midi2wav(file,Fs,type)
if(nargin < 2)
    [y,f] = midi2audio(file);
    fprintf('1\n');
elseif(nargin < 3)
    [y,f] = midi2audio(file,Fs);
    fprintf('2\n');
else
    [y,f] = midi2audio(file,Fs,type);
    fprintf('3\n');
end

file2 = 'output.wav';
audiowrite(file2,y,f);
end