//
//  main.cpp
//  cplus
//
//  Created by Xin Qin on 11/23/16.
//  Copyright © 2016 Xin Qin. All rights reserved.
//

#include <iostream>

void selectionSort(int arr[], int n) {
    for (int i = 0; i < n; i++) {
        int minIndex = i;
        
        for (int j = i + 1; j < n; j++) {
            if(arr[j] < arr[minIndex]) {
                minIndex = j;
            }
        }
        
        std::swap(arr[i], arr[minIndex]);
    }
}

void insertSort(int arr[], int n) {
    for (int i = 1; i < n; i++) {
        
        int temp = arr[i];
        int j;
        
        for (j = i; j > 0 && arr[j - 1] > temp; j--) {
            arr[j] = arr[j - 1];
        }
        
        arr[j] = temp;
        
    }
}

int main(int argc, const char * argv[]) {
    // insert code here...
    int arr[] = {2,4,6,32,1,47,98,3};
    
    insertSort(arr, 8);
    
    for(int i = 0; i < 8; i++)
    std::cout<<arr[i]<<" ";
    std::cout<<std::endl;
    
    return 0;
}
