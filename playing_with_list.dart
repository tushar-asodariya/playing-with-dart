void main() {
  List<int> numList = [];
   numList = insert(numList,500,1);
  numList = insert(numList,4,5);
   numList = insert(numList,3,5);
  numList = insert(numList,2,5);
   numList = insert(numList,220,6);
   numList = insert(numList,99,5);
  numList = insert(numList,101,4);
  print(numList);
  numList = insert(numList,1,3);
print(numList);
 
  print(search(numList,1));
  print(delete(numList,4));
  print(maxNumber(numList));
  
  print(chkSorted([1,2,3,4,5]));
  print(find2ndLargest(numList));
  print(reverseTheList(numList));
  
}


reverseTheList(List numList){
  List<int> tempList = [];
  for(var i = numList.length-1;i>=0;i--){
    tempList.add(numList[i]);
  }
  return tempList;
}

find2ndLargest(List numList){
  int max=numList[0];
  int max2 = 0;
  for(var i=1;i<numList.length;i++){
    if(numList[i]>max){
       max2=max;
      max = numList[i];
     
    }
    else if(numList[i]>max2 && numList[i]<max){
      max2 = numList[i];
    }
  }
  return max2;
}

chkSorted(List numList){
  String str = 'unsorted';
  for(var i =0;i<numList.length;i++){
    if(i+2<numList.length){
      if(numList[i]>numList[i+1]){
        if(numList[i+1]>numList[i+2]){
          str = 'sorted';
        }
        else{
          str = 'unsorted';
        }
      }
      else if(numList[i]<numList[i+1]){
        if(numList[i+1]<numList[i+2]){
          str = 'sorted';
        }
        else{
          str = 'unsorted';
        }
      }
    }
  }
  return str;
}

maxNumber(List numList){
  int max=numList[0];
  for(var i=0;i<numList.length;i++){
    if(numList[i]>max)
      max = numList[i];
  }
  
  return max;
}

delete(List numList, int value){
  List<int> tempList =[];
  for(var i=0; i<numList.length;i++){
    if(numList[i]!=value)
      tempList.add(numList[i]);
  }
  
  return tempList;
}


search(List numList, int value){
  for(var i=0;i<numList.length;i++){
    if(numList[i]==value)
      return i+1;
  }
  return -1;
}

insert(List numList, int value, int pos){
  
  if(numList.length ==0 || pos>numList.length)
  { 
    numList.add(value);
  }
  else if(pos-1 == 0){
    List<int> tempList = [value];
    for(var i=0;i<numList.length;i++){
      tempList.add(numList[i]);
    }
   
    return tempList;
  }else{
    List<int> tempList =[];
    for(var i=0; i<numList.length;i++){
      if(i==pos-1){
        tempList.add(value);
        
      }
      tempList.add(numList[i]);
    }
    return tempList;
  }
  
   return numList;
  
  
}
