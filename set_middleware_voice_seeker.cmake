include_guard(GLOBAL)


if (CONFIG_USE_middleware_voice_seeker_cm33_nodsp)
# Add set(CONFIG_USE_middleware_voice_seeker_cm33_nodsp true) in config.cmake to use this component

message("middleware_voice_seeker_cm33_nodsp component is included from ${CMAKE_CURRENT_LIST_FILE}.")

if((CONFIG_BOARD STREQUAL rdrw612bga) AND CONFIG_USE_middleware_voice_seeker_rdsp_utilities_public_cm33_noDSP)

if((CONFIG_TOOLCHAIN STREQUAL armgcc OR CONFIG_TOOLCHAIN STREQUAL mcux))
target_include_directories(${MCUX_SDK_PROJECT_NAME} PUBLIC
  ${CMAKE_CURRENT_LIST_DIR}/ARM_CortexM33_noDSP/include
)
endif()

if((CONFIG_TOOLCHAIN STREQUAL armgcc OR CONFIG_TOOLCHAIN STREQUAL mcux))
  target_link_libraries(${MCUX_SDK_PROJECT_NAME} PRIVATE
    -Wl,--start-group
      ${CMAKE_CURRENT_LIST_DIR}/ARM_CortexM33_noDSP/lib/libvoiceseeker_no_aec.a
      -Wl,--end-group
  )
endif()

else()

message(SEND_ERROR "middleware_voice_seeker_cm33_nodsp dependency does not meet, please check ${CMAKE_CURRENT_LIST_FILE}.")

endif()

endif()


if (CONFIG_USE_middleware_voice_seeker_rdsp_utilities_public_cm33_noDSP)
# Add set(CONFIG_USE_middleware_voice_seeker_rdsp_utilities_public_cm33_noDSP true) in config.cmake to use this component

message("middleware_voice_seeker_rdsp_utilities_public_cm33_noDSP component is included from ${CMAKE_CURRENT_LIST_FILE}.")

if((CONFIG_CORE STREQUAL cm33) AND (CONFIG_BOARD STREQUAL rdrw612bga))

if((CONFIG_TOOLCHAIN STREQUAL armgcc OR CONFIG_TOOLCHAIN STREQUAL mcux))
  target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
      ${CMAKE_CURRENT_LIST_DIR}/ARM_CortexM33_noDSP/rdsp_utilities_public/rdsp_memory_utils_public/RdspMemoryUtilsPublic.c
      ${CMAKE_CURRENT_LIST_DIR}/ARM_CortexM33_noDSP/rdsp_utilities_public/rdsp_memory_utils_public/memcheck.c
  )
endif()

if((CONFIG_TOOLCHAIN STREQUAL armgcc OR CONFIG_TOOLCHAIN STREQUAL mcux))
target_include_directories(${MCUX_SDK_PROJECT_NAME} PUBLIC
  ${CMAKE_CURRENT_LIST_DIR}/ARM_CortexM33_noDSP/rdsp_utilities_public/include
  ${CMAKE_CURRENT_LIST_DIR}/ARM_CortexM33_noDSP/rdsp_utilities_public/rdsp_memory_utils_public
)
endif()

else()

message(SEND_ERROR "middleware_voice_seeker_rdsp_utilities_public_cm33_noDSP dependency does not meet, please check ${CMAKE_CURRENT_LIST_FILE}.")

endif()

endif()

