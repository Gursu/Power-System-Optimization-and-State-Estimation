function hareketliGIF(x,y,x_alt,x_ust,y_alt,y_ust,kip)

%konum=['hareketli_GIF_',num2str(round(mktime (localtime (time ())))),'.gif'];

if kip == 0 
	[d,m] = fopen('hareketli.gif','a+');
	fclose(d);
	deney = plot(x,y,'linestyle','none','marker','o'); xlim([x_alt, x_ust]); ylim([y_alt, y_ust]); xlabel('x'); ylabel('y'); grid on;
	saveas(deney, 'animGifX.png');
	data = imread('animGifX.png');	
	imwrite(data,'hareketli.gif','gif','writemode','overwrite','LoopCount',inf,'DelayTime',0);
end


if kip == 1

	deney = plot(x,y,'linestyle','none','marker','o'); xlim([x_alt, x_ust]); ylim([y_alt, y_ust]); xlabel('x'); ylabel('y'); grid on;
	saveas(deney, 'animGifX.png');
	data = imread('animGifX.png');
	imwrite(data,'hareketli.gif','gif','writemode','append','DelayTime',0);

end

if kip == 2

	deney = plot(x,y,'linestyle','none','marker','o'); xlim([x_alt, x_ust]); ylim([y_alt, y_ust]); xlabel('x'); ylabel('y'); grid on;
	saveas(deney, 'animGifX.png');
	data = imread('animGifX.png');
	imwrite(data,'hareketli.gif','gif','writemode','append','DelayTime',3);

end


end