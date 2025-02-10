#!/bin/bash
usage() {
  echo "Script description: Will populate a directory structure that aligns with the course structure found on https://www.fullstackopen.com."
  echo "    There are 13 parts, and each part has varying subparts."
  echo ""
  echo "The directory structure will resemble the following:"
  echo "    ."
  echo "    ├── directory-filler.sh"
  echo "    ├── part0"
  echo "    │   ├── a"
  echo "    │   │   ├── exercises"
  echo "    │   │   └── notes"
  echo "    │   └── b"
  echo "    │       ├── exercises"
  echo "    │       └── notes"
  echo "    ..."
  echo "Usage: $0 [options]"
  echo "Options:"
  echo "  -h, --help      Show this help message and exit"
  echo "  -m, --mock      Only prints the commands which would run"
  echo "  -e, --enable    Will actually run the commands to create the directories"
  exit 0
}

case "$1" in
    -h|--help)
        usage
        ;;
    -m|--mock)
        enabled=0
        ;;
    -e|--enable)
        enabled=1
        ;;
    *)
        usage
        ;;
esac

subparts=(2 4 5 4 4 5 4 6 5 5 4 5 3 3)
alphabet=(a b c d e f g h i j k l m n o p q r s t u v w x y z)

for i in ${!subparts[@]};
do
    for subpart in $(seq 1 1 ${subparts[$i]});
    do
        if [ $enabled = 1 ];
        then
            mkdir -p "part${i}/${alphabet[$subpart-1]}/notes"
            mkdir -p "part${i}/${alphabet[$subpart-1]}/exercises"
        else
            echo "mkdir -p \"part${i}/${alphabet[$subpart-1]}/notes\""
            echo "mkdir -p \"part${i}/${alphabet[$subpart-1]}/exercises\""
        fi
    done
done
