Copy the file [`.bashrc`](https://gist.github.com/barcia/46848b3e53435ad3ee68) and the directory [`.bashrc.d/`](https://github.com/barcia/.bashrc.d) in your home directory.

1. Clone the repository [`.bashrc.d/`](https://github.com/barcia/.bashrc.d) in your home directory.
`git -C $HOME/.bashrc.d/ clone git@github.com:barcia/.bashrc.d.git`

2. Create a [hard link](https://en.wikipedia.org/wiki/Hard_link) for `.bashrc`
`ln $HOME/.bashrc.d/bashrc $HOME/.bashrc`

3. Load it
`source $HOME/.bashrc`
