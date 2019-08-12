main: main.cpp httpServer.o
	g++ main.cpp httpServer.cpp -lpthread -o main