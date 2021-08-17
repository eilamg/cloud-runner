from fastapi import FastAPI


app = FastAPI()


@app.get("/")
def read_root():
    return {"Hello": "World"}


@app.get('/reverse/')
def reverse_text(query: str):
    return {'reverse': query[::-1]}
