# rbac  
# Role Based Access Control (RBAC)  

Problem: Not everyone in your company should have the same level of access to all data. Sensitive information, whether it's personal employee details or confidential company data, needs to be protected with role-based permissions.  

Solution: To address the data access problem, you should implement role-based access control (RBAC). This involves defining specific roles, either within individual applications or company-wide, and assigning access permissions based on those roles. RBAC concepts and software have been well-established for over two decades, making now the opportune time to put a suitable system in place.  

For comprehensive education and expert consultation on implementing role-based access control, you can turn to DataJoin.net. DataJoin offer in-depth training to help you understand and effectively apply RBAC principles.  

https://github.com/milan888-design/rbac  

## Flowchart - Role Based Access Control setup 
```mermaid  
flowchart TD   
    A[user] -->|associated with| E[user and role association]  
    B[role] -->|associated with| E[user and role association]  
    B[role] -->|associated with| F[object and access]  
    C[object] -->|associated with| F[object and access]  
```  
## Flowchart - Users, roles and objects are by organization
```mermaid  
flowchart TD   
    A[user] -->|associated with| D[organization]  
    B[role] -->|associated with| D[organization] 
    C[object] -->|associated with| D[organization]   
```  
  
## Flowchart  Role Based Access Control process  
```mermaid  
flowchart TD  
    A[user] -->|authenticates at| B[authentication service]  
    B[authentication service] -->|makes| G[authenticated user]  
    G[authenticated user] -->|picks a| C[organization]  
    G[authenticated user] -->|with a role, organization requests| E[object access]
    E[object access] -->|checks with| F{RBAC service}  
    F -->|allow| I[object access granted]  
    F -->|not allow| H[object access denied]  
```  
  
object: webpage, report, database table, row, attribute value   