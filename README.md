# jax-rs demo

> JAX-RS  is  a  standard  API proposed by Java to maintain a common architectural pattern independently of the provider´s implementation (libraries). JAX-RS libraries:
> - Jersey
> - RESTEasy
> - Apache CXF
> - Restlet


Demo app creted with jax-rs api, with no dependencies to jax-rs implementations in code. Build with jersey dependency as jax-rs implementation.

Build project:
> docker build -t jsx-rs .

Run project: 
> docker run -p 8888:8080 jax-rs

Test project:
> curl http://localhost:8888/api/orders/1
> curl -X POST -d '{"id":23,"item":"lorem ipsum"}' http://localhost:8888/api/orders --header "Content-Type:application/json"
