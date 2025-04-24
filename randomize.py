import yaml
import random

with open("questions.yml", "r") as f:
    data = yaml.safe_load(f)

for i in range(1, 5):
    random.shuffle(data)
    with open(f"variation_{i}.yaml", "w") as out:
        yaml.dump(data, out)
