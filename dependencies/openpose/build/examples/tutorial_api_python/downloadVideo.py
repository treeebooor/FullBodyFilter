from pytube import YouTube 
 

def download(link, save_path):    
    '''
    download videos from youtube given the links and save path
    '''
    for i in link: 
        print("Downloading video ", i)
        try: 
            
            # object creation using YouTube
            # which was imported in the beginning 
            yt = YouTube(i) 
        except: 
            
            #to handle exception 
            print("Connection Error") 
        stream=yt.streams.first()
        try:
            stream.download(SAVE_PATH)
        except:
            print("Download Error")
        print("Downloading Finished")