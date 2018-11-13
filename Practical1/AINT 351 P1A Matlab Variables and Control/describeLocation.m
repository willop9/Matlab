function describeLocation()
	% Your code goes here...
    global playerLocation
    S = 'You are';
    switch playerLocation
        case 0
            S = strcat(S,' by a babbling brook');
        case 1
            S = strcat(S , ' high in some misty mountains');
        case 2
            S = strcat(S , ' in a sunny field');
        case 3
            S = strcat(S , ' under a great oak');
        otherwise
            S = strcat(S , ' lost');
    end
    disp(S)
end