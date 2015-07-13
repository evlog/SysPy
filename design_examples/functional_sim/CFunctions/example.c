/* File : example.c */
 
 #include <time.h>
 double My_variable = 3.0;
 
 int fact(int n) {
     if (n <= 1) return 1;
     else return n*fact(n-1);
 }
 
 int my_mod(int x, int y) {
     printf("vagelas");
     return (x%y);
 }
 	
 char *get_time()
 {
     time_t ltime;
     time(&ltime);
     return ctime(&ltime);
 }

double hamming_win(int N, int coeff_pos, double fc, double fs) {
     //printf("%f", fs);
     int i, M, counter;
     double fir_coeff[N], hamming_win[N], ft, pi;
     
     // pi number constant
     pi = 3.141592653589793;
     
     // Normalized frequency
     ft = fc / fs;
     
     M = N - 1;

     for(i = 0; i <= (M / 2); ++i) {
       if (i == (M / 2)) 
         fir_coeff[i] = 2.0 * ft;
       else
         fir_coeff[i] = (sin(2.0 * pi * ft * ((double)i - (double)M / 2.0))) / (pi * ((double)i - (double)M / 2.0));
         
       hamming_win[i] = 0.54 - 0.46 * cos((2 * pi * (double)i) / (double)M);
       
       fir_coeff[i] = fir_coeff[i] * hamming_win[i];
       
     }
     
     counter = M / 2;
     for(i = (M / 2); i < N; ++i) {
       fir_coeff[i] = fir_coeff[counter];
       counter--;
     }
     
     //for(i = 0; i < N; ++i) 
      // printf("#%f\n", fir_coeff[i]);
     //printf("%f", (double)N * 2);
     
     return fir_coeff[coeff_pos];
     
 }


