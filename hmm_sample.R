library("HMM")

 # initialize()
A = matrix(nrow = 2,c(2/3,1/3,1/3,2/3)). # Transition Prob matrix
E = matrix(nrow = 2 , c(3/5,0,2/5,1/4,0,3/4)). # Emission Prob matrix
P = matrix(c(0.5,0.5),nrow=1). # Initial Probability state  vector
Q = c ("C","S"). # Hidden states
S = c ("1","2","3") #Observed symbols
hmm_cs = initHMM(Q, S,P,transProbs= A, emissionProbs=E )

# Invole Baum Welch
final_hmm = HMM::baumWelch(hmm_cs, observation = c("3","3","2","1","1","2","1","2","3"),
                           maxIterations=10000,delta=10^-20) 
print(final_hmm$hmm$transProbs)