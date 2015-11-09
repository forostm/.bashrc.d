1\. Clone the repository [`.bashrc.d/`](https://github.com/barcia/.bashrc.d) in your home directory   
```bash
cd $HOME
git clone git@github.com:barcia/.bashrc.d.git
```

2.1\. Create a [hard link](https://en.wikipedia.org/wiki/Hard_link) for `.bashrc`   
```bash
ln $HOME/.bashrc.d/bashrc $HOME/.bashrc
```

2.2\. Create a [hard link](https://en.wikipedia.org/wiki/Hard_link) for `.bash_profile`   
```bash
ln $HOME/.bashrc.d/bash_profile $HOME/.bash_profile
```

3\. Load it   
```bash
source $HOME/.bashrc
```

* In one line   
```bash
cd $HOME && git clone https://github.com/barcia/.bashrc.d.git && ln $HOME/.bashrc.d/bashrc $HOME/.bashrc && ln $HOME/.bashrc.d/bash_profile $HOME/.bash_profile && source $HOME/.bashrc
```
