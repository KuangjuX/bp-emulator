m1 		     	     := 10
bimodal_file 	     := traces/gcc_trace.txt
bimodal_output_file  := bimodal_2.txt

m2 		     	     := 14
n            		 := 9
gshare_file  	     := traces/gcc_trace.txt
gshare_output_file   := gshare_2.txt

diff_file		 	 := gshare_3.txt 
validation_file		 := validation/val_gshare_3.txt


.PHONY: clean sim_bimodal sim_gshare

sim_bimodal:
	@cargo run --bin bimodal $(m1) $(bimodal_file) $(bimodal_output_file)

sim_gshare:
	@cargo run --bin gshare $(m2) $(n) $(gshare_file) $(gshare_output_file)

diff:
	@diff -iw $(diff_file) $(validation_file)

clean:
	@cargo clean
	@rm *.txt