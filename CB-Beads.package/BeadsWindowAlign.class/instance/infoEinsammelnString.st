interface building
infoEinsammelnString
| cont fl|

fl:=self morph submorphs size.

cont:=(fl asString,'=',(self fensterBreiteInPerlen) asString,'*',(fl/(self fensterBreiteInPerlen)) asString).
^cont.

