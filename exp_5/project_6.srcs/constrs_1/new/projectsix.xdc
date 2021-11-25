set_property PACKAGE_PIN D4 [get_ports clk]
set_property IOSTANDARD LVCMOS33 [get_ports clk]
##switch
set_property PACKAGE_PIN T9 [get_ports clr]
set_property IOSTANDARD LVCMOS33 [get_ports clr]
##Buttons
set_property PACKAGE_PIN K3 [get_ports {row[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {row[0]}]
set_property PACKAGE_PIN M6 [get_ports {row[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {row[1]}]
set_property PACKAGE_PIN P10 [get_ports {row[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {row[2]}]
set_property PACKAGE_PIN R10 [get_ports {row[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {row[3]}]
##ָ��KEY0��Ϊ����
set_property PACKAGE_PIN R12 [get_ports col]
set_property IOSTANDARD LVCMOS33 [get_ports col]
##�������ߵ��͵�ƽ
set_property PULLDOWN true [get_ports col]
set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets col_IBUF] 
##�ð�����Ϊʱ��ʱ����Ϊ��IO�ܽ��ϣ���������Χû��ȫ��ʱ�� BUFG������������ XDC ��ʹ�ã�set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets {OV7670_PCLK_IBUF}]  ������ Xilinx �ļ�⣬�Ӷ�ͨ�����롣�����ʽ��������ʾ�Ĵ�����Ҳ�ṩ�˽������
##��ʾ
set_property PACKAGE_PIN G12 [get_ports {dig[0]}]
set_property PACKAGE_PIN H13 [get_ports {dig[1]}]
set_property PACKAGE_PIN M12 [get_ports {dig[2]}]
set_property PACKAGE_PIN N13 [get_ports {dig[3]}]
set_property PACKAGE_PIN N14 [get_ports {dig[4]}]
set_property PACKAGE_PIN N11 [get_ports {dig[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {dig[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {dig[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {dig[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {dig[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {dig[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {dig[5]}]
set_property PACKAGE_PIN L13 [get_ports {seg[7]}]
set_property PACKAGE_PIN M14 [get_ports {seg[6]}]
set_property PACKAGE_PIN P13 [get_ports {seg[5]}]
set_property PACKAGE_PIN K12 [get_ports {seg[4]}]
set_property PACKAGE_PIN K13 [get_ports {seg[3]}]
set_property PACKAGE_PIN L14 [get_ports {seg[2]}]
set_property PACKAGE_PIN N12 [get_ports {seg[1]}]
set_property PACKAGE_PIN P11 [get_ports {seg[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {seg[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {seg[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {seg[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {seg[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {seg[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {seg[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {seg[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {seg[0]}]