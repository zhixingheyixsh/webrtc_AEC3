#add_subdirectory(abseil)
#include_directories("${PROJECT_SOURCE_DIR}/base/abseil")
add_library(base
            rtc_base/checks.cc
            rtc_base/time_utils.cc
            rtc_base/logging.cc
            rtc_base/memory/aligned_malloc.cc
            rtc_base/race_checker.cc
            rtc_base/string_encode.cc
            rtc_base/string_utils.cc
            rtc_base/platform_thread_types.cc
            rtc_base/strings/string_builder.cc
            rtc_base/critical_section.cc
            system_wrappers/source/field_trial.cc
            system_wrappers/source/metrics.cc
            system_wrappers/source/cpu_features.cc            
            abseil/absl/types/bad_optional_access.cc
            abseil/absl/base/internal/throw_delegate.cc
            abseil/absl/strings/string_view.cc
            abseil/absl/strings/internal/memutil.cc
            abseil/absl/strings/ascii.cc
            )
