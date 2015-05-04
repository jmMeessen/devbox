# devbox
Building a portable docker based developer toolbox

* a versioned building block,
* continuously tested,
* extensible,
* portable,
* sharable.

For a more detailed discussion about the motivations and the background, see [background-fr.md](background-fr.md)

<u>Note:</u> It is assumed that you have a Docker environment installed (or alternatively Boot2Docker). A good test is whether "docker ps" shows no errors. 
You will also need `docker-compose`.

## How to use the Devbox

To use the Devbox a X client is needed. We chose "X2GO". The client part must be available on your machine.

Start the Devbox container with :
```bash
$ make start
```

### Use the GUI 

To start the Graphical User Interface to the DEVBOX, just do

```
make gui
```

And, tadahh, X2GO starts and you are in business, connected to the GUI of your Devbox.

#### manual startup of the GUI

On certain configurations, the startup with `make` fails. You can start it by hand.

Start X2GO. If you built the DEVBOX with "make", a session is automatically created. Just double click on it. Should there be an opened session (remains of a failed `make gui`tentative), just delete it and create a new session by clicking on "new".





### Use the command line

You also access the devbox in command line with 2 solutions :

* Use docker to spawn a new bash shell inside the devbox : 
```bash
$ make shell
```
* Use SSH to access the devbox : 
```bash
$ ssh dockerx@$(boot2docker ip 2>/dev/null) -p 2200
```


## Advanced using : how to build/test/etc. the Devbox ?

After getting the latest version of the box by cloning the Git repository, position yourself in the root of directory structure so that run the various commands.

* The full build and test workflow to create the Devbox : 
```bash
$ make
```

* To only rebuild image :
```bash
$ make build
```

* To run the tests only, execute :
```bash
$ make test
```

* To connect interactively to the Devbox, just execute :
```bash
$ make shell
```

* To delete your local devbox (and ERASE all your data...) :
```bash
$ make clean
```


## How to run the presentation 

(With Docker of course)

To start a containerized web server that will generate and serve the presentation locally :

```bash
$ make presentation 
```

To display it, start your favourite browser and point it to the address echoed on the screen, once the container is started.


