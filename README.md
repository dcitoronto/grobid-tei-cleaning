# grobid-tei-cleaning

Scripts and tools to support the extraction of full text from pdfs using Grobid, and corpus analysis using AntConc.

## Tools & Resources

1. GROWBID
  - [GROWBID documentation](https://grobid.readthedocs.io/en/latest/Grobid-service/)
  - [GROBID docker image](https://hub.docker.com/r/lfoppiano/grobid/)
  - [GROBID API documentation](https://github.com/kermitt2/grobid/blob/master/grobid-service/src/main/doc/grobid-service-manual.pdf)

2. AntConc
  - [Software Download](http://www.laurenceanthony.net/software.html)

## Requirements

- Docker `v1.12.3` ([Docker for Mac](https://docs.docker.com/docker-for-mac/))
- `bash`
- `git`

## Extraction Workflow

1. Download and install Docker (test it works and troubleshoot)

2. Navigate to the folder containing your `.pdfs` (scripts are designed to run locally in the directory)
  `$ cd <path to file>`

3. Clone this git repository into the directory  
  `$ git clone https://github.com/dcitoronto/grobid-tei-cleaning.git`

4. Run the setup script  
**WARNING, this currently is large! (~200Mb)**  
  `$ bash grobid-tei-cleaning/scripts/setup.sh`

5. Initialize docker  
  `$ docker run -t --rm -p 8080:8080 lfoppiano/grobid:0.4.1`

6. To extract a `.txt` of the meta and body text of all `.pdfs` we use X scripts to access GROBID's API.

  `$ bash grobid-tei-cleaning/scripts/extract-text.sh`

7. View in your prefered text editor (xml syntax highlighting recommended)
