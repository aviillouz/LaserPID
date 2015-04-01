transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/altera/14.0/sandbox/deserializer_take_01 {C:/altera/14.0/sandbox/deserializer_take_01/deserializer.v}

