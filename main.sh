cd /tmp
curl -O https://repo.anaconda.com/archive/Anaconda3-2019.03-Linux-x86_64.sh
echo "**ANACONDA DOWNLOAD COMPLETE**"
bash Anaconda3-2019.03-Linux-x86_64.sh -b
eval "$(/Users/ubuntu/anaconda/bin/conda shell.bash hook)"
source ~/.bashrc
echo "**ANACONDA INSTALLATION COMPLETE**"

jupyter notebook --generate-config
echo "**\n\nGenerating Jupyter Config file.....**"

c.NotebookApp.ip = '0.0.0.0' >> ~/.jupyter/jupyter_notebook_config.py
c.NotebookApp.open_browser = False >> ~/.jupyter/jupyter_notebook_config.py
c.NotebookApp.port = <Port Number> >> ~/.jupyter/jupyter_notebook_config.py

