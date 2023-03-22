# import regular expression
import re

# file objects
# open novel text file in read mode
with open('novel.txt', 'r', encoding="utf8") as rf:
    # open/create uniquewords text file in write mode
    uw = open('uniquewords.txt', 'w')
    
    # create a dictionary for the unique words and frequency
    word_dict = {}
    
    # open/create allwords text file in write mode
    
    with open('allwords.txt', 'w', encoding="utf8") as wf:
        
        # reading each line of text file
        for line in rf:
            
            # convert line to lowercase
            line = line.lower()
            
            # specify only alphabetic characters
            regex = '[a-z]+'
            
            # use regular expression "findall" and provide the pattern '[a-z]+'
            # to extract only alphabetic characters/get only alphabetic characters
            # from line and store in 'match' array
            match = re.findall(regex, line)
            
            # reading each word in array; array is made of only alphabetic characters from line
            for word in match:
                
                # Add word to dictionary if it's not already there
                if word not in word_dict.keys():
                    word_dict[word] = 1
                
                else:
                    word_dict[word] += 1
                
                # write each word to output file "allwords.txt" and create new line after
                wf.write(word + '\n')
        
        # open word frequency file
        wf = open('wordfrequency.txt', 'w')
        
        # create a freq dict
        freq_dict = {}
        
        for i in word_dict.keys():
            if word_dict[i] == 1:
                # if word not in word_dict keys, add to unique txt
                
                uw.write(i + '\n')
        
        for i in word_dict.values():
            if i not in freq_dict:
                freq_dict[i] = 1
            else:
                freq_dict[i] += 1
        
        for j in sorted(freq_dict.keys()):
            wf.write(str(j) + ":" + str(freq_dict[j]) + '\n')
    
    wf.close()
    uw.close()
    wf.close()
