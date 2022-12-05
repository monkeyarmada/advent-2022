BEGIN { RS=""; max=0;}
{ 
    sum=0;
    for (i=1; i<=NF; i++)
        sum+=$i;
    if(sum>max) 
        max=sum;
}
END {
    print max;
}