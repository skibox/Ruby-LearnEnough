def palindrome?(string)
    string_downcase = string.downcase
    string_downcase == string_downcase.reverse
end

def email_parts(email)
    email.downcase.split('@')
end