import os
import subprocess
#import time
from timeit import default_timer as timer



#directory_path = "./files"
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
    #result = os.system(f'./sign {file_path}')    
    #result = os.system(f'./sign {file_path}') 
    result2 = os.system(f'./MLDSA_SIG_GEN_V2 {file_path} ./private_key.sk')  
    end = timer()
    print(f'#### Time taken to sign : {round((end - start)*1000,2)}')

    print(f"\n####### Verifying : {file_path}\n")
    #os.system(f'cp signature.bin ./signatures/{file_path}_signature.bin')  
    #os.system(f'cp signature.bin ./signatures/{file_path}_signature.sig')  
    #print(result)
    start1 = timer()
    #result3 = os.system(f'./rsa_verify {file_path}') 
    result4 = os.system(f'./MLDSA_SIG_VERIFY {file_path} ./signature.sig ./public_key.pk')  
    end1 = timer()
    print(f'#### Time taken to verify: {round((end1 - start1)*1000,2)}')

os.system('rm signature.bin signature.sig')

'''
print("#################### Verifying Signatures #########################")
for sign in signatures:
    sig_path = os.path.join(, sign)    
    print(f"\n####### Verifying Sign : {sig_path}\n")
    #file_size = os.path.getsize(file_path)
    #print(f'File size : {file_size}')
    start = timer()
    result3 = os.system(f'./rsa_verify {sig_path}') 
    result4 = os.system(f'./MLDSA_SIG_VERIFY {sig_path} ./public_key.pk')  
    end = timer()
    #os.system(f'cp signature.bin {file_path}_signature.bin')  
    #os.system(f'cp signature.bin {file_path}_signature.sig')  
    #print(result)
    print(f'#### Time taken for verifying: {round((end - start)*1000,2)}')
'''
