#!/bin/sh

echo -e "\n\
#内核优化\n\
kernel.unknown_nmi_panic=0\n\
kernel.sysrq = 0\n\
vm.swappiness = 10\n\
fs.file-max = 1000000\n\
fs.inotify.max_user_watches = 10000000\n\
fs.notify.max_queued_events = 3276792\n\
net.core.somaxconn = 20480\n\
net.core.rmem_default = 262144\n\
net.core.wmem_default = 262144\n\
net.core.rmem_max = 16777216\n\
net.core.wmem_max = 16777216\n\
net.core.netdev_max_backlog = 20000\n\
net.netfilter.nf_conntrack_max = 1000000\n\
net.ipv4.tcp_rmem = 4096 4096 16777216\n\
net.ipv4.tcp_wmem = 4096 4096 16777216\n\
net.ipv4.tcp_mem = 786432 2097152 3145728\n\
net.ipv4.tcp_max_syn_backlog = 16384\n\
net.ipv4.tcp_fin_timeout = 15\n\
net.ipv4.tcp_tw_reuse = 1\n\
net.ipv4.tcp_tw_recycle = 1\n\
net.ipv4.tcp_max_orphans = 131072\n\
net.ipv4.tcp_syncookies = 0\n\
net.ipv4.conf.all.send_redirects = 0\n\
net.ipv4.conf.default.send_redirects = 0\n\
net.ipv4.conf.all.secure_redirects = 0\n\
net.ipv4.conf.default.secure_redirects = 0\n\
net.ipv4.conf.all.accept_redirects = 0\n\
net.ipv4.conf.default.accept_redirects = 0\n\
net.ipv6.conf.all.disable_ipv6 = 1\n\
net.ipv4.neigh.default.gc_thresh1 = 2048\n\
net.ipv4.neigh.default.gc_thresh2 = 4096\n\
net.ipv4.neigh.default.gc_thresh3 = 8192\n\
" >> /etc/sysctl.conf

sysctl -p