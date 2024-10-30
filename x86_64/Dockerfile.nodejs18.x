FROM scratch

ADD 1490853177b0ce117189bd4149e66e5654580f645efb720064c8db99e31fef96.tar.xz /
ADD 1cfe7b45d4d884a4fac189e359d0832a26aa88584a58dbd4a77171ba884ef2e0.tar.xz /
ADD 6d8bb2168762a52fab898e59d2a0ed4c2eb695cd4b94ff0d9790918ea696a55a.tar.xz /
ADD 8034334d3f82fb52ad257ac190ff7a5ec1256fbdfcc1d612949e644d39263bd3.tar.xz /
ADD b931beefad51a38052b256dee84e729d7667c073d56119f77182aea75bc34a8e.tar.xz /
ADD fadd7c9a6c8d2b8a190a284b0189e3ba6d3b6dae16433af0d6f1c7c96e22ed2a.tar.xz /

ENV LANG=en_US.UTF-8
ENV TZ=:/etc/localtime
ENV PATH=/var/lang/bin:/usr/local/bin:/usr/bin/:/bin:/opt/bin
ENV LD_LIBRARY_PATH=/var/lang/lib:/lib64:/usr/lib64:/var/runtime:/var/runtime/lib:/var/task:/var/task/lib:/opt/lib
ENV LAMBDA_TASK_ROOT=/var/task
ENV LAMBDA_RUNTIME_DIR=/var/runtime

WORKDIR /var/task

ENTRYPOINT ["/lambda-entrypoint.sh"]
