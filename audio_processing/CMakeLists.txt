include_directories( ${PROJECT_SOURCE_DIR} aec3 include utility logging)
add_subdirectory(aec3)
set (EXTRA_LIBS ${EXTRA_LIBS} aec3)
add_library(AudioProcess
            STATIC
            audio_frame.cc
            audio_buffer.cc
            high_pass_filter.cc
            splitting_filter.cc
            splitting_filter_c.c
            sparse_fir_filter.cc
            three_band_filter_bank.cc
            channel_buffer.cc
            #utility/pffft_wrapper.cc
            utility/cascaded_biquad_filter.cc
            utility/delay_estimator.cc
            utility/delay_estimator_wrapper.cc
            utility/ooura_fft.cc
            channel_layout.cc
            resampler/push_sinc_resampler.cc
            resampler/sinc_resampler.cc
            resampler/sinc_resampler_sse.cc
            )
target_link_libraries(AudioProcess ${EXTRA_LIBS})
#[[
if(BUILD_STATIC_LIB)
  set(OUTPUT_LIB "lib${PROJECT_NAME}.a")
  set(LIB_PATH "${CMAKE_CURRENT_SOURCE_DIR}/externals/${SYSTEM_DETAILS}")
  add_library(${PROJECT_NAME} ${SRC_SP_MODULE})
  message(STATUS "Using ${CMAKE_AR} for ${OUTPUT_LIB}")
  ADD_CUSTOM_TARGET(${OUTPUT_LIB} ALL
    COMMAND echo CREATE ${OUTPUT_LIB} > ar.mac
    COMMAND echo SAVE >> ar.mac
    COMMAND echo END >> ar.mac
    COMMAND echo OPEN ${OUTPUT_LIB} > ar.mac
    COMMAND echo ADDLIB ${LIB_PATH}/libsanyns.a >> ar.mac
    COMMAND echo ADDLIB ${LIB_PATH}/libsanyagc.a >> ar.mac
    COMMAND echo ADDLIB ${LIB_PATH}/libsanywakeup.a >> ar.mac
    COMMAND echo ADDLIB ${LIB_PATH}/libsanydualgsc.a>> ar.mac
    COMMAND echo ADDLIB ${LIB_PATH}/libsanyconfig.a >> ar.mac
    #COMMAND echo ADDLIB ${LIB_PATH}/libaec_recong.a >> ar.mac
    #COMMAND echo ADDLIB ${LIB_PATH}/libagc.a >> ar.mac
    #COMMAND echo ADDLIB ${LIB_PATH}/libcdr.a >> ar.mac
    #COMMAND echo ADDLIB ${LIB_PATH}/libvadOut.a >> ar.mac
    #COMMAND echo ADDLIB ${LIB_PATH}/libvad_sai.a >> ar.mac
    #COMMAND echo ADDLIB ${LIB_PATH}/libdoa_linear.a >> ar.mac
    #COMMAND echo ADDLIB ${LIB_PATH}/libdualdoa.a >> ar.mac
    #COMMAND echo ADDLIB ${LIB_PATH}/libdualgsc.a >> ar.mac
    #COMMAND . ${CMAKE_CURRENT_SOURCE_DIR}/cmake/check_ne10.sh ${USE_NE10} ${LIB_PATH}
    COMMAND echo SAVE >> ar.mac
    COMMAND echo END >> ar.mac
    COMMAND ${CMAKE_AR} -M < ar.mac
    COMMAND rm ar.mac
    WORKING_DIRECTORY ${LIBRARY_OUTPUT_PATH})
  ADD_DEPENDENCIES(${OUTPUT_LIB} ${PROJECT_NAME})
else()
  add_library(${PROJECT_NAME} SHARED ${SRC_SP_MODULE})
endif()
]]

#install (TARGETS MathFunctions DESTINATION ${PROJECT_SOURCE_DIR}/install)
#install (FILES mathfunctions.h DESTINATION ${PROJECT_SOURCE_DIR}/install)


