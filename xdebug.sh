#!/bin/bash
apt-get install -y -qq php5-xdebug
tee /etc/php5/apache2/conf.d/20-xdebug.ini
cat << EOF >> /etc/php5/apache2/conf.d/20-xdebug.ini
[debug]
; Remote settings
xdebug.remote_autostart=off
xdebug.remote_enable=on
xdebug.remote_handler=dbgp
xdebug.remote_mode=req
xdebug.remote_host=localhost
xdebug.remote_port=9000

; General
xdebug.auto_trace=off
xdebug.collect_includes=on
xdebug.collect_params=off
xdebug.collect_return=off
xdebug.default_enable=on
xdebug.extended_info=1
xdebug.manual_url=http://www.php.net
xdebug.show_local_vars=0
xdebug.show_mem_delta=0
xdebug.max_nesting_level=100
;xdebug.idekey=

; Trace options
xdebug.trace_format=0
xdebug.trace_output_dir=/tmp
xdebug.trace_options=0
xdebug.trace_output_name=crc32

; Profiling
xdebug.profiler_append=0
xdebug.profiler_enable=0
xdebug.profiler_enable_trigger=0
xdebug.profiler_output_dir=/tmp
xdebug.profiler_output_name=crc32
EOF
/usr/sbin/apache2ctl restart

echo "If you like to debug this with an Eclipse IDE run dru-aptana-xdebug to set up pdt." 
echo "Install Aptana Studio with dur-install-aptana first."

exit
