# Importing required modules
from fastapi import FastAPI, Request, Form
from fastapi.templating import Jinja2Templates
from fastapi.responses import HTMLResponse

# Initialize the FastAPI app
app = FastAPI()

# Specify the directory for Jinja2 templates
templates = Jinja2Templates(directory=".")

# Route for the form
@app.get("/", response_class=HTMLResponse)
def form_post(request: Request):
    return templates.TemplateResponse('form.html', context={'request': request})
