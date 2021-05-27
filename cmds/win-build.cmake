if(MSVC)
	add_definitions(-DUNICODE -D_UNICODE)

	# Use the static C library for all build types
	MESSAGE(STATUS "link to static C and C++ runtime lirbary(/MT /MTd)")
	
	foreach(var 
		CMAKE_C_FLAGS
		CMAKE_C_FLAGS_DEBUG_INIT 
		CMAKE_C_FLAGS_RELEASE_INIT
		CMAKE_C_FLAGS_MINSIZEREL_INIT 
		CMAKE_C_FLAGS_RELWITHDEBINFO_INIT
		CMAKE_CXX_FLAGS
		CMAKE_CXX_FLAGS_DEBUG_INIT 
		CMAKE_CXX_FLAGS_RELEASE_INIT
		CMAKE_CXX_FLAGS_MINSIZEREL_INIT 
		CMAKE_CXX_FLAGS_RELWITHDEBINFO_INIT
	)
		if(${var} MATCHES "/MD")
			string(REGEX REPLACE "/MD" "/MT" ${var} "${${var}}")
			#set(${var} "${${var}}" CACHE STRING "msvc compiler flags" FORCE)
			MESSAGE(STATUS  "${var}:${${var}}")
		endif()    
	endforeach()    
endif(MSVC)