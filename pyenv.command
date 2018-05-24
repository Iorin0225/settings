anyenv install pyenv
exec $SHELL -l

pyenv install $(pyenv install -l | grep -v - | tr -d ' ' | grep '^2' | tail -1) && \
pyenv install $(pyenv install -l | grep -v - | tr -d ' ' | grep '^3' | tail -1) && \
pyenv rehash


git clone https://github.com/yyuu/pyenv-virtualenv.git  ~/.anyenv/envs/pyenv/plugins/pyenv-virtualenv
echo 'eval "$(pyenv virtualenv-init -)"' >> ~/.bash_profile
exec $SHELL -l

pip install django
