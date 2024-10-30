FROM scratch

ADD 0cb16e001242bc378112d3add6599e9d27c706aacb496ccda165f7ec98a507ce.tar.xz /
ADD 14326f77e2c37b68ac614bc9bc15abfada4f4eab830b4c4801786da9d2435a77.tar.xz /
ADD 466a3c75038fe918bb31b2ff48a23013abcad88f6da958107942aaf638e1c6a9.tar.xz /
ADD 65fda594783b9df58f8c4535948fdee3f721c923eb7ca203197e29f277f194b3.tar.xz /
ADD 80cc7707468191468fa5d30bdaf146c86f8b7e85b6de49b7199edbe25a356d86.tar.xz /
ADD d63117adf0646e572f1bf4ee223e5533a8491819da95d10ef29b5c1bf56dffb6.tar.xz /

ENV LANG=en_US.UTF-8
ENV TZ=:/etc/localtime
ENV PATH=/var/lang/bin:/usr/local/bin:/usr/bin/:/bin:/opt/bin
ENV LD_LIBRARY_PATH=/var/lang/lib:/lib64:/usr/lib64:/var/runtime:/var/runtime/lib:/var/task:/var/task/lib:/opt/lib
ENV LAMBDA_TASK_ROOT=/var/task
ENV LAMBDA_RUNTIME_DIR=/var/runtime

WORKDIR /var/task

ENTRYPOINT ["/lambda-entrypoint.sh"]
