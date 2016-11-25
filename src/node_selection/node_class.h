
#ifndef SBNB_NODE_SELECTION_NODE_CLASS_H_
#define SBNB_NODE_SELECTION_NODE_CLASS_H_

template<class T>
class Node {

public:
    Node(T);

    T content;
};

template<class T>
Node<T>::Node(T content_) {
  this->content = content_;
}

#endif //SBNB_NODE_SELECTION_NODE_CLASS_H_
