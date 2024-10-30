FROM scratch

ADD 0911fe7fa8511a7dc412cb3fd5cb11bdcc031f7196e0e3f95fef057466eb7e44.tar.xz /
ADD 5386c6b380a384cd256a3d71b66091b4e0f8e8c30d37a55dc49848d6b5aced2c.tar.xz /
ADD 7e29d12d00fda72d0475e739be10fd9efb92813eda32ceadd41105b5143755e8.tar.xz /
ADD da63e21d77a50a6a63e0973a89c940ea4272f9600299acd6e9c03e9bccce680d.tar.xz /
ADD db090b39844bd770219075cac3472f56d251b075de76965bbab5e7fb8d6a5828.tar.xz /
ADD f1a375b8532854b1e00bf4963c0dffbd871f1b253a9f0fe2471be4f7da812e47.tar.xz /

ENV LANG=en_US.UTF-8
ENV TZ=:/etc/localtime
ENV PATH=/var/lang/bin:/usr/local/bin:/usr/bin/:/bin:/opt/bin
ENV LD_LIBRARY_PATH=/var/lang/lib:/lib64:/usr/lib64:/var/runtime:/var/runtime/lib:/var/task:/var/task/lib:/opt/lib
ENV LAMBDA_TASK_ROOT=/var/task
ENV LAMBDA_RUNTIME_DIR=/var/runtime

WORKDIR /var/task

ENTRYPOINT ["/lambda-entrypoint.sh"]
