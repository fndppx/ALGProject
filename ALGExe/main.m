//
//  main.m
//  ALGExe
//
//  Created by weikeyan on 2018/3/15.
//  Copyright © 2018年 weikeyan. All rights reserved.
//

#import <Foundation/Foundation.h>
//冒泡排序
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



int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        
        
        int array[] = {1,3,4,2};
        bubleSort(array, 4);
        
    }
    return 0;
}
