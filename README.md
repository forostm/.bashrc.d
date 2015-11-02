1. Clone the repository [`.bashrc.d/`](https://github.com/barcia/.bashrc.d) in your home directory.   
`cd $HOME`
`git clone git@github.com:barcia/.bashrc.d.git`

2. Create a [hard link](https://en.wikipedia.org/wiki/Hard_link) for `.bashrc`   
`ln $HOME/.bashrc.d/bashrc $HOME/.bashrc`

3. Load it   
`source $HOME/.bashrc`

In one line :smirk::   
`cd $HOME && git clone git@github.com:barcia/.bashrc.d.git && ln $HOME/.bashrc.d/bashrc $HOME/.bashrc && source $HOME/.bashrc`
