rm -rf main
rm -rf output_images/*.pgm
g++ -o main *.cpp *.h

cat testInput.txt | ./main

if [ -f "output_images/negation.pgm" ]; then
  NEGATION_CHECK=$(diff -b -B output_images/negation.pgm golden_images/negation.pgm)
  if [ "$NEGATION_CHECK" !=  "" ]; then
    echo "IMAGE NEGATION - FAIL"
  else
    echo "IMAGE NEGATION - PASS"
  fi
else
  echo "IMAGE NEGATION - FAIL (MISSING FILE)"
fi

if [ -f "output_images/thresholding.pgm" ]; then
  THRESHOLD_CHECK=$(diff -b -B output_images/thresholding.pgm golden_images/thresholding.pgm)
  if [ "$THRESHOLD_CHECK" !=  "" ]; then
    echo "IMAGE THRESHOLDING - FAIL"
  else
    echo "IMAGE THRESHOLDING - PASS"
  fi
else
  echo "IMAGE THRESHOLDING - FAIL (MISSING FILE)"
fi

if [ -f "output_images/stretching.pgm" ]; then
  STRETCHING_CHECK=$(diff -b -B output_images/stretching.pgm golden_images/stretching.pgm)
  if [ "$STRETCHING_CHECK" !=  "" ]; then
    echo "HISTOGRAM STRETCHING - FAIL"
  else
    echo "HISTOGRAM STRETCHING - PASS"
  fi
else
  echo "HISTOGRAM STRETCHING - FAIL (MISSING FILE)"
fi

if [ -f "output_images/median.pgm" ]; then
  MEDIAN_CHECK=$(diff -b -B output_images/median.pgm golden_images/median.pgm)
  if [ "$MEDIAN_CHECK" !=  "" ]; then
    echo "MEDIAN FILTER - FAIL"
  else
    echo "MEDIAN FILTER - PASS"
  fi
else
  echo "MEDIAN FILTER - FAIL (MISSING FILE)"
fi

if [ -f "output_images/gaussian.pgm" ]; then
  GAUSSIAN_CHECK=$(diff -b -B output_images/gaussian.pgm golden_images/gaussian.pgm)
  if [ "$GAUSSIAN_CHECK" !=  "" ]; then
    echo "GAUSSIAN FILTER - FAIL"
  else
    echo "GAUSSIAN FILTER - PASS"
  fi
else
  echo "GAUSSIAN FILTER - FAIL (MISSING FILE)"
fi
