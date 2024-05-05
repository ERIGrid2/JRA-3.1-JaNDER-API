% TODO: Open the fig file in full screen mode. Then, run the simple
% commands reported below. The script will generate as output a PDF file
% with the right dimensions to be include in the TeX
set(gcf,'Units','Inches');
pos = get(gcf,'Position');
set(gcf,'PaperPositionMode','Auto','PaperUnits','Inches','PaperSize',[pos(3), pos(4)])
print(gcf,'filename','-dpdf','-r0')