# 基础镜像使用Java
FROM java:8
# 作者
MAINTAINER wander
# VOLUME指定了临时文件目录为/tmp
# 其效果是在主机 /var/lib/docker 目录下创建了一个临时文件，并链接到容器的/tmp
VOLUME /tmp
# 将jar包添加到容器中并更名为app.jar
ADD target/*.jar app.jar
# 运行jar包
RUN bash -c "touch /app.jar"
# ENTRYPOINT是容器启动命令
ENTRYPOINT ["java","-jar","app.jar"]
# 指定容器需要映射到主机的端口
EXPOSE 8080