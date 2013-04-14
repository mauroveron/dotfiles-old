background yes

alignment top_right

use_xft yes
#xftfont DejaVu Sans Mono:size=12
xftfont Inconsolata:size=10
xftalpha 1
double_buffer yes

update_interval 2.0

own_window yes
own_window_class Conky
own_window_type root
own_window_transparent yes
own_window_hints undecorated,below,sticky,skip_taskbar,skip_pager

border_margin 4
border_width 1

default_color white
default_shade_color black
default_outline_color white

alignment top_right
gap_x 1
gap_y 1

no_buffers yes
uppercase no

cpu_avg_samples 4
cpu_avg_samples 5

use_spacer right

TEXT
${offset 10}${color slate grey}Uptime: ${color}$uptime
${offset 10}${color slate grey}CPU:${color } $cpu% | ${freq} MHz | ${acpitemp}C
${offset 10}${color slate grey}Batt:${color }${battery}
${offset 10}${cpugraph 20,130 000055 ff0000}

${offset 10}${color slate grey}Highest CPU:
${offset 10}${color ddaa00} ${top name 1}${top cpu 1}
${offset 10}${color lightgrey} ${top name 2}${top cpu 2}
${offset 10}${color lightgrey} ${top name 3}${top cpu 3}
${offset 10}${color lightgrey} ${top name 4}${top cpu 4}

${offset 10}${color slate grey}Highest MEM:
${offset 10}${color ddaa00} ${top_mem name 1}${top_mem mem 1}
${offset 10}${color lightgrey} ${top_mem name 2}${top_mem mem 2}
${offset 10}${color lightgrey} ${top_mem name 3}${top_mem mem 3}
${offset 10}${color lightgrey} ${top_mem name 4}${top_mem mem 4}

${offset 10}${color slate grey}MEM:  ${color } $memperc% $mem/$memmax
${offset 10}${membar 3,100}
${offset 10}${color slate grey}SWAP: ${color }$swapperc% $swap/$swapmax
${offset 10}${swapbar 3,100}

${offset 10}${color slate grey}/:    ${color }${fs_used /}/${fs_size /}
${offset 10}${fs_bar 3,100 /}
${offset 10}${color slate grey}/home:  ${color }${fs_used /home}/${fs_size /home}
${offset 10}${fs_bar 3,100 /home}
${offset 10}${color slate grey}Disk I/O:${color}
${offset 10}${diskiograph 20,130 000000 ffffff}
${offset 10}${color slate grey}NET: ${color}U: ${color }${upspeed eth0} k/s ${color} D: ${color }${downspeed eth0}k/s
${offset 10}${upspeedgraph eth0 20,130 000000 ffffff} ${downspeedgraph eth0 20,130 000000 ffffff}
