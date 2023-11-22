# Retrieve ids for FlyBase terms

def all_terms():
    with open("dmel-all-translation-r6.54.fasta", "r") as f:
        all_lines = f.readlines()
    headers = []
    for line in all_lines:
        line = line.strip("\n")
        if line[0] == ">":
            components = line.split(";")
            current = {}
            # Required Fields
            current[components[2][1:3]] = components[2][4:]
            current[components[3][1:5]] = components[3][6:]
            attr = components[5].split(",")
            for item in attr:
                if item[:7] == "UniProt":
                    current[item[:7]] = item[-6:]
                    break
            headers.append(current)
    return headers
