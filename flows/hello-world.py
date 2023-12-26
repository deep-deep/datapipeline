from prefect import flow,task,deploy
import pandas as pd

@flow
def hello_world(s):
    print(f"Hello, {s}!")
    print(pd.read_csv.__doc__)
    return len(s)


if __name__ == "__main__":
    deploy(
    hello_world.to_deployment(
        name = "hello-world-one",
        cron = "* * * * *",
        parameters = {"s" : "one"}
    ),
    hello_world.to_deployment(
        name = "hello-world-two",
        cron = "* * * * *",
        parameters = {"s":"two"}
    ),
    work_pool_name = "test",
    image = "skppy/hello-world:test"
    )