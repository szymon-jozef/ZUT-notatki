#import <iostream>

struct One_way_list {
  int value;
  One_way_list *next;
  One_way_list(int val, One_way_list *nxt) : value(val), next(nxt) {}
};

int main() {
  One_way_list *node3 = new One_way_list(30, nullptr);
  One_way_list *node2 = new One_way_list(20, node3);
  One_way_list *node1 = new One_way_list(10, node2);

  for (One_way_list *i = node1; i != nullptr; i = i->next) {
    std::cout << i->value << std::endl;
  }
}
