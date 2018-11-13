%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Author: Dr. Ian Howard
% Associate Professor (Senior Lecturer) in Computational Neuroscience
% Centre for Robotics and Neural Systems
% Plymouth University
% A324 Portland Square
% PL4 8AA
% Plymouth, Devon, ?UK
% howardlab.com
% 24/09/2018

classdef CDataGen
    % Simple data generator
    %   Detailed explanation goes here
    
    properties
        samples;
    end
    
    methods
        function obj = CDataGen(samples)
            %UNTITLED5 Construct an instance of this class
            %   copy input parameters
            obj.samples = samples;
        end
        
        
        % sine generator
        function [data t] = GetSineWave(obj, amplitude, frequency, sampFreq)
            
            % generate time steps
            t = (0:(obj.samples -1))/sampFreq;
            
            % generate sine wave of specified frequency
            data = amplitude * sin( 2 * pi * frequency * t');
        end
        
        % gnerate unformly distributed data between given limits minVal, maxVal
        function data = GetUniformData(obj, minVal, maxVal)
            
            % calculate the scale
            range = maxVal - minVal;
            wantedMean = (maxVal + minVal)/2;
            
            % generate appropriately scaled and shifted data
            data = range * (rand(obj.samples,1)  + (wantedMean - range/2)* ones(obj.samples,1));
        end
        
        
         % plot data as hstogram
        function PlotTimeWaveform(obj, data, time)
            
            % want a new figure
            figure
            
            % want to hold everying we ask fo onto this plot
            hold on
            
            % now plot array
            % 'r' for red
            % 'o' gives plus sypbol
            % '-' draws line between points
            h=plot(time, data, 'r.-');
            % we can also akways use handle with set function to change plot parameters
            set(h, 'LineWidth', 1);
            % add a title
            h=title('Time Waveform Plot');
            % want bigger font than default
            set(h, 'FontSize', 20);
            % add x-axis label
            h=xlabel('Time[s]');
            % want bigger font than default
            set(h, 'FontSize', 20);
            % add y-axis label
            h=ylabel('Amplitude');
            % want bigger font than default
            set(h, 'FontSize', 20);         
            % put on ledgend to plotted line
            h=legend('Signal');
            % want bigger font than default
            set(h, 'FontSize', 20);
            % want bigger font than default on numbering
            set(gca, 'FontSize', 20);
            
        end
        
        
        % gnerate Gaussian distributed data wirh given mean and standard deviation
        function data = GetGaussianData(obj, meanVal, stdVal)
            
            % generate appropriately scaled and shifted data
            data = stdVal * randn(obj.samples,1) + meanVal* ones(obj.samples,1);
        end
        
        % plot data as hstogram
        function PlotHistogram(obj, data, bins)
            
            % buid new figure
            figure
            hold on
            % put on a title
            h=title('Histogram of data points');
            h.FontSize=20;
            
            % plot histogram
            hist(data,bins);
            h=xlabel('Data value');
            h.FontSize=20;
            h=ylabel('Bin counts');
            h.FontSize=20;
        end
        

        
    end
end

