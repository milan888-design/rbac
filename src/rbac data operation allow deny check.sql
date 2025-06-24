--need to find the object_key for the object you are dealing with
--if the object is listed in the object table then it is under rbac
SELECT object_key
      ,object_description
      ,object_type
      ,object_database
      ,object_table
      ,object_Attribute
      ,object_id
      ,object_value
      ,org_id
  FROM st_object
   where object_type='databasetable'
    and object_database='test_rbac'
	 and object_table='test_table'

--for the current session you need to know if role type is AllowAllDenySpecific or DenyAllAllowSpecific 
select role_key,role_type from st_role;
--"rolekey1"	"AllowAllDenySpecific"
--"rolekey2"	"DenyAllAllowSpecific"

--if the role is allowalldenysome, then, check if you object you have is in deny list for the operation
--if allow_deny ='N' then not allowed
SELECT role_object_key
      ,role_key
      ,object_type
      ,object_key
	  ,data_operation
	  ,allow_deny
      ,active_flag
      ,org_id
  FROM st_role_object_operation
   where role_key='rolekey1'
    and object_key='obj11'
    and data_operation='delete'
--allow_deny = N


--if the role is denyallallowspecific, then
--the answer has to be Y, then allowed else not allowed.	 
SELECT role_object_key
      ,role_key
      ,object_type
      ,object_key
	  ,data_operation
	  ,allow_deny
      ,active_flag
      ,org_id
  FROM st_role_object_operation
   where role_key='rolekey2'
    and object_key='obj11'
    and data_operation='delete'
--allow_deny = N
