%function [activeNum, pos] = vad_YW(speech, fs, plotMode, activeBuffer, activeMax, energyTh2)
%%     By YI-WEN CHEN, 2017
%     1. Voice activity detection by spectral energy.
%     2. Read more at http://jarvus.dragonbeef.net/note/noteAudioVAD.php
% 
%     Required Input Parameters : 
%       speech      Speech data
%       fs          Sampling frequency (Hz)
% 
%     Optional Input Parameters : 
%       plotMode   0: don't plot anything
%                   1: plot VAD result in time domain signal
%                   2: plot all of segments of active parts respectively
%                   3: plot all of above mentioned
%       activeBuffer  Buffer range in two sides (sec)
%       activeMax     Max active length (sec)
%       energyTh2     Under spectral energy for removal
%
%     Output Parameters : 
%       activeNum   The amount of active speech segment
%       pos         Active segments samples position
%
%     Example : 
%       [ speech, fs] = audioread( 'Music_SNR_5_0.wav' );
%       [ activeNum, pos] = vad_YW(speech, fs, 3);

