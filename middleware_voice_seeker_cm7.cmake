#Description: middleware voice_seeker cm7; user_visible: True
include_guard(GLOBAL)
message("middleware_voice_seeker_cm7 component is included.")

target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
)

target_include_directories(${MCUX_SDK_PROJECT_NAME} PUBLIC
    ${CMAKE_CURRENT_LIST_DIR}/ARM_CortexM7/include
)


include(middleware_voice_seeker_rdsp_utilities_public)