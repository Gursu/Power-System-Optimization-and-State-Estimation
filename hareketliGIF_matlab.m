function hareketliGIF_matlab(x,y,x_alt,x_ust,y_alt,y_ust,kip,h)
%konum=['hareketli_GIF_',num2str(round(mktime (localtime (time ())))),'.gif'];

%h = figure;

if kip == 0 
    
	[d,m] = fopen('hareketli.gif','a+');
	fclose(d);
    
	plot(x,y,'linestyle','none','marker','o'); xlim([x_alt, x_ust]); ylim([y_alt, y_ust]); xlabel('x'); ylabel('y'); grid on;
    
    frame = getframe(h); 
    im = frame2im(frame); 
    [imind,cm] = rgb2ind(im,256);      
    imwrite(imind,cm,'hareketli.gif','gif', 'Loopcount',inf);
      
end


if kip == 1 || kip == 2

	plot(x,y,'linestyle','none','marker','o'); xlim([x_alt, x_ust]); ylim([y_alt, y_ust]); xlabel('x'); ylabel('y'); grid on;
	
    frame = getframe(h); 
    im = frame2im(frame); 
    [imind,cm] = rgb2ind(im,256);      
    imwrite(imind,cm,'hareketli.gif','gif','WriteMode','append'); 

end


end