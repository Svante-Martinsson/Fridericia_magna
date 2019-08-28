          seed = -1

       seqfile = magna_seq.txt
      Imapfile = magna.IMAP
       outfile = out.txt
      mcmcfile = mcmc.txt

* speciesdelimitation = 0 * fixed species tree
 speciesdelimitation = 1 0 2    * speciesdelimitation algorithm0(e)
* speciesdelimitation = 1 1 2 1   * speciesdelimitation algorithm1(a m)
         speciestree = 1         * species-tree by NNI

   speciesmodelprior = 1  * 0: uniform LH; 1:uniform rooted trees; 2: uniformSLH; 3: uniformSRooted 

  species&tree = 7  A  B  C  D  E  F  G
 		   13  12  10  5  34  2  1
           ((A,F),(E,(B,(D,(G,C)))));

       usedata = 1    * 0: no data (prior); 1:seq like
         nloci = 2 * 1000    * number of data sets in seqfile

     cleandata = 0    * remove sites with ambiguity data (1:yes, 0:no)?

    thetaprior = 2 2000    # gamma(a, b) for theta
      tauprior = 2 200 1  # gamma(a, b) for root tau & Dirichlet(a) for other tau's

     locusrate = 1 2.0   # (0: No variation, 1: estimate, 2: from file) & a_Dirichlet (if 1)
      heredity = 0   # (0: No variation, 1: estimate, 2: from file) & a_gamma b_gamma (if 1)
* sequenceerror = 0 0 0 0 0 : 0.05 1   # sequencing errors: gamma(a, b) prior

       finetune = 1: 1 0.002 0.01 0.01 0.02 0.005 1.0  # finetune for GBtj, GBspr, theta, tau, mix, locusrate, seqerr

         print = 1 0 0 0   * MCMC samples, locusrate, heredityscalars Genetrees
        burnin = 4000
      sampfreq = 2
       nsample = 200000

*** Note: Make your window wider (144 columns) before running the program.
