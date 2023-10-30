# NUPET
Migration repo for nupet.daelt.ct.utfpr.edu.br


Then, run the commands to build and run the Docker image:
```bash
docker build -t alpine-apache2 .
docker run -dit --name alpine-app -p 8080:80 alpine-apache2
´´´

Visit http://localhost:8080 and you will see It works!
