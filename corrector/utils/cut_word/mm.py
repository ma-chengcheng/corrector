
def mm(word_dict, text):
    result = list()
    max_length = 
    return result

def mm(word_dict, token, window_size=5):
    idxs = []
    result = []
    index = 0
    text_size = len(token)
    #print(token)
    while text_size > index:
        for size in range(window_size + index, index, -1):
            #print(size,window_size,index)  #10 10 0 蓬配奥称如朝鲜迅速弃; 9 10 0 蓬配奥称如朝鲜迅速
            piece = token[index:size]
            #print(piece)
            if piece in word_dict:
                index = size - 1
                idxs.append(index-len(piece)+1)
                result.append(piece)
                break
        index = index + 1
    #print(idxs,result)
    return idxs, result
