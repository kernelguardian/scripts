cd /tmp
curl -O https://repo.anaconda.com/archive/Anaconda3-2019.03-Linux-x86_64.sh
echo "**ANACONDA DOWNLOAD COMPLETE**"
bash Anaconda3-2019.03-Linux-x86_64.sh -b
cd ~
eval "$(anaconda3/bin/conda shell.bash hook)"
source ~/.bashrc
echo "**ANACONDA INSTALLATION COMPLETE**"

jupyter notebook --generate-config
echo "**\n\nGenerating Jupyter Config file.....**"
cd ~/.jupyter
echo "c.NotebookApp.ip = '0.0.0.0'" >> jupyter_notebook_config.py 
echo "c.NotebookApp.open_browser = False" >> jupyter_notebook_config.py 
echo "c.NotebookApp.port = 8888" >> jupyter_notebook_config.py 






