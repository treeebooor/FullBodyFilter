import sys

from pytube import YouTube 
 

def download(link, save_path):    
    '''
    download videos from youtube

    Args:
        youtube link
        path to save video
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

        #get the highest resolution mp4 stream
        stream = yt.streams.filter(file_extension='mp4').order_by('resolution').last()
        try:
            stream.download(save_path)
        except:
            print("Download Error")
        print("Downloading Finished")


