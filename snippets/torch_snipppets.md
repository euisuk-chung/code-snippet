# pytorch import 모음
```python
import torch
import torchvision
import torch.nn as nn # neural network 모음. (e.g. nn.Linear, nn.Conv2d, BatchNorm, Loss functions 등등)
import torch.optim as optim # Optimization algorithm 모음, (e.g. SGD, Adam, 등등)
import torch.nn.functional as F # 파라미터가 필요없는 Function 모음
from torch.utils.data import DataLoader # 데이터 세트 관리 및 미니 배치 생성을 위한 함수 모음
import torchvision.datasets as datasets # 표준 데이터 세트 모음
import torchvision.transforms as transforms # 데이터 세트에 적용 할 수있는 변환 관련 함수 모음
from torch.utils.tensorboard import SummaryWriter # tensorboard에 출력하기 위한 함수 모음
import torch.backends.cudnn as cudnn # cudnn을 다루기 위한 값 모음
from torchsummary import summary # summary를 통한 model의 현황을 확인 하기 위함
import torch.onnx # model을 onnx 로 변환하기 위함
```

# pytorch seed 고정코드
```
# pytorch 내부적으로 사용하는 seed 값 설정
torch.manual_seed(seed)

# cuda를 사용할 경우 pytorch 내부적으로 사용하는 seed 값 설정
torch.cuda.manual_seed(seed)
```

# GPU 셋팅 관련 코드
```
# cuda가 사용 가능한 지 확인
torch.cuda.is_available()

# cuda가 사용 가능하면 device에 "cuda"를 저장하고 사용 가능하지 않으면 "cpu"를 저장한다.
device = torch.device("cuda" if torch.cuda.is_available() else "cpu")

# 멀티 GPU 사용 시 사용 가능한 GPU 셋팅 관련
# 아래 코드의 "0,1,2"는 GPU가 3개 있고 그 번호가 0, 1, 2 인 상황의 예제입니다.
# 만약 GPU가 5개이고 사용 가능한 것이 0, 3, 4 라면 "0,3,4" 라고 적으면 됩니다.
os.environ["CUDA_VISIBLE_DEVICES"] = "0,1,2"

# 현재 PC의 사용가능한 GPU 사용 갯수 확인
torch.cuda.device_count()

# 사용 가능한 device 갯수에 맞춰서 0번 부터 GPU 할당
os.environ["CUDA_VISIBLE_DEVICES"] = ",".join(list(map(str, list(range(torch.cuda.device_count())))))

# 실제 사용할 GPU만 선택하려면 아래와 같이 입력하면 됩니다. (예시)
os.environ["CUDA_VISIBLE_DEVICES"] = "1, 4, 6"

# cudnn을 사용하도록 설정. GPU를 사용하고 있으면 기본값은 True 입니다.
import torch.backends.cudnn as cudnn
cudnn.enabled = True

# inbuilt cudnn auto-tuner가 사용 중인 hardware에 가장 적합한 알고리즘을 선택하도록 허용합니다.
cudnn.benchmark = True
```

