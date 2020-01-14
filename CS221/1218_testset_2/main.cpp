#include <iostream>

using namespace std;

int sz=0;
int N;


int bfind(int x, int s, int t, int arr[])
{
	if (s > t) return -1;
	int mid = (s + t) / 2;
	if (arr[mid] == x) return mid;
	if (arr[mid] < x) return bfind(x, mid + 1, t, arr);
	if (arr[mid] > x) return bfind(x, s, mid - 1, arr);
	return -1;
}
void print(int set[])
{
	for (int i = 0; i < sz; ++i)
		cout << set[i] << ' ';
	cout << endl;
}

void swap(int s, int t, int arr[])
{
	int tmp = arr[s];
	arr[s] = arr[t];
	arr[t] = tmp;
}
void qsort(int s, int t, int arr[])
{
	if (s >= t) return;
	int i = s, j = t, mid = arr[(s + t) >> 1];
	while (i <= j) {
		while (arr[i] < mid) ++i;
		while (arr[j] > mid) --j;
		if (i <= j) {
			swap(i, j, arr);
			++i; --j;
		}
	}
	qsort(s, j, arr);
	qsort(i, t, arr);
}

int find(int x, int arr[])
{
	for (int i = 0; i < sz; ++i)
		if (x == arr[i])
			return -1;
	return 1;
}

int main()
{
	int set[10000] ={0};
	bool label[10000] = {0};
	int tmparr[10000] = {0};
	cin >> N;
	char op;
	int opn, tmp;
	for (int i = 0; i < N; ++i) {
		cin >> op;
		cin >> opn;
		if (op == '+')
		{
			for (int i = 0; i < opn; ++i)
			{
				cin >> tmp;
				if (find(tmp, set) == 1)
					set[sz++] = tmp;
			}
			qsort(0, sz - 1, set);
		}
		else if (op == '-')
		{
			for (int i = 0; i < opn; ++i)
			{
				cin >> tmp;
				int cur = bfind(tmp, 0, sz - 1, set);
				if (cur != -1)
				{
					label[cur] = 1;
				}
			}
			int tpos = 0, fsz = sz;
			for (int i = 0; i < fsz; ++i)
			{
				if (label[i] == 1) { sz--; continue; }
				else tmparr[tpos++] = set[i];
			}
			for (int i = 0; i < sz; ++i) set[i] = tmparr[i];
			for (int i = 0; i < fsz; ++i) label[i] = 0;
		}
		else if (op == '*')
		{
			for (int i = 0; i < opn; ++i)
			{
				cin >> tmp;
				int cur = bfind(tmp, 0, sz - 1, set);
				if (cur != -1)
				{
					label[cur] = 1;
				}
			}
			int tpos = 0, fsz = sz;
			for (int i = 0; i < fsz; ++i)
			{
				if (label[i] == 0) { sz--; continue; }
				else if (label[i] == 1) tmparr[tpos++] = set[i];
			}
			for (int i = 0; i < sz; ++i) set[i] = tmparr[i];
			for (int i = 0; i < fsz; ++i) label[i] = 0;
		}
		print(set);
	}
	return 0;
}
