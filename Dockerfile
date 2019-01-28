FROM centos:7

ENV MODEL=serow250

CMD exec /bin/bash -c "echo ${MODEL}255 && trap : TERM INT; sleep infinity & wait"
