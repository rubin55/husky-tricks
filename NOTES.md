secmgr flow

1 check for config file. if not exist, init mode else read and continue
2 in init mode, check for gpg and ssh setup
3 create or reference gpg config
4 create or reference ssh config
5 set up gpg and or ssh agent
6 create or open private data store
7 create or open shared data stores
8 write out config, continue
9 implement list local gpg private key(s) public key(s)
9 implement list local ssh private key(s) pubkic key(s)
9 implement list constant/enums: supported credential types: system, sshkey, postgres, etc, supported roles: user, admin, etc?
9 implement list stores, credentials
A implement search, with optional smart flattening, allowing * for type and hostname, ipaddress
B implement create/update/delete credentials

{
    "private": [
        {
            "id": 1,
            "type": "system",
            "roles": ["admin"],
            "subject": "foohost",
            "principal": "someuser",
            "payload": "base64encoded string"
        },
            {
            "id": 2,
            "type": "postgres",
            "roles": ["user"],
            "subject": "192.168.1.3",
            "principal": "tumdidum",
            "payload": "base64encoded string"
        }
    ]
}

-h help
-v version
-d debug
-c configure
-l list
-s search
-a add
-m modify
-r remove


