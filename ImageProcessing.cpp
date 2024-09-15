#include "ImageProcessing.h"
#include <iostream>

using namespace std;

void copyImage(int **oData, int **rData, int height, int width) {
  for (int j=0; j<height; j++) {
    for (int k=0; k<width; k++) {
      rData[j][k] = oData[j][k];
    }
  }
}

void imgNegation(int **oData, int **rData, int height, int width) {
  // TODO: write your code
}

void thresholding(int **oData, int **rData, int height, int width) {
  // TODO: write your code
}

void histogramStretching(int **oData, int **rData, int height, int width) {
  // TODO: write your code
}

void medianFilter(int **oData, int **rData, int height, int width) {
  // TODO: write your code
}

void gaussianFilter(int **oData, int **rData, int height, int width) {
  // 7x7 Gaussian filter window (you must divide the convolution result by 1003 at last)
  int gauss[7][7] = {{0,  0,  1,   2,  1,  0, 0},      
                     {0,  3, 13,  22, 13,  3, 0},
                     {1, 13, 59,  97, 59, 13, 1}, 
                     {2, 22, 97, 159, 97, 22, 2},
                     {1, 13, 59,  97, 59, 13, 1}, 
                     {0,  3, 13,  22, 13,  3, 0},
                     {0,  0,  1,   2,  1,  0, 0}};
	
  // TODO: write your code
}
