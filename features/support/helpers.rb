

def random_string(length=6)
        chars = 'abcdefghjkmnpqrstuvwxyzABCDEFGHJKLMNPQRSTUVWXYZ'
        string = ''
        length.times { string << chars[rand(chars.size)] }
        string
end