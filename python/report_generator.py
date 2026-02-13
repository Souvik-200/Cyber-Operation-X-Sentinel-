import json
from datetime import datetime

with open("logs/final_risk.json") as f:
    risk = json.load(f)

report_name = f"reports/report_{datetime.now().strftime('%Y%m%d_%H%M%S')}.txt"

with open(report_name, "w") as f:
    f.write("Cyber Operation-X Sentinel Report\n")
    f.write("----------------------------------\n")
    f.write(f"Risk Score: {risk['risk_score']}\n")
    f.write(f"Severity: {risk['severity']}\n")

print("Report Generated:", report_name)
