FROM scratch
ADD x86_64/1c7aadfc5392a5d3484b1c40c918fcf2e3d6877b5435f619c37c55eb411630c4.tar.xz /
ADD x86_64/25dd13f382739877c6d1ca9156dbd851fe9c9af347ab756b89bc7d5a0affd9cf.tar.xz /
ADD x86_64/3099f04ea64e0308dc0025bb90cefba646aed280b0d43865f7aa982ff8223e89.tar.xz /
ADD x86_64/8288573b115bae5ead73c3abeae1e8fb09dea4dca605af41cb217c285b3a8fa2.tar.xz /
ADD x86_64/9a35b2bd582a78ba5d6c8f9a97777f5bcdedfdc126ff851a99ca3e02b27fe23c.tar.xz /
ADD x86_64/e2d27413a060fb0c71e5bc79bc71ce8c91133192c0dae3c5a5d77591a1ac5ff3.tar.xz /

ENV LANG=en_US.UTF-8
ENV TZ=:/etc/localtime
ENV PATH=/var/lang/bin:/usr/local/bin:/usr/bin/:/bin:/opt/bin
ENV LD_LIBRARY_PATH=/var/lang/lib:/lib64:/usr/lib64:/var/runtime:/var/runtime/lib:/var/task:/var/task/lib:/opt/lib
ENV LAMBDA_TASK_ROOT=/var/task
ENV LAMBDA_RUNTIME_DIR=/var/runtime

WORKDIR /var/task

ENTRYPOINT ["/lambda-entrypoint.sh"]
