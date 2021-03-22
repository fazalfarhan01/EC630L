#!/bin/ksh
# This script was generated Mon Mar 22 11:22:42 2021 by:
#
# Program: /home/install/EXT181/tools/extraction/bin/64bit//RCXspice
# Version: 15.2.0
# Created: Fri May 15 16:43:23 EST 2015
#
#/home/install/EXT181/tools/extraction/bin/64bit//RCXspice -techdir \
#	/home/install/FOUNDRY/analog/180nm/pv/assura/rcx -newlvs \
#	/home/ec03/Desktop/01JST18EC055/inverter.xcn -assura_run_dir \
#	/home/ec03/Desktop/01JST18EC055 -assura_run_name inverter -rcxdir \
#	/home/ec03/Desktop/01JST18EC055/inverter -xy_coordinates c,r -type \
#	full -temperature 25.0 -tempdir \
#	/home/ec03/Desktop/01JST18EC055/inverter/rcx_temp -sub_node_char # \
#	-res_models no -parasitic_res_models comment -parasitic_cap_models \
#	yes -output_net_name_space layout -output_hierarchy_delimiter / \
#	-output /home/ec03/Desktop/01JST18EC055/inverter/extview.tmp \
#	-net_name_space layout -minR 0.001 -max_merged_via_size auto \
#	-max_fracture_length infinite -macro_cell -m_factorR infinite \
#	-lvs_source assura -ignore_gate_diffusion_fringing_cap \
#	-hierarchy_delimiter / -fracture_length_units MICRONS -extract both \
#	-df2 -cap_models no -cap_ground gnd! -cap_extract_mode decoupled \
#	-cap_coupling_factor 1.0 -array_vias_spacing auto
set -e
set -v
##=======================================================
##ADD_EXPLICIT_VIAS=N
##ADD_BULK_TERMINAL=N
##AGDS_FILE=/dev/null
##AGDS_LAYER_MAP_FILE=/dev/null
##HCCI_DEV_PROP_FILE=/dev/null
##AGDS_SPICE_FILE=/dev/null
##AGDS_TEXT_LAYERS=
##ARRAY_VIAS_SPACING=
##ASSURA_RUN_DIR=/home/ec03/Desktop/01JST18EC055
##ASSURA_RUN_NAME=inverter
##BLACK_BOX_CELLS=/dev/null
##BREAK_WIDTH=
##CAP_COUPLING_FACTOR=1.0
##CAP_EXTRACT_MODE=decoupled
##CAP_GROUND=gnd!
##CAP_MODELS=no
##DANGLINGR=N
##DENSITY_CHECK_METHOD=P
##DELETE_OUTPUT_FILE=N
##DEVICE_FINGER_DELIMITER='@'
##DF2=Y
##DRACULA_RUN_DIR=
##DRACULA_RUN_NAME=
##ENABLESENSITIVITYEXTRACTION=N
##EXCLUDE_FLOAT_LIMIT=
##EXCLUDE_FLOAT_DECOPULING_FACTOR=
##EXCLUDE_FLOATING_NETS=N
##EXCLUDE_NETS_REDUCERC=/dev/null
##EXCLUDE_SELF_CAPS=N
##IGNORE_GATE_DIFFUSION_FRINGING_CAP=Y
##EXTRACT=both
##EXTRACT_MOS_DIFFUSION_AP=N
##EXTRACT_MOS_DIFFUSION_HIGH=
##EXTRACT_MOS_DIFFUSION_RES=N
##FILTER_SIZE=2.0
##FIXED_NETS_FILE=/dev/null
##FMAX=
##FRACTURE_LENGTH_UNITS=MICRONS
##FREQUENCY_FILE=/dev/null
##GROUND_NETS=
##GROUND_NETS_FILE=/dev/null
##GROUND_SUBSTRATE_FLOATING_NETS=N
##HCCI_DEV_PROP=7
##HCCI_INST_PROP=6
##HCCI_NET_PROP=5
##HCCI_RULE_FILE=
##HCCI_RUN_DIR=
##HCCI_RUN_NAME=
##HEADER_FILE=/dev/null
##HIERARCHY_DELIMITER='/'
##OUTPUT_HIERARCHY_DELIMITER='/'
##HRCX_CELLS_FILE=/dev/null
##IMPORT_GLOBALS=Y
##LADDER_NETWORK=N
##LVS_SOURCE=assura
##M_FACTORR=infinite
##M_FACTORW=N
##MACRO_CELL=Y
##MAX_FRACTURE_LENGTH=infinite
##MAX_SIGNALS=
##MERGE_PARALLEL_R=N
##MERGE_PARALLEL_VIA=N
##MINC=
##MINC_BY_PERCENTAGE=
##MINR=0.001
##NET_NAME_SPACE=layout
##NETS_FILE=/dev/null
##OUTPUT=/home/ec03/Desktop/01JST18EC055/inverter/extview.tmp
##OUTPUT_NET_NAME_SPACE=layout
##PARASITIC_BLOCKING_DEVICE_CELLS_TYPE=gray
##PARASITIC_CAP_MODELS=yes
##PARASITIC_RES_MODELS=comment
##PARASITIC_RES_LENGTH=N
##PARASITIC_RES_WIDTH=N
##PARASITIC_RES_WIDTH_DRAWN=N
##PARASITIC_RES_UNIT=N
##PARTIAL_CAP_BLOCKING=N
##PEEC=N
##PIN_ORDER_FILE=/dev/null
##PIPE_ADVGEN=
##PIPE_SPICE2DB=
##POWER_NETS=
##POWER_NETS_FILE=/dev/null
##RC_FREQUENCY=
##RCXDIR=/home/ec03/Desktop/01JST18EC055/inverter
##RCXFS_HIGH=N
##RCXFS_NETS_FILE=/dev/null
##RCXFS_TYPE=none
##RCXFS_CUTOFF_DISTANCE=
##RCXFS_CUTOFF_DISTANCE=
##RCXFS_CUTOFF_DISTANCE=
##RCXFS_CUTOFF_DISTANCE=
##RCXFS_CUTOFF_DISTANCE=
##RCXFS_VIA_OFF=N
##REDUCERC=N
##REGION_LIMIT=
##RES_MODELS=no
##RISE_TIME=
##SAVE_FILL_SHAPES=N
##SINGLE_CAP_EDSPF=N
##SHOW_DIODES=N
##SKIN_FREQUENCY=
##SPEF=N
##SPEF_UNITS=
##SPLIT_PINS=N
##FORCE_SUBCELL_PIN_ORDERS=N
##SPLIT_PINS_DISTANCE=
##SUB_NODE_CHAR='#'
##SUBSTRATE_PROFILE=/dev/null
##SUBSTRATE_STAMPING_OFF=N
##TEMPDIR=/home/ec03/Desktop/01JST18EC055/inverter/rcx_temp
##TEMPERATURE=25.0
##TYPE=full
##USER_REGION=/dev/null
##VARIANT_CELL_FILE=/dev/null
##VIA_EFFECT_OFF=N
##VIRTUAL_FILL=
##XREF=/dev/null,/dev/null
##XY_COORDINATES=c,r
##=======================================================

CASE_SENSITIVE=TRUE
export CASE_SENSITIVE
QRC_MOS_LW_PRECISION=y
export QRC_MOS_LW_PRECISION
TEMPDIR=`setTempDir /home/ec03/Desktop/01JST18EC055/inverter/rcx_temp`
export TEMPDIR
DEVICE_FINGER_DELIMITER='@'
HIERARCHY_DELIMITER='/'
OUTPUT_HIERARCHY_DELIMITER='/'
cd /home/ec03/Desktop/01JST18EC055/inverter
cat <<ENDCAT> caps2dversion
* caps2d version: 10
ENDCAT
cat <<ENDCAT> flattransUnit.info
meters
ENDCAT
QRC=Y
export QRC
cat <<ENDCAT> topcellxcn.info
/home/ec03/Desktop/01JST18EC055/inverter.xcn
ENDCAT

#==========================================================#
# Generate RCX input data from Assura LVS database
#==========================================================#

GOALIE2DIR=/home/install/EXT181/tools/extraction/bin
export GOALIE2DIR
vdbToRcx /home/ec03/Desktop/01JST18EC055 inverter -unit meters -mFactorR -- \
	-V1 -H satfile -r /home/ec03/Desktop/01JST18EC055/inverter.xcn -df2 \
	-xgl
GOALIE2DIR=/home/install/EXT181/tools/extraction/bin/64bit/
export GOALIE2DIR
geom NMOS_MOS_21 NSDterm - NMOS_MOS_21,10,i,1
geom PMOS_MOS_27 PSDterm - PMOS_MOS_27,10,i,1

#==========================================================#
# Generate power list
#==========================================================#

cat global.net > power_list

#==========================================================#
# Ensure vias do not extend beyond routing
#==========================================================#

geom -V POLYcont M1term POLYterm - POLYcont,111,i,2
geom -V PSDcont M1term PSDterm - PSDcont,111,i,2
geom -V NSDcont M1term NSDterm - NSDcont,111,i,2

#==========================================================#
# Flatten net file, routing, via and device layers
#==========================================================#

SAVEDIR=`beginFlattenInputs`
export SAVEDIR
/bin/mv -f NET h_NET
flatnet -V -li -h '/' h_NET NET
netprint -V -N1 power_list:power_list_nums NET
flattenTransistorData NMOS_MOS_21 meters
flattenTransistorData PMOS_MOS_27 meters
flattenLayers -m M1term POLYterm PSDterm NSDterm PSUB NWELLterm POLYcont \
	PSDcont NSDcont NWVIA SUBVIA
endFlattenInputs

#==========================================================#
# Initialize CAP_GROUND variable
#==========================================================#

CAP_GROUND=`findCapGround -g gnd! -l PSUB NET`
echo "CAP_GROUND=" ${CAP_GROUND}
export CAP_GROUND
reconnect -cgnd ${CAP_GROUND} -float floatlvsnetsfile -tf \
	NMOS_MOS_21,PMOS_MOS_27 -probe \
	Metal1_pintext:M1term:Metal1_pintext_fvia
geom NMOS_MOS_21,PMOS_MOS_27 - qrcgate,1,i,1
iprint -imerge power_list_nums floatlvsnetsfile power_list_nums2
mv power_list_nums power_list_nums_orig
cp power_list_nums2 power_list_nums 

#==========================================================#
# Segregate interconnect into resistive and non-resistive
#==========================================================#

selectNetsByNumber power_list_nums M1term p_rM1term np_rM1term
selectNetsByNumber power_list_nums NSDterm p_rNSDterm np_rNSDterm
selectNetsByNumber power_list_nums POLYterm p_rPOLYterm np_rPOLYterm
selectNetsByNumber power_list_nums PSDterm p_rPSDterm np_rPSDterm
selectNetsByNumber power_list_nums NWVIA p_rNWVIA np_rNWVIA
selectNetsByNumber power_list_nums NWELLterm p_rNWELLterm np_rNWELLterm
selectNetsByNumber power_list_nums SUBVIA p_rSUBVIA np_rSUBVIA
selectNetsByNumber power_list_nums PSUB p_rPSUB np_rPSUB
selectNetsByNumber power_list_nums POLYcont p_rPOLYcont np_rPOLYcont
mv power_list_nums_orig power_list_nums

#==========================================================#
# Create resistor cut regions between resistive
# interconnect levels
#==========================================================#

mergevia -V -tech /home/install/FOUNDRY/analog/180nm/pv/assura/rcx -cnt \
	np_rPOLYcont rPOLYcont - np_rM1term np_rPOLYterm

#==========================================================#
# Create resistive interconnect MOSFET terminals
#==========================================================#

createNRMosfetGateTerminal NMOS_MOS_21 np_rPOLYterm NMOS_MOS_21_mgvia
createNRMosfetGateTerminal PMOS_MOS_27 np_rPOLYterm PMOS_MOS_27_mgvia

#==========================================================#
# Assign net numbers to cut regions
#==========================================================#

connect -V -relocate NET np_rPSDterm:np_rPSDterm.conn \
	np_rNSDterm:np_rNSDterm.conn rPOLYcont NMOS_MOS_21_mgvia \
	PMOS_MOS_27_mgvia - -

#==========================================================#
# Assign net numbers to resistor vias
#==========================================================#

geom -V NSDcont np_rNSDterm.conn - tmp_rNSDcont,11,i,2
mergevia -V -i -tech /home/install/FOUNDRY/analog/180nm/pv/assura/rcx -cnt \
	tmp_rNSDcont rNSDcont - np_rM1term np_rNSDterm
/bin/rm -f tmp_rNSDcont
geom -V PSDcont np_rPSDterm.conn - tmp_rPSDcont,11,i,2
mergevia -V -i -tech /home/install/FOUNDRY/analog/180nm/pv/assura/rcx -cnt \
	tmp_rPSDcont rPSDcont - np_rM1term np_rPSDterm
/bin/rm -f tmp_rPSDcont

#==========================================================#
# Assign net numbers to nonresistive layers
#==========================================================#

epick -V -reo -e rNSDcont -e rPSDcont np_rPSDterm.conn tmp_PSDterm
epick -V -reo -e tmp_PSDterm -c np_rPSDterm.conn tmp1_PSDterm
geom -V tmp1_PSDterm np_rPSDterm - tmp1_PSDterm,11,i,2
geom -V tmp_PSDterm,tmp1_PSDterm - np_rPSDterm,1,i,1
/bin/rm -f tmp_PSDterm tmp1_PSDterm
epick -V -reo -e rNSDcont -e rPSDcont np_rNSDterm.conn tmp_NSDterm
epick -V -reo -e tmp_NSDterm -c np_rNSDterm.conn tmp1_NSDterm
geom -V tmp1_NSDterm np_rNSDterm - tmp1_NSDterm,11,i,2
geom -V tmp_NSDterm,tmp1_NSDterm - np_rNSDterm,1,i,1
/bin/rm -f tmp_NSDterm tmp1_NSDterm

#==========================================================#
# Process text layers
#==========================================================#

flatlabel -V  -tc -F -l flatlabel.info Metal1_pintext L1T0
# 1 np_rPOLYterm
# 2 np_rM1term

#==========================================================#
# Parasitic R extraction with default precision
#==========================================================#

rex -V -m -pd -I'#' -tech /home/install/FOUNDRY/analog/180nm/pv/assura/rcx \
	-map p2elayermapfile -N NET -e2 -Ply np_rPOLYterm -rP res.mod \
	np_rPOLYterm::poly_cut np_rM1term::mt1_cut - rNSDcont,2,t \
	rPOLYcont,1,2,t rPSDcont,2,t NMOS_MOS_21_mgvia,1,z \
	PMOS_MOS_27_mgvia,1,z - L1T0,2,I

#==========================================================#
# Form resistive via layers
#==========================================================#

stamp -V -B -i np_rM1term np_rPOLYcont
geom -V np_rPOLYcont,p_rPOLYcont - rPOLYcont,1,i,1
stamp -V -B -i np_rM1term NSDcont
/bin/cp -f NSDcont rNSDcont
stamp -V -B -i np_rM1term PSDcont
/bin/cp -f PSDcont rPSDcont

#==========================================================#
# Perform stamp operations
#==========================================================#

stamp -V -cntr -i -B np_rNSDterm np_rNWVIA
stamp -V -maxnet -i -mV -B np_rNWVIA np_rNWELLterm
stamp -V -cntr -i -B np_rPSDterm np_rSUBVIA
stamp -V -maxnet -i -mV -B np_rSUBVIA np_rPSUB

#==========================================================#
# Combine power non-power
#==========================================================#

/bin/rm -f NSDterm
geom np_rNSDterm,p_rNSDterm - NSDterm,1,i,1
/bin/rm -f POLYterm
geom np_rPOLYterm,p_rPOLYterm - POLYterm,1,i,1
/bin/rm -f PSDterm
geom np_rPSDterm,p_rPSDterm - PSDterm,1,i,1
/bin/rm -f NWELLterm
emerge np_rNWELLterm p_rNWELLterm  NWELLterm
/bin/rm -f PSUB
emerge np_rPSUB p_rPSUB  PSUB

#==========================================================#
# Reconnect MOSFET devices
#==========================================================#

reconnect -V -mbg -n NET -se2 mwires.res -mf -t \
	NMOS_MOS_21.trans:NMOS_MOS_21.transr NMOS_MOS_21 \
	NSDterm,NMOS_MOS_21_mgvia,PSUB -t \
	PMOS_MOS_27.trans:PMOS_MOS_27.transr PMOS_MOS_27 \
	PSDterm,PMOS_MOS_27_mgvia,NWELLterm
changeTransFileNameAP NMOS_MOS_21.trans NMOS_MOS_21.transr
changeTransFileNameAP PMOS_MOS_27.trans PMOS_MOS_27.transr

#==========================================================#
# Form capacitance layers for resistive process layers
#==========================================================#

geom -V -i p_rPOLYterm,np_rPOLYterm - so_poly,1,n
geom -V p_rPOLYterm,np_rPOLYterm - poly,1,i,1
geom -V -i p_rM1term,np_rM1term - so_mt1,1,n
geom -V p_rM1term,np_rM1term - mt1,1,i,1

#==========================================================#
# Form capacitance layers for non-resistive process layers
#==========================================================#

grow -V .001 PSDterm mask
geom -V NSDterm mask - NSDterm,10,i,1
geom -V PSDterm,NSDterm - diff,1,i,1
createEmptyLayer mt6
createEmptyLayer mt5
createEmptyLayer mt4
createEmptyLayer mt3
createEmptyLayer mt2

#==========================================================#
# Form substrate
#==========================================================#

geom -V p_rPSUB,np_rPSUB - PSUB,1,i,1
geom -V p_rNWELLterm,np_rNWELLterm - NWELLterm,1,i,1
/bin/cp -f NWELLterm NWELLterm.df2
xytoebbox -V -g 7.362 -e mt6,mt5,mt4,mt3,mt2,mt1,poly,diff,PSUB,NWELLterm xg_NWELLterm
grow -V 0.001 NWELLterm g_NWELLterm
geom -V xg_NWELLterm g_NWELLterm - tmp_NWELLterm,10
epick -V -reo -D ${CAP_GROUND} tmp_NWELLterm pick_NWELLterm
grow -V -m 0.002 NWELLterm g_NWELLterm
stamp -i g_NWELLterm pick_NWELLterm
emerge -V pick_NWELLterm NWELLterm tmp1_NWELLterm
geom -V tmp1_NWELLterm - NWELLterm,1,i,1
/bin/rm -f g_NWELLterm xg_NWELLterm tmp_NWELLterm tmp1_NWELLterm
grow -V 0.001 PSUB g_PSUB
geom -V NWELLterm g_PSUB - NWELLterm,10,i,1
geom -V PSUB,NWELLterm - sub,1,i,1
geom -V sub diff - sub,10,i,1
geom NMOS_MOS_21,PMOS_MOS_27 - qrcgate,1,i,1

#==========================================================#
# Create sip/sw3d/cn3d capacitance data files
#==========================================================#

cat <<ENDCAT> sip.cmd
sip -V -cgnd ${CAP_GROUND} -s -o -sub 2 -mlc poly,mt1 -n 3 -i 0,3.001 -b \
	mt1,poly,diff,sub -t mt3,mt4,mt5,mt6 -j 0.3 -Maxw 4.5 -p mt2,key 0,3 \
	- mt2.sip
sip -V -cgnd ${CAP_GROUND} -s -o -sub 2 -mlc mt1,mt2 -n 3 -i 0,3.001 -b \
	mt2,mt1,poly,diff,sub -t mt4,mt5,mt6 -j 0.3 -Maxw 4.5 -p mt3,key 0,3 \
	- mt3.sip
sip -V -cgnd ${CAP_GROUND} -s -o -sub 2 -mlc mt2,mt3 -n 3 -i 0,3.001 -b \
	mt3,mt2,mt1,poly,diff,sub -t mt5,mt6 -j 0.3 -Maxw 4.5 -p mt4,key 0,3 \
	- mt4.sip
sip -V -cgnd ${CAP_GROUND} -s -o -sub 2 -mlc mt3,mt4 -n 3 -i 0,3.001 -b \
	mt4,mt3,mt2,mt1,poly,diff,sub -t mt6 -j 0.3 -Maxw 4.5 -p mt5,key 0,3 \
	- mt5.sip
sip -V -cgnd ${CAP_GROUND} -s -o -sub 2 -mlc mt4,mt5 -n 3.68 -i 0,3.681 -b \
	mt5,mt4,mt3,mt2,mt1,poly,diff,sub -j 0.44 -Maxw 5.28 -p mt6,key \
	0,3.68 - mt6.sip
sip -V -cgnd ${CAP_GROUND} -s -o -sub 2 -cp poly,allGate,diff -n 3 -i 0,3.001 \
	-b diff,sub -t mt1,mt2,mt3,mt4,mt5,mt6 -j 0.18 -Maxw 2.7 -p poly,key \
	0,3 - poly.sip
sip -V -cgnd ${CAP_GROUND} -s -o -sub 2 -mlc poly -n 3 -i 0,3.001 -b \
	poly,diff,sub -t mt2,mt3,mt4,mt5,mt6 -j 0.3 -Maxw 4.5 -p mt1,key 0,3 \
	- mt1.sip
sip -V -s -cgnd ${CAP_GROUND} -sub 2 -L3A -h -b mt4,mt3,mt2,mt1,poly,diff,sub \
	-Maxw 5.28 -p mt5,key,mt6,key 0,3,0 - mt5_mt6.sip
sip -V -s -cgnd ${CAP_GROUND} -sub 2 -L3A -h -R mt6 -b \
	mt3,mt2,mt1,poly,diff,sub -Maxw 5.28 -p mt4,key,mt6,key 0,3,0 - \
	mt4_mt6.sip
sip -V -s -cgnd ${CAP_GROUND} -sub 2 -h -b mt3,mt2,mt1,poly,diff,sub -t mt6 \
	-Maxw 4.5 -p mt4,key,mt5,key 0,3,0 - mt4_mt5.sip
sip -V -s -cgnd ${CAP_GROUND} -sub 2 -L3A -h -R mt5 -b mt2,mt1,poly,diff,sub \
	-t mt6 -Maxw 4.5 -p mt3,key,mt5,key 0,3,0 - mt3_mt5.sip
sip -V -s -cgnd ${CAP_GROUND} -sub 2 -h -b mt2,mt1,poly,diff,sub -t mt5,mt6 \
	-Maxw 4.5 -p mt3,key,mt4,key 0,3,0 - mt3_mt4.sip
sip -V -s -cgnd ${CAP_GROUND} -sub 2 -L3A -h -R mt4 -b mt1,poly,diff,sub -t \
	mt5,mt6 -Maxw 4.5 -p mt2,key,mt4,key 0,3,0 - mt2_mt4.sip
sip -V -s -cgnd ${CAP_GROUND} -sub 2 -h -b mt1,poly,diff,sub -t mt4,mt5,mt6 \
	-Maxw 4.5 -p mt2,key,mt3,key 0,3,0 - mt2_mt3.sip
sip -V -s -cgnd ${CAP_GROUND} -sub 2 -L3A -h -R mt3 -b poly,diff,sub -t \
	mt4,mt5,mt6 -Maxw 4.5 -p mt1:mt1_cut,key,mt3,key 0,3,0 - mt1_mt3.sip
sip -V -s -cgnd ${CAP_GROUND} -sub 2 -h -b poly,diff,sub -t mt3,mt4,mt5,mt6 \
	-Maxw 4.5 -p mt1:mt1_cut,key,mt2,key 0,3,0 - mt1_mt2.sip
sip -V -s -cgnd ${CAP_GROUND} -sub 2 -L3A -h -R mt2 -b diff,sub -t \
	mt3,mt4,mt5,mt6 -k mt1:0.53 -Maxw 4.5 -p poly:poly_cut,key,mt2,key \
	0,3,0 - poly_mt2.sip
sip -V -s -cgnd ${CAP_GROUND} -sub 2 -h -R mt1,poly -b diff,sub -t \
	mt2,mt3,mt4,mt5,mt6 -Maxw 4.5 -p poly:poly_cut,key,mt1:mt1_cut,key \
	0,3,0 - poly_mt1.sip
ENDCAT

#==========================================================#
# Prepare gate capacitance blocking layers
#==========================================================#

emerge -V NMOS_MOS_21 PMOS_MOS_27 allGate

#==========================================================#
# Run pax16 to generate capfile
#==========================================================#

pax16 -V -lee_off -gnd ${CAP_GROUND} -ignore_cf_table -scf sip.cmd -cgnd \
	${CAP_GROUND},1.0 -rP np_rM1term.res,np_rPOLYterm.res,mwires.res \
	-M_perim_off -c \
	/home/install/FOUNDRY/analog/180nm/pv/assura/rcx/qrcTechFile -f sub \
	diff poly:poly_cut mt1:mt1_cut mt2 mt3 mt4 mt5 mt6 allGate - \
	/home/install/FOUNDRY/analog/180nm/pv/assura/rcx/qrcTechFile - - NET \
	- capfile

#==========================================================#
# Generate netlister data files
#==========================================================#


#==========================================================#
# Perform RC reduction
#==========================================================#

xreduce -V -mergecap -n NET -tech \
	/home/install/FOUNDRY/analog/180nm/pv/assura/rcx -d1 -e \
	mt6,mt5,mt4,mt3,mt2,mt1,poly,diff,sub,np_rPSDterm,np_rNSDterm,np_rPSUB,np_rNWELLterm,rPOLYcont \
	-mfactorR infinite -decoupled -sr -minR 0.001 -rP \
	np_rM1term.res,np_rPOLYterm.res,mwires.res -cap capfile L1T0 \
	NMOS_MOS_21.transr PMOS_MOS_27.transr

#==========================================================#
# Generate HSPICE file
#==========================================================#

advgen -V -g0 -li -f -n -o HSPICE -TL L1T0 -cgnd ${CAP_GROUND},1.0 -sc \
	caps2dversion -mMx capfile mt6,mt5,mt4,mt3,mt2,mt1,poly,diff,sub -rPm \
	res.mod np_rM1term.res,Rnp_rM1term.dev2 \
	np_rPOLYterm.res,Rnp_rPOLYterm.dev2 -rPm mwires.mod \
	mwires.res,mwires.dev2 -ta lvsmos.mod,NMOS_MOS_21.net \
	NMOS_MOS_21.transr -ta lvsmos.mod,PMOS_MOS_27.net PMOS_MOS_27.transr \
	- NET - /home/ec03/Desktop/01JST18EC055/inverter/extview.tmp

#==========================================================#
# Create _save_layers file for Assura extracted view
#==========================================================#

geom mt1 np_rM1term - np_rM1term,11,i,1
geom poly np_rPOLYterm - np_rPOLYterm,11,i,1
stamp -i2 np_rM1term rPOLYcont np_rPOLYcont
ereduce  rNSDcont rNSDcont.reduce
stamp -i  np_rM1term rNSDcont.reduce
stamp -i  rNSDcont.reduce rNSDcont
stamp -i  rNSDcont NSDcont
/bin/rm -f rNSDcont.reduce
ereduce  rPSDcont rPSDcont.reduce
stamp -i  np_rM1term rPSDcont.reduce
stamp -i  rPSDcont.reduce rPSDcont
stamp -i  rPSDcont PSDcont
/bin/rm -f rPSDcont.reduce
cat <<ENDCAT> _save_layers
sub NWELLterm PSUB
mt2 mt2
mt3 mt3
mt4 mt4
mt5 mt5
mt6 mt6
diff np_rNSDterm p_rNSDterm np_rPSDterm p_rPSDterm
M1term np_rM1term p_rM1term
POLYterm np_rPOLYterm p_rPOLYterm
PSDterm np_rPSDterm p_rPSDterm
NSDterm np_rNSDterm p_rNSDterm
PSUB np_rPSUB p_rPSUB
NWELLterm NWELLterm
POLYcont np_rPOLYcont p_rPOLYcont
PSDcont PSDcont
NSDcont NSDcont
NWVIA np_rNWVIA p_rNWVIA
SUBVIA np_rSUBVIA p_rSUBVIA
ENDCAT
