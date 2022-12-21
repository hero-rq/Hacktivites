#include <iostream>
#include <string>
#include <vector>

#include <torch/torch.h>
#include <torch/script.h>

using namespace std;

torch::Tensor Normalize(torch::Tensor x) {
x = x.div(255);
x = x.sub(0.5).div(0.5);
return x;
}

int main() {
auto trainset = torch::data::datasets::MNIST("PATH_TO_STORE_TRAINSET")
.map(Normalize);
auto train_loader =
torch::data::make_data_loadertorch::data::samplers::SequentialSampler(
std::move(trainset), /batch_size=/64);

class Net : public torch::nn::Module {
public:
Net() {
conv1 = register_module("conv1", torch::nn::Conv2d(1, 10, 5));
conv2 = register_module("conv2", torch::nn::Conv2d(10, 20, 5));
fc1 = register_module("fc1", torch::nn::Linear(320, 50));
fc2 = register_module("fc2", torch::nn::Linear(50, 10));
}

Copy code
torch::Tensor forward(torch::Tensor x) {
  x = torch::relu(torch::max_pool2d(conv1->forward(x), 2));
  x = torch::relu(torch::max_pool2d(conv2->forward(x), 2));
  x = x.view({-1, 320});
  x = torch::relu(fc1->forward(x));
  x = fc2->forward(x);
  return torch::log_softmax(x, /*dim=*/1);
}
private:
torch::nn::Conv2d conv1;
torch::nn::Conv2d conv2;
torch::nn::Linear fc1;
torch::nn::Linear fc2;
};

Net model;
model.eval();

torch::load(model, "lenet_mnist_model.pt");

auto test_set = torch::data::datasets::MNIST("../data", /train=/false, /download=/true)
.map(Normalize);
auto test_loader =
torch::data::make_data_loadertorch::data::samplers::SequentialSampler(
std::move(test_set), /batch_size=/1);

torch::Device device(torch::kCUDA);
if (!torch::cuda::is_available()) {
device = torch::kCPU;
}

model.to(device);
