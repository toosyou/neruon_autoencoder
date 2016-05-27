#include <iostream>
#include <stdlib.h>
#include <string>
#include "Brain.h"

#define NDB_PATH "/Users/toosyou/ext/Research/neuron_data/Removed20_lineset140508.ndb"

int main(void){
	Brain sample(NDB_PATH);

	cout << sample.size() <<endl;

	int max_size_vertices = -1;
	for(int i=0;i<sample.size();++i){
		max_size_vertices = max( sample[i].size_vertices(), max_size_vertices );
	}
	cout << max_size_vertices <<endl;
	return 0;
}
