inherit esw python3native

ESW_COMPONENT_SRC = "/XilinxProcessorIPLib/drivers/"
ESW_COMPONENT_NAME = "libxil.a"

DEPENDS += "dtc-native python3-pyyaml-native xilmem device-tree"

do_generate_cmake (){
    # This will generate CMakeLists.txt which contains
    # drivers for the libxil 
    cd ${S}
    #TODO
    # This call was initially used to get the list of drivers and libraries required
    # by the design to the build system to use as dependencies to the application
    # being built, at this point this is all done in a single cmake build bundling
    # everything in libxil, which is undesired.
    DRIVERS_LIST=$(nativepython3 ${S}/scripts/getdrvlist.py -d ${DTBFILE})
}
do_generate_driver_data (){
    # This script should also not rely on relative paths and such
    cd ${S}
    nativepython3 ${S}/scripts/generate_drvdata.py -d ${DTBFILE}
}

# Task dependencies might need to be fixed after unifying the DTB flow
do_create_dtb(){
    :
}

addtask do_generate_cmake before do_configure after do_create_dtb

addtask do_generate_driver_data before do_compile after do_create_dtb

addtask do_create_dtb before do_compile after do_prepare_recipe_sysroot