macro(configure_project)

	ADD_DEFINITIONS(-DENABLE_WALLET)
	ADD_DEFINITIONS(-DHAVE_CONFIG_H)
	ADD_DEFINITIONS(-DHAVE_SYS_SELECT_H)
	ADD_DEFINITIONS(-DTESTS)

	option(ENABLE_WALLET  "ENABLE WALLET FLAG" ON)
    option(HAVE_CONFIG_H "Build with tests" ON)
    option(HAVE_SYS_SELECT_H "Build with tests" ON)
    option(TESTS "Build with tests" OFF)

	if (ENABLE_WALLET)
		SET( ENABLE_WALLET 1 )
	else(ENABLE_WALLET)
		SET( ENABLE_WALLET 0 )
	endif()


    if (HAVE_CONFIG_H)
        SET( HAVE_CONFIG_H 1 )
    else(HAVE_CONFIG_H)
        SET( HAVE_CONFIG_H 0 )
    endif()

    if (HAVE_SYS_SELECT_H)
        SET( HAVE_SYS_SELECT_H 1 )
    else(HAVE_SYS_SELECT_H)
        SET( HAVE_SYS_SELECT_H 0 )
    endif()



    print_config()

endmacro()

macro(print_config)
	message("")
	message("------------------------------------------------------------------------")
	message("-- Configuring ${PROJECT_NAME}")
	message("------------------------------------------------------------------------")
	message("-- CMake ${CMAKE_VERSION} (${CMAKE_COMMAND})")
	message("-- CMAKE_BUILD_TYPE Build type                               ${CMAKE_BUILD_TYPE}")
	message("-- TARGET_PLATFORM  Target platform                          ${CMAKE_SYSTEM_NAME}")
	message("-- BUILD_SHARED_LIBS                                         ${BUILD_SHARED_LIBS}")
	message("--------------------------------------------------------------- features")
	message("-- ENABLE_WALLET       enable or disable flag                ${ENABLE_WALLET}")
	message("-- HAVE_CONFIG_H       Have config                           ${HAVE_CONFIG_H}")
	message("-- HAVE_SYS_SELECT_H   Have sys function select              ${HAVE_SYS_SELECT_H}")
    message("-- TESTS               Build tests                           ${TESTS}")
	message("------------------------------------------------------------------------")
	message("")
endmacro()
