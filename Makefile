CXX = g++-5
CXXFLAGS = -IFlyLIB/ -LFlyLIB/lib/ -lFly

all: vertex_interpolation.cpp FlyLIB/Makefile
	$(CXX) $(CXXFLAGS) vertex_interpolation.cpp -o vertex_interpolation

FlyLIB/Makefile:
	cd FlyLIB ;\
	make;