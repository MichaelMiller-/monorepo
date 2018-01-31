# This file will be configured to contain variables for CPack. These variables
# should be set in the CMake list file of the project before CPack module is
# included. The list of available CPACK_xxx variables and their associated
# documentation may be obtained using
#  cpack --help-variable-list
#
# Some variables are common to all generators (e.g. CPACK_PACKAGE_NAME)
# and some are specific to a generator
# (e.g. CPACK_NSIS_EXTRA_INSTALL_COMMANDS). The generator specific variables
# usually begin with CPACK_<GENNAME>_xxxx.


SET(CPACK_BINARY_7Z "")
SET(CPACK_BINARY_BUNDLE "")
SET(CPACK_BINARY_CYGWIN "")
SET(CPACK_BINARY_DEB "")
SET(CPACK_BINARY_DRAGNDROP "")
SET(CPACK_BINARY_FREEBSD "")
SET(CPACK_BINARY_IFW "")
SET(CPACK_BINARY_NSIS "")
SET(CPACK_BINARY_OSXX11 "")
SET(CPACK_BINARY_PACKAGEMAKER "")
SET(CPACK_BINARY_PRODUCTBUILD "")
SET(CPACK_BINARY_RPM "")
SET(CPACK_BINARY_STGZ "")
SET(CPACK_BINARY_TBZ2 "")
SET(CPACK_BINARY_TGZ "")
SET(CPACK_BINARY_TXZ "")
SET(CPACK_BINARY_TZ "")
SET(CPACK_BINARY_WIX "")
SET(CPACK_BINARY_ZIP "")
SET(CPACK_BUILD_SOURCE_DIRS "C:/dev/mm/monorepo;C:/dev/mm/monorepo/_build")
SET(CPACK_CMAKE_GENERATOR "Visual Studio 14 2015")
SET(CPACK_COMPONENT_UNSPECIFIED_HIDDEN "TRUE")
SET(CPACK_COMPONENT_UNSPECIFIED_REQUIRED "TRUE")
SET(CPACK_DEBIAN_PACKAGE_DEPENDS "libc6 (>= 2.3.1-6), libgcc1 (>= 1:3.4.2-12)")
SET(CPACK_DEBIAN_PACKAGE_MAINTAINER "SOFiSTiK AG")
SET(CPACK_GENERATOR "deb")
SET(CPACK_INSTALL_CMAKE_PROJECTS "C:/dev/mm/monorepo/_build;monorepo;ALL;/")
SET(CPACK_INSTALL_PREFIX "C:/Program Files (x86)/monorepo")
SET(CPACK_MODULE_PATH "cmake")
SET(CPACK_NSIS_DISPLAY_NAME "monorepo_bin1 monorepo_bin1_VERSION_MAJOR.monorepo_bin1_VERSION_MINOR.0")
SET(CPACK_NSIS_INSTALLER_ICON_CODE "")
SET(CPACK_NSIS_INSTALLER_MUI_ICON_CODE "")
SET(CPACK_NSIS_INSTALL_ROOT "$PROGRAMFILES")
SET(CPACK_NSIS_PACKAGE_NAME "monorepo_bin1 monorepo_bin1_VERSION_MAJOR.monorepo_bin1_VERSION_MINOR.0")
SET(CPACK_OUTPUT_CONFIG_FILE "C:/dev/mm/monorepo/_build/CPackConfig.cmake")
SET(CPACK_PACKAGE_CONTACT "schorsch")
SET(CPACK_PACKAGE_DEFAULT_LOCATION "/")
SET(CPACK_PACKAGE_DESCRIPTION_FILE "C:/dev/mm/monorepo/bin1/README-de.md")
SET(CPACK_PACKAGE_DESCRIPTION_SUMMARY "monorepo_bin1 example")
SET(CPACK_PACKAGE_FILE_NAME "monorepo_bin1-monorepo_bin1_VERSION_MAJOR.monorepo_bin1_VERSION_MINOR.0-win32")
SET(CPACK_PACKAGE_INSTALL_DIRECTORY "monorepo_bin1 monorepo_bin1_VERSION_MAJOR.monorepo_bin1_VERSION_MINOR.0")
SET(CPACK_PACKAGE_INSTALL_REGISTRY_KEY "monorepo_bin1 monorepo_bin1_VERSION_MAJOR.monorepo_bin1_VERSION_MINOR.0")
SET(CPACK_PACKAGE_NAME "monorepo_bin1")
SET(CPACK_PACKAGE_RELOCATABLE "true")
SET(CPACK_PACKAGE_VENDOR "vendor")
SET(CPACK_PACKAGE_VERSION "monorepo_bin1_VERSION_MAJOR.monorepo_bin1_VERSION_MINOR.0")
SET(CPACK_PACKAGE_VERSION_MAJOR "monorepo_bin1_VERSION_MAJOR")
SET(CPACK_PACKAGE_VERSION_MINOR "monorepo_bin1_VERSION_MINOR")
SET(CPACK_PACKAGE_VERSION_PATCH "0")
SET(CPACK_RESOURCE_FILE_LICENSE "C:/Program Files/CMake/share/cmake-3.10/Templates/CPack.GenericLicense.txt")
SET(CPACK_RESOURCE_FILE_README "C:/Program Files/CMake/share/cmake-3.10/Templates/CPack.GenericDescription.txt")
SET(CPACK_RESOURCE_FILE_WELCOME "C:/Program Files/CMake/share/cmake-3.10/Templates/CPack.GenericWelcome.txt")
SET(CPACK_SET_DESTDIR "OFF")
SET(CPACK_SOURCE_7Z "ON")
SET(CPACK_SOURCE_CYGWIN "")
SET(CPACK_SOURCE_GENERATOR "7Z;ZIP")
SET(CPACK_SOURCE_OUTPUT_CONFIG_FILE "C:/dev/mm/monorepo/_build/CPackSourceConfig.cmake")
SET(CPACK_SOURCE_RPM "")
SET(CPACK_SOURCE_TBZ2 "")
SET(CPACK_SOURCE_TGZ "")
SET(CPACK_SOURCE_TXZ "")
SET(CPACK_SOURCE_TZ "")
SET(CPACK_SOURCE_ZIP "ON")
SET(CPACK_SYSTEM_NAME "win32")
SET(CPACK_TOPLEVEL_TAG "win32")
SET(CPACK_WIX_SIZEOF_VOID_P "4")

if(NOT CPACK_PROPERTIES_FILE)
  set(CPACK_PROPERTIES_FILE "C:/dev/mm/monorepo/_build/CPackProperties.cmake")
endif()

if(EXISTS ${CPACK_PROPERTIES_FILE})
  include(${CPACK_PROPERTIES_FILE})
endif()
