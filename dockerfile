FROM ubuntu:22.04

RUN apt update && \
 apt -y curl && \
 curl -fsSL https://deb.nodesource.com/setup_18.x |bash - && \
 apt-get install nodejs gcc g++ make -y
# // . . tat cac cac thu muc toi  .
COPY . .  
# vì sh chưa biết npm ở đâu nên phải đưa đường dẫn tuyệt đối của npm để chạy
RUN /usr/bin/npm install

RUN /usr/bin/npm run build
CMD /usr/bin/npm run start
# tiền tố để chuyền câu lệnh
ENTRYPOINT /usr/bin/node
# port nay cua container
EXPOSE 3001/tcp