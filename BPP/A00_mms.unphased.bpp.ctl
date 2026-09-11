          seed =  -1

       seqfile = /scratch/gpfs/VONHOLDT/SJG/MMS/bpp/mms_2kb_w200kb_diploid_unphased_bpp.txt
      Imapfile = /scratch/gpfs/VONHOLDT/SJG/MMS/bpp/A00/mms_unphased_map_subpops_regions.txt
       outfile = mms_unphased_out7500.txt
      mcmcfile = mms_unphased_mcmc7500.txt

  speciesdelimitation = 0 * fixed species tree
*  speciesdelimitation = 1 0 2  * species delimitation rjMCMC algorithm0 and finetune(e)
* speciesdelimitation = 1 1 2 1   * species delimitation rjMCMC algorithm1 finetune (a m)
          speciestree = 0       * species tree NNI/SPR
*        speciestree = 1  0.4 0.2 0.1   * speciestree pSlider ExpandRatio ShrinkRatio

   speciesmodelprior = 1  * 0: uniform LH; 1:uniform rooted trees; 2: uniformSLH; 3: uniformSRooted

  species&tree = 4  MAU  MD  IT  EM
                    2  2  1  5
                  ((MAU,MD)ANA,(IT,EM)AAM);

     migprior =  2 2
    migration = 12
                MAU MD
                MD MAU
                MAU IT
                IT MAU
                MAU EM 
                EM MAU
                MD IT
                IT MD
                MD EM
                EM MD
                IT EM
                EM IT


         phase =   1  1  1  1
                  
       usedata = 1  * 0: no data (prior); 1:seq like
         nloci = 7500  * number of data sets in seqfile

     cleandata = 0    * remove sites with ambiguity data (1:yes, 0:no)?

* This run is for shallow divergence and small ancestral population. 

    thetaprior = gamma 3 5000   # invgamma(a, b) for theta; mean=0.0025, var=0.0025
      tauprior = gamma 2 200000    # invgamma(a, b) for root tau & Dirichlet(a) for other tau's; mean=0.005, var=0.005

    checkpoint = 100000 100000

      finetune = 1: 50.0 50.0 0.000005 0.0000001 0.01 0.05

       threads = 32

         print = 1 0 0 0   * MCMC samples, locusrate, heredityscalars, Genetrees
        burnin = 50000
      sampfreq = 2
       nsample = 500000
