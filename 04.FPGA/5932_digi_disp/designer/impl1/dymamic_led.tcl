# Created by Libero Project Manager 9.1.0.18
# Sat Jan 04 09:32:43 2014

# (NEW DESIGN)

# create a new design
new_design -name "dymamic_led" -family "ProASIC3"
set_device -die "A3P030" -package "100 VQFP"


# set default back-annotation base-name
set_defvar "BA_NAME" "dymamic_led_ba"
set_defvar "IDE_DESIGNERVIEW_NAME" {Impl1}
set_defvar "IDE_DESIGNERVIEW_COUNT" "1"
set_defvar "IDE_DESIGNERVIEW_REV0" {Impl1}
set_defvar "IDE_DESIGNERVIEW_REVNUM0" "1"
set_defvar "IDE_DESIGNERVIEW_ROOTDIR" {D:\Actelprj\1401\5932_digi_disp\designer}
set_defvar "IDE_DESIGNERVIEW_LASTREV" "1"

# set working directory
set_defvar "DESDIR" "D:/Actelprj/1401/5932_digi_disp/designer/impl1"

# set back-annotation output directory
set_defvar "BA_DIR" "D:/Actelprj/1401/5932_digi_disp/designer/impl1"

# enable the export back-annotation netlist
set_defvar "BA_NETLIST_ALSO" "1"

# set EDIF options
set_defvar "EDNINFLAVOR" "GENERIC"

# set HDL options
set_defvar "NETLIST_NAMING_STYLE" "VERILOG"

# setup status report options
set_defvar "EXPORT_STATUS_REPORT" "1"
set_defvar "EXPORT_STATUS_REPORT_FILENAME" "dymamic_led.rpt"

# legacy audit-mode flags (left here for historical reasons)
set_defvar "AUDIT_NETLIST_FILE" "1"
set_defvar "AUDIT_DCF_FILE" "1"
set_defvar "AUDIT_PIN_FILE" "1"
set_defvar "AUDIT_ADL_FILE" "1"

# import of input files
import_source  \
-format "edif" -edif_flavor "GENERIC" -netlist_naming "VERILOG" {../../synthesis/dymamic_led.edn} \
-format "sdc"  {..\..\synthesis\dymamic_led_sdc.sdc}

# save the design database
save_design {dymamic_led.adb}

show_device_selection_wizard
