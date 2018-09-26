//
//  main.m
//  ALGExe
//
//  Created by weikeyan on 2018/3/15.
//  Copyright © 2018年 weikeyan. All rights reserved.
//

#import <Foundation/Foundation.h>
//冒泡排序11
void bubleSort(int * arr,int length){
    for (int i = 0 ; i < length-1; i++) {
        for (int j = 0; j < length-i-1; j++) {
            if (arr[j]>arr[j+1]) {
                int temp = arr[j];
                arr[j] = arr[j+1];
                arr[j+1] = temp;
            }
        }
    }
}
//选择排序
void sort(int a[],int length){
    int i, j, index;
    for (i = 0; i<length-1; i++) {
        index = i;
        for (j = i+1; j<length; j++) {
            if (a[index]>a[j]) {
                index = j;
            }
        }
        
        if (index != i) {
            int temp = a[i];
            a[i] = a[index];
            a[index] = temp;
        }
    }
}
//快速排序
void quicklySort(int * a,int left , int right){
    if (left >= right) {
        return;
    }
    int i = left;
    int j = right;
    
    int key = a[left];
    
    while (i<j) {
        while (i<j&&key>=a[j]) {
            j--;
        }
        a[i]=a[j];
        
        while (i<j&&key<=a[i]) {
            i++;
        }
        a[j]=a[i];
    }
    
    a[i]=key;
    quicklySort(a, left, i-1);
    quicklySort(a, i+1, right);
}

//归并排序
void merge(int sourceArr[],int tempArr[], int startIndex, int midIndex,int endIndex){
    int i = startIndex;
    int j = midIndex + 1;
    int k = startIndex;
    
    while (i != midIndex + 1 && j != endIndex + 1) {
        if (sourceArr[i]>=sourceArr[j]) {
            tempArr[k++] = sourceArr[j++];
        }else{
            tempArr[k++] = sourceArr[i++];
        }
    }
    
    while (i!=midIndex+1) {
        tempArr[k++]=sourceArr[i++];
    }
    
    while (j!=endIndex+1) {
        tempArr[k++]=sourceArr[j++];
    }
    
    for (i = startIndex; i<endIndex; i++) {
        sourceArr[i] = tempArr[i];
    }
}

void mergeSort(int souceArr[], int tempArr[], int startIndex, int endIndex) {
    
    int midIndex;
    
    if (startIndex < endIndex) {
        
        midIndex = (startIndex + endIndex) / 2;
        
        mergeSort(souceArr, tempArr, startIndex, midIndex);
        
        mergeSort(souceArr, tempArr, midIndex + 1, endIndex);
        
        merge(souceArr, tempArr, startIndex, midIndex, endIndex);
        
    }
    
}


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        
        
        int numArr[10] = {86, 37, 56, 29, 92, 73, 15, 63, 30, 8};
        
        int tempArr[10];
        
        mergesort(numArr, tempArr, 0, 9);
        
        for (int i = 0; i < 10; i++) {
            
            printf("%d, ", numArr[i]);
            
        }
        
        printf("\n");
        
    }
    return 0;
}
