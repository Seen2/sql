merge into oldTable using newTable on(oldTable.data=newTable.data)
when matched
  update set oldTable.data1=new Table.data1
when not matched
  insert(data,data1)
  values(newTable.data,newTable.data1);
