Working with Tags
---------------

Tags can be used to put access restrictions on specific keys. For example: 

User *JaneUser*::

	{
	  "realName": "Jane User",
	  "role": "Operator"
	  "tags": [ "berlin" , "frankfurt" ]
	}

Key *mykey*::

		{
	  "mechanisms": [
	    "RSA_Signature_PSS_SHA256"
	  ],
	  "restrictions": {
	      "userTag": "berlin"
	  }
	  "type": "RSA",
	  "key": {
	    "modulus": "FhJQl11CiY0ifRHXeAqFh4rdSl6",
	    "publicExponent": "FhJQl11CiY0ifRHXeAqFh4rdSl6"
	  },
	  "operations": 242
	}


Tags are managed by Administrator users:

- Keys can be subject to a restriction list: a set of tags in which one of them need to be matched for the key to be used.
- Operator users get assigned a set of tags enabling them the use of the corresponding keys. It can be read but not modified by the user.
- Restrictions are validated when using a key, in which case the defined usertag has to match one of the calling user's tags.
- Only administators can set tags in user profiles.
- Tags are simple strings and all administators can set tags without restrictions.
- Every operator can see all keys, also those with foreign tags (but they can't use it).
- Tags are optional.
- (In the future, restrictions could be extended with more condition types, e.g allowed time frame.)

