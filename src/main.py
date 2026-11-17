from fastapi import FastAPI 
import uvicorn
PORT = 8000
app = FastAPI()

@app.get("/")
async def read_root():
    return {"Hello": "World"}

#health check endpoint
@app.get("/health")
async def health_check():
    return {"status": "healthy"}    

if __name__ == "__main__":
    uvicorn.run(app, host="0.0.0.0", port=PORT)

