set(SOURCE
   echo_canceller3_config.cc
   #echo_canceller3_config_json.cc
   echo_canceller3_factory.cc
    
)
add_library(api STATIC ${SOURCE})
