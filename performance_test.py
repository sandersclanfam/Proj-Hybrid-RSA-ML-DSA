import os
import subprocess
#import time
from timeit import default_timer as timer



directory_path = "."
files = os.listdir(directory_path)

for file in files:

    file_path = os.path.join(directory_path, file)    
    print(f"\n####### Signing : {file_path}\n")

    file_size = os.path.getsize(file_path)
    print(f'File size : {file_size}')
   
    
    
    start = timer()
    result = os.system(f'./sign {file_path}')   
    result2 = os.system(f'./MLDSA_SIG_GEN_V2 {file_path} ./private_key.sk')   
    end = timer()
    #print('Result RSA :\n',result)
    #print('Result MLDSA :\n',result2)
    print(f'#### Time taken : {round((end - start)*1000,2)}')
