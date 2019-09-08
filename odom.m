function out = odom(P, delta_sr, delta_sl, b)

    d1 = (delta_sr + delta_sl) / 2;
    d2 = (delta_sr - delta_sl) / 2 * b;
    d3 = (delta_sr - delta_sl) / b;
    
    theta = P(3);
    
    odom_matrix = [d1 * cos(theta + d2); d1 * sin(theta - d2); d3];
    
    out = P + odom_matrix;
end