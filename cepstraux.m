function cepstraux(wavfile, matfile)
  s=wavread(wavfile);
  c=melcepst(s, 11025, 'e0dD');
  [mu, sig, pi] = gaussmix(c, [], [], 4);
  save(matfile, 'mu', 'sig', 'pi', '-mat-binary');  
  exit
end