function out = run_odom(P, nl, nr)
    % Configs:
    N = 100;
    b = 0.35;
    w_d = 0.2;
    r = 0.1;
    
    r2p = r * 2 * pi;
    delta_sr = r2p * nr / N;
    delta_sl = r2p * nl / N;
    
    out = odom(P, delta_sr, delta_sl, b);
end