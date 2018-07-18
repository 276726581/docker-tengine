Tengine Docker Images

This tengine image is based on the Alpine Linux project.

Tengine is a web server originated by Taobao, the largest e-commerce website in Asia. It is based on the Nginx HTTP server and has many advanced features. Tengine has proven to be very stable and efficient on some of the top 100 websites in the world, including taobao.com and tmall.com.

支持http_dyups_module

配置参考: test_dyups.conf upstream.conf

```shell
>curl http://127.0.0.1:8090/upstream/test
server 127.0.0.1:800
>curl http://127.0.0.1:8080
test dyups 800
>curl -d "server 127.0.0.1:801;server 127.0.0.1:802;" http://127.0.0.1:8090/upstream/test
success
>curl http://127.0.0.1:8090/upstream/test
server 127.0.0.1:801
server 127.0.0.1:802
>curl http://127.0.0.1:8080
test dyups 801
>curl http://127.0.0.1:8080
test dyups 802
