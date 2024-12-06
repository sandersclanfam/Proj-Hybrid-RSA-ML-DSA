import os
import subprocess
#import time
from timeit import default_timer as timer

directory_path = "."
files = os.listdir(directory_path)
os.system('mkdir signatures')
signatures = os.listdir('./signatures')
for file in files:

    file_path = os.path.join(directory_path, file)    
    print(f"\n####### Signing : {file_path}\n")
    file_size = os.path.getsize(file_path)
    print(f'File size : {file_size}')
    start = timer()
    result = os.system(f'./sign {file_path}') #Comment or uncomment the result* variable lines as you need to test RSA, MLSDA signing time or both together.
    result2 = os.system(f'./MLDSA_SIG_GEN_V2 {file_path} ./private_key.sk')  
    end = timer()
    print(f'#### Time taken to sign : {round((end - start)*1000,2)}')

    print(f"\n####### Verifying : {file_path}\n")
    start1 = timer()
    result3 = os.system(f'./rsa_verify {file_path}') #Comment or uncomment the result* variable lines as you need to test RSA, MLSDA sign verification time or both together.
    result4 = os.system(f'./MLDSA_SIG_VERIFY {file_path} ./signature.sig ./public_key.pk')  
    end1 = timer()
    print(f'#### Time taken to verify: {round((end1 - start1)*1000,2)}')

os.system('rm signature.bin signature.sig')
