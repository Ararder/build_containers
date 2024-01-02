import synapseclient
# This is a shortcut to login
# this should work if you have set the environmental variable
syn = synapseclient.login()
entity = syn.get('syn1899498')