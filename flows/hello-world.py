from prefect import flow,task

@flow
def hello_world(s):
    print(f"Hello, {s}!")
    return len(s)


