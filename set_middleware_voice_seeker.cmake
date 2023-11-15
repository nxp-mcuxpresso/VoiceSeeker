include_guard(GLOBAL)


if (CONFIG_USE_middleware_voice_seeker_rdsp_utilities_public)
# Add set(CONFIG_USE_middleware_voice_seeker_rdsp_utilities_public true) in config.cmake to use this component

message("middleware_voice_seeker_rdsp_utilities_public component is included from ${CMAKE_CURRENT_LIST_FILE}.")

if((CONFIG_TOOLCHAIN STREQUAL armgcc OR CONFIG_TOOLCHAIN STREQUAL mcux))
  target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
      ${CMAKE_CURRENT_LIST_DIR}/rdsp_utilities_public/rdsp_memory_utils_public/RdspMemoryUtilsPublic.c
      ${CMAKE_CURRENT_LIST_DIR}/rdsp_utilities_public/rdsp_memory_utils_public/memcheck.c
  )
endif()

if((CONFIG_TOOLCHAIN STREQUAL armgcc OR CONFIG_TOOLCHAIN STREQUAL mcux))
target_include_directories(${MCUX_SDK_PROJECT_NAME} PUBLIC
  ${CMAKE_CURRENT_LIST_DIR}/rdsp_utilities_public/include
  ${CMAKE_CURRENT_LIST_DIR}/rdsp_utilities_public/rdsp_memory_utils_public
)
endif()


endif()


if (CONFIG_USE_middleware_voice_seeker_cm4)
# Add set(CONFIG_USE_middleware_voice_seeker_cm4 true) in config.cmake to use this component

message("middleware_voice_seeker_cm4 component is included from ${CMAKE_CURRENT_LIST_FILE}.")

if((CONFIG_BOARD STREQUAL evkmimx8mm) AND CONFIG_USE_middleware_voice_seeker_rdsp_utilities_public)

if(CONFIG_TOOLCHAIN STREQUAL armgcc)
target_include_directories(${MCUX_SDK_PROJECT_NAME} PUBLIC
  ${CMAKE_CURRENT_LIST_DIR}/./ARM_CortexM4/include
)
endif()

if(CONFIG_TOOLCHAIN STREQUAL armgcc)
  target_link_libraries(${MCUX_SDK_PROJECT_NAME} PRIVATE
    -Wl,--start-group
      ${CMAKE_CURRENT_LIST_DIR}/./ARM_CortexM4/Lib/libvoiceseeker_no_aec.a
      -Wl,--end-group
  )
endif()

else()

message(SEND_ERROR "middleware_voice_seeker_cm4 dependency does not meet, please check ${CMAKE_CURRENT_LIST_FILE}.")

endif()

endif()


if (CONFIG_USE_middleware_voice_seeker_cm7)
# Add set(CONFIG_USE_middleware_voice_seeker_cm7 true) in config.cmake to use this component

message("middleware_voice_seeker_cm7 component is included from ${CMAKE_CURRENT_LIST_FILE}.")

if((CONFIG_BOARD STREQUAL evkmimxrt1040 OR CONFIG_BOARD STREQUAL evkbimxrt1050 OR CONFIG_BOARD STREQUAL evkmimxrt1060 OR CONFIG_BOARD STREQUAL evkmimxrt1064 OR CONFIG_BOARD STREQUAL evkbmimxrt1060 OR CONFIG_BOARD STREQUAL evkmimxrt1160 OR CONFIG_BOARD STREQUAL evkmimxrt1170 OR CONFIG_BOARD STREQUAL evkbmimxrt1170 OR CONFIG_BOARD STREQUAL evkmimx8mp) AND CONFIG_USE_middleware_voice_seeker_rdsp_utilities_public)

if((CONFIG_TOOLCHAIN STREQUAL armgcc OR CONFIG_TOOLCHAIN STREQUAL mcux))
target_include_directories(${MCUX_SDK_PROJECT_NAME} PUBLIC
  ${CMAKE_CURRENT_LIST_DIR}/./ARM_CortexM7/include
)
endif()

if((CONFIG_TOOLCHAIN STREQUAL armgcc OR CONFIG_TOOLCHAIN STREQUAL mcux))
  target_link_libraries(${MCUX_SDK_PROJECT_NAME} PRIVATE
    -Wl,--start-group
      ${CMAKE_CURRENT_LIST_DIR}/./ARM_CortexM7/lib/libvoiceseeker_no_aec.a
      -Wl,--end-group
  )
endif()

else()

message(SEND_ERROR "middleware_voice_seeker_cm7 dependency does not meet, please check ${CMAKE_CURRENT_LIST_FILE}.")

endif()

endif()


if (CONFIG_USE_middleware_voice_seeker_hifi4)
# Add set(CONFIG_USE_middleware_voice_seeker_hifi4 true) in config.cmake to use this component

message("middleware_voice_seeker_hifi4 component is included from ${CMAKE_CURRENT_LIST_FILE}.")

if((CONFIG_BOARD STREQUAL evkmimxrt685 OR CONFIG_BOARD STREQUAL mimxrt685audevk) AND CONFIG_USE_middleware_voice_seeker_rdsp_utilities_public)

else()

message(SEND_ERROR "middleware_voice_seeker_hifi4 dependency does not meet, please check ${CMAKE_CURRENT_LIST_FILE}.")

endif()

endif()


if (CONFIG_USE_middleware_voice_seeker_fusionf1)
# Add set(CONFIG_USE_middleware_voice_seeker_fusionf1 true) in config.cmake to use this component

message("middleware_voice_seeker_fusionf1 component is included from ${CMAKE_CURRENT_LIST_FILE}.")

if((CONFIG_BOARD STREQUAL evkmimxrt595) AND CONFIG_USE_middleware_voice_seeker_rdsp_utilities_public)

else()

message(SEND_ERROR "middleware_voice_seeker_fusionf1 dependency does not meet, please check ${CMAKE_CURRENT_LIST_FILE}.")

endif()

endif()

