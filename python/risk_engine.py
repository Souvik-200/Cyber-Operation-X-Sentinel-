import json
import sys

file_path = sys.argv[1]

alerts = {
    "process": 0,
    "network": 0,
    "auth": 0,
    "persistence": 0
}

with open(file_path, "r") as f:
    lines = f.readlines()

for line in lines:
    try:
        data = json.loads(line)
        for key in data:
            if data[key] == 1:
                alerts[key] = 1
    except:
        pass

risk_score = sum(alerts.values()) * 25

if risk_score >= 75:
    severity = "CRITICAL"
elif risk_score >= 50:
    severity = "HIGH"
elif risk_score >= 25:
    severity = "MEDIUM"
else:
    severity = "LOW"

output = {
    "risk_score": risk_score,
    "severity": severity
}

with open("logs/final_risk.json", "w") as f:
    json.dump(output, f, indent=4)

print("Risk Score:", risk_score)
print("Severity:", severity)
