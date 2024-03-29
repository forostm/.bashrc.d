1\. Clone the repository [`.bashrc.d/`](https://github.com/barcia/.bashrc.d) in your home directory   
```bash
cd $HOME
https://github.com/barcia/.bashrc.d.git
```

2.1\. Create a [hard link](https://en.wikipedia.org/wiki/Hard_link) for `.bashrc`   
```bash
ln $HOME/.bashrc.d/files/bashrc $HOME/.bashrc
```

2.2\. Create a [hard link](https://en.wikipedia.org/wiki/Hard_link) for `.bash_profile`   
```bash
ln $HOME/.bashrc.d/files/bash_profile $HOME/.bash_profile
```

3\. Load it   
```bash
source $HOME/.bashrc
```

* In one line (HTTPS)   
```bash
bash <(curl -s https://gist.githubusercontent.com/barcia/ab29f5bdebd0441fd0c0/raw/bashrc-https.sh)
```

* In one line (SSH)   
```bash
bash <(curl -s https://gist.githubusercontent.com/barcia/ab29f5bdebd0441fd0c0/raw/bashrc-git.sh)
```
