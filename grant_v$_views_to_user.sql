begin 
  for x in ( select object_name from user_objects where object_type = 'VIEW' and 
    object_name like 'V\_$%' escape '\' ) 
  loop 
    execute immediate 'grant select on ' || x.object_name || ' to scott,hr'; 
  end loop; 
end; 
/ 