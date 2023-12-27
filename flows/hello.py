from prefect import flow,task


@flow
def hello(s):
    print(f"Hello, {s}!")   


if __name__ == "__main__":
    deploy(
    hello.to_deployment(
        name = "hello-tom",
        cron = "*/30 * * * *",
        parameters = {"s" : "tom"}
    ),
    hello.to_deployment(
        name = "hello-jonh",
        cron = "*/30 * * * *",
        parameters = {"s":"jonh"}
    ),
    work_pool_name = "test",
    image = "skppy/hello:test"
)