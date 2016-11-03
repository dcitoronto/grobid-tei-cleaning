# grobid-tei-cleaning
A bash script for cleaning TEI xml tags from grombid outputs

## Tools & Resources
Grobid: https://grobid.readthedocs.io/en/latest/Grobid-service/
Docker Grobid Repository: https://hub.docker.com/r/lfoppiano/grobid/
API documentation: https://github.com/kermitt2/grobid/blob/master/grobid-service/src/main/doc/grobid-service-manual.pdf
Docker: https://docs.docker.com/docker-for-mac/
Antconc: http://www.laurenceanthony.net/software.html


## Workflow
1. Download and Install Docker (test it works and troubleshoot) 
    + Through the command line, install Grobid image:
    `docker pull lfoppiano/grobid:0.4.1`
2. Initialize from cli
    `docker run -t --rm -p 8080:8080 lfoppiano/grobid:0.4.1`
3. Make sure your .pdfs have a good PATH (It seems to make sense to run from that directory too)
4. Access the API for grobid running locally using curl and redirecting (>) the output to a .txt: 
    `curl -v --form input=@./thefile.pdf localhost:8080/processFulltextDocument`
    + Direct the output of that to a .txt file
    `curl -v --form input=@./thefile.pdf localhost:8080/processFulltextDocument > theoutput.txt`
5. View in your prefered text editor (xml syntax highlighting recommended)

## Open Questions
### Grobid
+ Not seeing all the services that we anticipated from the browser interface
+ Do we want this running in a container ‘locally’? Or on the cluster?
+ Further, ‘locally’ doesn’t seem to be a good decision on our personal machines

### Antconc

### Overall
+ Need to investigate more whether we should be pulling less using growbid, or isolating how we search in antconc?
+ Scripting to bridge the gap?
