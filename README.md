# grobid-tei-cleaning

Scripts and tools to support the extraction of full text from pdfs using Grobid, and corpus analysis using AntConc

A bash script for cleaning TEI xml tags from grombid outputs

## Tools & Resources


1. GROWBID

  - [GROWBID documentation](https://grobid.readthedocs.io/en/latest/Grobid-service/)
  - [GROBID docker image](https://hub.docker.com/r/lfoppiano/grobid/)
  - [GROBID API documentation](https://github.com/kermitt2/grobid/blob/master/grobid-service/src/main/doc/grobid-service-manual.pdf)

  Requires:
    - [Docker for Mac](https://docs.docker.com/docker-for-mac/)

2. AntConc

  - http://www.laurenceanthony.net/software.html


## Extraction Workflow

1. Download and install Docker (test it works and troubleshoot)
  - Through the command line, install Grobid image  
  `docker pull lfoppiano/grobid:0.4.1`

2. Initialize from cli  
  `docker run -t --rm -p 8080:8080 lfoppiano/grobid:0.4.1`

3. Navigate to the folder containing your `.pdfs` (scripts are designed to run locally in the directory)
  `cd <path to file>`

4. Clone this git repository into the directory  
  `git clone https://github.com/dcitoronto/grobid-tei-cleaning.git`

5. To extract a `.txt` of the meta and body text of all `.pdfs` we use X scripts to access GROBID's API.

  `bash grobid-tei-cleaning/scripts/extract-text.sh`

Access the API for grobid running locally using curl and redirecting (>) the output to a .txt:
    + `curl -v --form input=@./thefile.pdf localhost:8080/processFulltextDocument`
    + Direct the output of that to a .txt file
	+ `curl -v --form input=@./thefile.pdf localhost:8080/processFulltextDocument > theoutput.txt`
6. View in your prefered text editor (xml syntax highlighting recommended)

## Open Questions
### Grobid
+ Not seeing all the services that we anticipated from the browser interface
+ Do we want this running in a container ‘locally’? Or on the cluster?
+ Further, ‘locally’ doesn’t seem to be a good decision on our personal machines

### Antconc

### Overall
+ Need to investigate more whether we should be pulling less using growbid, or isolating how we search in antconc?
+ Scripting to bridge the gap?
