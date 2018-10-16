w = [2];
add_upper = 1.21;
mult = 0.05;
add_lower = 0.0004;


amplitude_h_w = sqrt((w.^2 + add_upper) ./ (w.^4 + mult.*w.^2 + add_lower))


phaseShift_h_w = atan(w./first_deler) - atan(first_noemer.*w/(








