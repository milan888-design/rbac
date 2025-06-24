--for the current session, it is necessary to know if role type is AllowAllDenySpecific or DenyAllAllowSpecific
--roles are assigned to a user. User may pick one of those roles. 
--The followin SQL to find role_type for a user for the selected role
SELECT st_role_user.user_key, st_role_user.role_key,st_role.role_type
 FROM st_role_user,st_role
  WHERE
   st_role.role_key=st_role_user.role_key
    and st_role_user.user_key='demomanager4'
	and st_role_user.role_key='rolekey1'
	
--to list role type for role_key
select role_key,role_type from st_role;
--"rolekey1"	"AllowAllDenySpecific"
--"rolekey2"	"DenyAllAllowSpecific"

--the main purpose of role to put in two types: AllowAllDenySpecific and DenyAllAllowSpecific
--For super user or admin roles, role type should be AllowAllDenySpecific,
--thus, you only need to maintain what is not allowed. 
--This should be very small list since admin is allowed to have most objects with most data operations.

--For all non super users, role type should be DenyAllAllowSpecific.
--thus, you only need to maintain what is allowed, everything else is not allowed.
--This should be the list that is allowed for the user


--need to find the object_key in the rbac object table for the object you are dealing with
--if the object is listed in the object table then it is under rbac.
--if the object is not listed, then, it should be listed
--or decide to let the user access the object and perform the data operation 
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


--if the role is AllowAllDenySpecific, then, check if you object you have is in deny list for the operation
--role key, object key and operation name are needed to find the allow_deny flag. N means not allowed
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


 
--if the role is DenyAllAllowSpecific, then,
--check if you object you have is in allow list for the operation
--role key, object key and operation name are needed to find the allow_deny flag. Y means not allowed
--if allow_deny ='Y' then allowed
--the following query is same as one for 
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
