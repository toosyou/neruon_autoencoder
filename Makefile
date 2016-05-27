CXX = g++-5
FLYLIB_FLAGS = -IFlyLIB/ -LFlyLIB/lib/ -lFly
PROGRESSBAR_FLAGS = -LFlyLIB/progressbar/ -lprogressbar -lncurses
CXXFLAGS = $(FLYLIB_FLAGS) $(PROGRESSBAR_FLAGS)

all: vertex_interpolation.cpp FlyLIB/lib/libFly.a
	$(CXX) $(CXXFLAGS) vertex_interpolation.cpp -o vertex_interpolation

FlyLIB/lib/libFly.a:
	make -C FlyLIB
