import os
import re
import json

def getCompHardwareReqs(useCasePath):
    """
        Open json file that contains problem configurations and fills problem data
        :param useCasePath:
        :return list with hardware reqs for each component:
    """
    compLst = []
    with open(useCasePath) as json_data:
        dictionary = json.load(json_data)
        for component in dictionary["components"]:
            c = addComponent(component)
            compLst.append(c)
    return compLst

def addComponent(comp_dictionary):
    """
    From json description of the component extract the properties and stores them into a instance of Component class
    :param comp_dictionary: a dictionary loaded from json component description
    :return:
    """
    comp = {"cpu": comp_dictionary["Compute"]["CPU"],
             "mem": comp_dictionary["Compute"]["Memory"], "sto": comp_dictionary["Storage"]["StorageSize"]}
    #key = comp_dictionary["id"]
    # value = {"cpu": comp_dictionary["Compute"]["CPU"],
    #          "mem": comp_dictionary["Compute"]["Memory"], "sto": comp_dictionary["Storage"]["StorageSize"]}
    #comp[key] = value
    #print("comp ", comp)
    return comp


def toFiniteDomain(inputPath, outputPath, useCase):
    """
    Takes as input an smt2 file and transforms some variables (e.g. p, m, s) to finite domains
    :return: None
    """
    useCaseFileName = useCase.split("/").pop().split(".")[0]

    filteredFilesLst = []
    for root, dirs, files in os.walk(inputPath, topdown=False):
        for file in files:
            regex = re.escape(useCaseFileName)
            if re.search(regex, file, re.IGNORECASE):
                print(file)
                filteredFilesLst.append(file)
        print(filteredFilesLst)


        for name in filteredFilesLst:
            print("name ", name)
            inputFile  = os.path.join(inputPath, name)
            outputFile = os.path.join(outputPath, name)

            cmpHardwareReqs = getCompHardwareReqs(useCase)

            if not os.path.exists(outputPath):
                os.makedirs(outputPath)

            with open(inputFile, "rt") as inp:
                with  open(outputFile, "w+") as out:
                    for line in inp:
                        cpu = re.match(r"\(declare\-fun\s+p(\d)*_(\d)*\s+\(\)\s+Int\)", line)
                        mem = re.match(r"\(declare\-fun\s+m(\d)*_(\d)*\s+\(\)\s+Int\)", line)
                        sto = re.match(r"\(declare\-fun\s+s(\d)*_(\d)*\s+\(\)\s+Int\)", line)
                        # print("cpu ", cpu)
                        # print("mem ", mem)
                        # print("sto ", sto)
                        if cpu != None:
                            cmCPU = re.search(r"(\d)*_(\d)*", cpu.group(0)).group(0).split("_")
                            df = re.sub("declare\-fun", "define-fun", cpu.group(0))
                            c = int(cmCPU[0])
                            #print("???", cmpHardwareReqs[c-1]["cpu"])
                            p = re.sub("Int\)", "Int (ite C" + cmCPU[0] + "_" + "VM" + cmCPU[1] + " " + str(
                                cmpHardwareReqs[c-1]["cpu"]) + " 0))", df)
                            out.write(p+"\n")
                        elif mem != None:
                            cmMem = re.search(r"(\d)*_(\d)*", mem.group(0)).group(0).split("_")
                            df = re.sub("declare\-fun", "define-fun", mem.group(0))
                            c = int(cmMem[0])
                            m = re.sub("Int\)", "Int (ite C" + cmMem[0] + "_" + "VM" + cmMem[1] + " " + str(
                                cmpHardwareReqs[c-1]["mem"]) + " 0))", df)
                            out.write(m+"\n")
                        elif sto != None:
                            cmSto = re.search(r"(\d)*_(\d)*", sto.group(0)).group(0).split("_")
                            df = re.sub("declare\-fun", "define-fun", sto.group(0))
                            c = int(cmSto[0])
                            s = re.sub("Int\)", "Int (ite C" + cmSto[0] + "_" + "VM" + cmSto[1] + " " + str(
                                cmpHardwareReqs[c-1]["sto"]) + " 0))", df)
                            out.write(s+"\n")
                        else:
                            out.write(line)
                inp.close()
                out.close()


def main():
    toFiniteDomain("../experimentalResults/linear/output_SMT_Solver_Z3_FD/SMT2",
                   "../experimentalResults/linear/output_SMT_Solver_Z3_FD-final/SMT2",
                   "../testInstances/Oryx2.json")


if __name__ == "__main__":
    main()



