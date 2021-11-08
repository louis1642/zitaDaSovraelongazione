function z = zitaDaSovraelongazione(s_perc)
%ZITADASOVRAELONGAZIONE Restituice il valore di zita da utilizzare per
%ottenere la sovraelongazione percentuale richiesta
%   Il valore di zita viene calcolato utilizzando la funzione inversa della
%   relazione s% = 100 exp(-zita*pi/sqrt(1-zita^2))
%   
%   s% deve essere compreso tra 0 e 100
arguments
    s_perc (1,1) {mustBeNumeric,mustBeGreaterThanOrEqual(s_perc,0),mustBeLessThanOrEqual(s_perc,100)}
end
if (s_perc == 0)
    z = 1;
else
    z = abs(log(s_perc./100)/sqrt(log(s_perc./100)^2 + pi^2));
end

end

