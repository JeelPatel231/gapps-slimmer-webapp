from django.shortcuts import redirect, render
from django.http import HttpResponse, HttpRequest
import subprocess

def homepage(request):
    return render(request, 'index.html')

listlmao=[]

def output(request):
    if request.method == 'GET':
        listlmao=request.GET.getlist('true[]')
        token=request.GET.get('csrfmiddlewaretoken')
        subprocess.run(['./lol/script.sh']+[token]+listlmao)
        dlonk="/static/workspace/"+token+"/GApps-arm64-ten-custom.zip"
        subprocess.Popen(['./lol/delete.sh']+[token])
        return redirect(dlonk)