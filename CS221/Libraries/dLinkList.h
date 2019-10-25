#ifndef DLINKLIST_H_INCLUDED
#define DLINKLIST_H_INCLUDED
template <class elemType>
class dLinkList: public list<elemType>
{  private:
       struct node {
            elemType  data;
	       node *prev, *next; 
	       node(const elemType &x, node *p = NULL, node *n = NULL)
                   { data = x; next = n; prev = p;}
	       node( ):next(NULL), prev(NULL) {}
	       ~node() {}
	   };
 
        node  *head, *tail;
	    int currentLength;
	    node *move(int i) const;

public:
       dLinkList() ;
       ~dLinkList() {clear(); delete head; delete tail;}
 
       void clear() ;
       int length() const {return currentLength;}
       void insert(int i, const elemType &x);
       void remove(int i);
       int search(const elemType &x) const  ;
       elemType visit(int i) const;
       void traverse() const ;
};
template <class elemType>
dLinkList<elemType>::dLinkList()
{
    head = new node;
	head->next = tail = new node;
	tail->prev = head;
	currentLength = 0;
}
template <class elemType>
void dLinkList<elemType>::insert(int i, const elemType &x)
{
    node *pos, *tmp;
 
    pos = move(i);
    tmp = new node(x, prs->prev, pos);
    pos->prev->next = tmp;
    pos->prev = tmp;
 
    ++currentLength;
}
template <class elemType>
void dLinkList<elemType>::remove(int i)
{
    node *pos;
 
    pos = move(i);
    pos->prev->next = pos->next;
    pos->next->prev = pos->prev
 
    delete pos;
    --currentLength;
}


#endif // DLINKLIST_H_INCLUDED
