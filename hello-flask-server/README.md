# hello-flask-server


**Pull**

```bash
$ docker pull himenon/hello-flask-server
```

**Run**

```bash
$ docker run --rm -p 5000:5000 himenon/hello-flask-server
```

open browser: <http://localhost:5000>

Change Message:

```bash
$ docker run --rm -p 5000:5000 -e SERVER_NAME=container himenon/hello-flask-server
```

