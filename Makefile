
cc=g++
del=rm -rf

target=output


cflags=-g -c -std=c++0x  -I.
lflags=-lrdkafka

objs=\
	 kafka_client.cpp


all:$(objs) 
	$(cc) $(objs) -o $(target)  $(lflags)


%.o:%.cpp
	$(cc) $(cflags) -o $@ $<


clean:
	$(del) $(objs)
	$(del) $(target)
