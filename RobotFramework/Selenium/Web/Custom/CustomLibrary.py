from bs4 import BeautifulSoup
import requests

class HTMLRetriever:
    def __init__(self):
        pass
    
    #retrieve the html contents of a website
    def retrieve_html_contents(self, url:str):
        response = requests.get(url)
        if response.status_code == 200:
            soup = BeautifulSoup(response.content, "html.parser")
            return soup.prettify()
        else:
            return f"Code Error {response.status_code}"
    
    #Clears all content before writing the file
    def output_txt_file(self, text, filepath="html_file.txt") -> None:
        with open(filepath, "w") as file:
            file.write(text)


###DEBUGGING###
web_parser = HTMLRetriever()
url = "https://practice.expandtesting.com/"
if __name__ == "__main__":
    output = web_parser.retrieve_html_contents(url)
    web_parser.output_txt_file(text=output)
