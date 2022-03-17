class ProgressBar{
public:
    ProgressBar();
    ~ProgressBar() {};
    void print_bar(float x);
private:
    char bar[102];
    char lable[6];
};
