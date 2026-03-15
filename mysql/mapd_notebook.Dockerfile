FROM 
python:
3.14.2-slim
WORKDIR 
/mapd-workspace
ENV 
PIP_DEFAULT_TIMEOUT=
PYTHONUNBUFFERED=1 \
100 \
PIP_DISABLE_PIP_VERSION_CHECK=1 \
PIP_NO_CACHE_DIR=1
All containers must start FROM an existing base-image 
containing properties we want to inherit 
→ In this case we use an official Python image taken 
from the 
Docker-hub remote registry as a base 
installation platform 
RUN pip 
install 
notebook \
matplotlib \
SQLAlchemy==2.0.46 \
ipython-sql==0.5.0 \
mysql-connector-python==9.5.0 \
pandas
EXPOSE 
8888
ENTRYPOINT [
"jupyter", 
CMD [
"--ip=0.0.0.0", \
"--port=8888", \
"--no-browser", \
"--allow-root", \
"notebook"]
"--NotebookApp.token="]