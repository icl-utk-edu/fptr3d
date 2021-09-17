# -*- makefile -*-

CFLAGS = -std=c99
FC = gfortran
FFLAGS = -ffree-form -std=f2003 -pedantic

LINK.o = $(FC) $(FFLAGS) $(TARGET_ARCH)

%.o : %.f03
	$(FC) $(FFLAGS) $(TARGET_ARCH) -c $<

ptr3d: ptr3d.o cmod.o

clean:
	rm -f *.o ptr3d

.PHONY: clean
