#include <mpi.h>
#include <vector>
#include <random>
#include <string>
#include <algorithm>
#include <vector>
#include <cstdlib>
#include <ctime>
#include <iostream>
#include ".\..\bourmistrova_e_matrix_elem_sum\mpi_fun.h"


std::vector<int> getRandomMatrix(int sz2, int sz1) {
	std::mt19937 gener;
	gener.seed(static_cast<unsigned int>(time(0)));
	std::vector<int> matr(sz2*sz1);
	for (int i = 0; i < sz2; i++)
	{
		for (int j = 0; j < sz1; j++)
			matr[i*sz1+j] = gener() % 100;
	}
	return matr;
}

int Sequential_method(std::vector<int> vect)
{
	int siz = vect.size();
	int sum = 0;
	for (int i = 0; i < siz; i++)
		sum += vect[i];
	return sum;
}
int Parallel_method(std::vector<int> matr, int n_lin, int n_col)
{
	int mynode, totnodes;
	int par_sum, inter;

	MPI_Status status;

	MPI_Comm_size(MPI_COMM_WORLD, &totnodes);
	MPI_Comm_rank(MPI_COMM_WORLD, &mynode);
	par_sum = 0; // zero sum for accumulation
	const int delta = (n_lin*n_col) / totnodes;

	if (mynode == 0)
	{
		for (int proc = 1; proc < totnodes; proc++) {
			MPI_Send(&matr[0] + proc * delta, delta,
				MPI_INT, proc, 0, MPI_COMM_WORLD);
		}
	}
	std::vector<int> local_vec(delta);
	if (mynode == 0) {
		local_vec = std::vector<int>(matr.begin(),
			matr.begin() + delta);
	}
	else {
		MPI_Recv(&local_vec[0], delta, MPI_INT, 0, 0, MPI_COMM_WORLD, &status);
	}
	inter = Sequential_method(local_vec);
	MPI_Reduce(&inter, &par_sum, 1, MPI_INT, MPI_SUM, 0, MPI_COMM_WORLD);
	return par_sum;
}