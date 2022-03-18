USE_NE10="$1"
LIB_PATH="$2"
if [ "$USE_NE10" = "yes"  ]; then
  echo ADDLIB ${LIB_PATH}/libNE10.a >> ar.mac
else
  echo "-- Ne10 is not used"
fi
