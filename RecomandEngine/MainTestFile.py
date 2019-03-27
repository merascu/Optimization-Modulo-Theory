from RecomandEngine.problem.ProblemDefinition import ManeuverProblem

import os
import csv
import json

def read_available_configurations(fileConfigurations):

    with open(fileConfigurations) as json_data:
        dictionary = json.load(json_data)

    availableConfigurations = []
    for key, value in dictionary.items():
        l = [key]
        l.append(value["cpu"])
        l.append(value["memory"])
        l.append(value["storage"])
        l.append(value["price"])
        availableConfigurations.append(l)
    print(availableConfigurations)
    return availableConfigurations

def runZ3Once(problem_file_name, configurations_file_name, solver):
    filename1 = problem_file_name.split("/").pop().split(".")[0]
    filename2 = configurations_file_name.split("/").pop().split(".")[0]

    resultsDirectoryPath = "../experimentalResults/linear/output_"+solver+"/csv/"
    if not os.path.exists(resultsDirectoryPath):
        os.makedirs(resultsDirectoryPath)

    outcsv = resultsDirectoryPath + filename1 + "-" + filename2 + ".csv"

    # File for saving the problem into SMT2LIB format
    resultsDirectoryPath = "../experimentalResults/linear/output_"+solver+"/SMT2/"
    if not os.path.exists(resultsDirectoryPath):
        os.makedirs(resultsDirectoryPath)
    smt2lib = resultsDirectoryPath + filename1 + "-" + filename2 + ".smt2"

    # File for saving the solution of the problem into SMT2LIB format
    resultsDirectoryPath = "../experimentalResults/linear/output_"+solver+"/SMT2-Sol/"
    if not os.path.exists(resultsDirectoryPath):
        os.makedirs(resultsDirectoryPath)
    smt2libsol = resultsDirectoryPath + filename1 + "-" + filename2 + "-sol.smt2"

    with open(outcsv, 'a', newline='') as csvfile:
        fwriter = csv.writer(csvfile, delimiter=',', )
        #fwriter.writerow(['Price min value', 'Price for each machine', 'Time'])
        for it in range(3):
            mp = ManeuverProblem()
            try:
                mp.readConfiguration(problem_file_name)
            except IOError:
                print("File '%s' doesn't exist", problem_file_name)
                exit(1)

            availableConfigurations = read_available_configurations(configurations_file_name)
            mp.priceOffersFile = configurations_file_name
            minPrice, priceVMs, t = mp.solveSMT(availableConfigurations, smt2lib, smt2libsol, "optimize", solver)
            print("min price = {}, price vm = {}, time = {}".format(minPrice, priceVMs, t))
            fwriter.writerow([minPrice, priceVMs, t])

        csvfile.close()

if __name__ == "__main__":

    ######################
    # SecureWebContainer #
    ######################
    # runZ3Once("../testInstances/SecureWebContainer.json", "../testInstances/offersICCP2018/offers_4.json",
    #           "SMT_Solver_Z3_IntIntOr")
    # runZ3Once("../testInstances/SecureWebContainer.json", "../testInstances/offersICCP2018/offers_10.json",
    #           "SMT_Solver_Z3_IntIntOr")
    # runZ3Once("../testInstances/SecureWebContainer.json", "../testInstances/offersICCP2018/offers_20.json",
    #           "SMT_Solver_Z3_IntIntOr")
    # runZ3Once("../testInstances/SecureWebContainer.json", "../testInstances/offersICCP2018/offers_40.json",
    #           "SMT_Solver_Z3_IntIntOr")
    # runZ3Once("../testInstances/SecureWebContainer.json", "../testInstances/offersICCP2018/offers_60.json",
    #           "SMT_Solver_Z3_IntIntOr")
    # runZ3Once("../testInstances/SecureWebContainer.json", "../testInstances/offersICCP2018/offers_80.json",
    #           "SMT_Solver_Z3_IntIntOr")
    # runZ3Once("../testInstances/SecureWebContainer.json", "../testInstances/offersICCP2018/offers_100.json",
    #           "SMT_Solver_Z3_IntIntOr")
    #
    # runZ3Once("../testInstances/SecureWebContainer.json", "../testInstances/offersICCP2018/offers_4.json",
    #               "SMT_Solver_Z3_IntIntLessThan")
    #     runZ3Once("../testInstances/SecureWebContainer.json", "../testInstances/offersICCP2018/offers_10.json",
    #               "SMT_Solver_Z3_IntIntLessThan")
    #     runZ3Once("../testInstances/SecureWebContainer.json", "../testInstances/offersICCP2018/offers_20.json",
    #               "SMT_Solver_Z3_IntIntLessThan")
    #     runZ3Once("../testInstances/SecureWebContainer.json", "../testInstances/offersICCP2018/offers_40.json",
    #               "SMT_Solver_Z3_IntIntLessThan")
    #     runZ3Once("../testInstances/SecureWebContainer.json", "../testInstances/offersICCP2018/offers_60.json",
    #               "SMT_Solver_Z3_IntIntLessThan")
    #     runZ3Once("../testInstances/SecureWebContainer.json", "../testInstances/offersICCP2018/offers_80.json",
    #               "SMT_Solver_Z3_IntIntLessThan")
    #     runZ3Once("../testInstances/SecureWebContainer.json", "../testInstances/offersICCP2018/offers_100.json",
    #               "SMT_Solver_Z3_IntIntLessThan")

    # runZ3Once("../testInstances/SecureWebContainer.json", "../testInstances/offersICCP2018/offers_4.json",
    #           "SMT_Solver_Z3_RealBool")
    # runZ3Once("../testInstances/SecureWebContainer.json", "../testInstances/offersICCP2018/offers_10.json",
    #           "SMT_Solver_Z3_RealBool")
    # runZ3Once("../testInstances/SecureWebContainer.json", "../testInstances/offersICCP2018/offers_20.json",
    #           "SMT_Solver_Z3_RealBool")
    # runZ3Once("../testInstances/SecureWebContainer.json", "../testInstances/offersICCP2018/offers_40.json",
    #           "SMT_Solver_Z3_RealBool")
    # runZ3Once("../testInstances/SecureWebContainer.json", "../testInstances/offersICCP2018/offers_60.json",
    #           "SMT_Solver_Z3_RealBool")
    # runZ3Once("../testInstances/SecureWebContainer.json", "../testInstances/offersICCP2018/offers_80.json",
    #           "SMT_Solver_Z3_RealBool")
    # runZ3Once("../testInstances/SecureWebContainer.json", "../testInstances/offersICCP2018/offers_100.json",
    #           "SMT_Solver_Z3_RealBool")
    #
    # runZ3Once("../testInstances/SecureWebContainer.json", "../testInstances/offersICCP2018/offers_4.json",
    #           "SMT_Solver_Z3_RealReal")
    # runZ3Once("../testInstances/SecureWebContainer.json", "../testInstances/offersICCP2018/offers_10.json",
    #           "SMT_Solver_Z3_RealReal")
    # runZ3Once("../testInstances/SecureWebContainer.json", "../testInstances/offersICCP2018/offers_20.json",
    #           "SMT_Solver_Z3_RealReal")
    # runZ3Once("../testInstances/SecureWebContainer.json", "../testInstances/offersICCP2018/offers_40.json",
    #           "SMT_Solver_Z3_RealReal")
    # runZ3Once("../testInstances/SecureWebContainer.json", "../testInstances/offersICCP2018/offers_60.json",
    #           "SMT_Solver_Z3_RealReal")
    # runZ3Once("../testInstances/SecureWebContainer.json", "../testInstances/offersICCP2018/offers_80.json",
    #           "SMT_Solver_Z3_RealReal")
    # runZ3Once("../testInstances/SecureWebContainer.json", "../testInstances/offersICCP2018/offers_100.json",
    #           "SMT_Solver_Z3_RealReal")
    #
    # runZ3Once("../testInstances/SecureWebContainer.json", "../testInstances/offersICCP2018/offers_4.json",
    #           "SMT_Solver_Z3_BV")
    # runZ3Once("../testInstances/SecureWebContainer.json", "../testInstances/offersICCP2018/offers_10.json",
    #           "SMT_Solver_Z3_BV")
    # runZ3Once("../testInstances/SecureWebContainer.json", "../testInstances/offersICCP2018/offers_20.json",
    #           "SMT_Solver_Z3_BV")
    # runZ3Once("../testInstances/SecureWebContainer.json", "../testInstances/offersICCP2018/offers_40.json",
    #           "SMT_Solver_Z3_BV")
    # runZ3Once("../testInstances/SecureWebContainer.json", "../testInstances/offersICCP2018/offers_60.json",
    #           "SMT_Solver_Z3_BV")
    # runZ3Once("../testInstances/SecureWebContainer.json", "../testInstances/offersICCP2018/offers_80.json",
    #           "SMT_Solver_Z3_BV")
    # runZ3Once("../testInstances/SecureWebContainer.json", "../testInstances/offersICCP2018/offers_100.json",
    #           "SMT_Solver_Z3_BV")
    #
    # runZ3Once("../testInstances/SecureWebContainer.json", "../testInstances/offersICCP2018/offers_4.json",
    #           "SMT_Solver_Z3_PBC_ite")
    # runZ3Once("../testInstances/SecureWebContainer.json", "../testInstances/offersICCP2018/offers_10.json",
    #           "SMT_Solver_Z3_PBC_ite")
    # runZ3Once("../testInstances/SecureWebContainer.json", "../testInstances/offersICCP2018/offers_20.json",
    #           "SMT_Solver_Z3_PBC_ite")
    # runZ3Once("../testInstances/SecureWebContainer.json", "../testInstances/offersICCP2018/offers_40.json",
    #           "SMT_Solver_Z3_PBC_ite")
    # runZ3Once("../testInstances/SecureWebContainer.json", "../testInstances/offersICCP2018/offers_60.json",
    #           "SMT_Solver_Z3_PBC_ite")
    # runZ3Once("../testInstances/SecureWebContainer.json", "../testInstances/offersICCP2018/offers_80.json",
    #           "SMT_Solver_Z3_PBC_ite")
    # runZ3Once("../testInstances/SecureWebContainer.json", "../testInstances/offersICCP2018/offers_100.json",
    #           "SMT_Solver_Z3_PBC_ite")
    #
    # runZ3Once("../testInstances/SecureWebContainer.json", "../testInstances/offersICCP2018/offers_4.json",
    #           "SMT_Solver_Z3_PBC_nonite")
    # runZ3Once("../testInstances/SecureWebContainer.json", "../testInstances/offersICCP2018/offers_10.json",
    #           "SMT_Solver_Z3_PBC_nonite")
    # runZ3Once("../testInstances/SecureWebContainer.json", "../testInstances/offersICCP2018/offers_20.json",
    #           "SMT_Solver_Z3_PBC_nonite")
    # runZ3Once("../testInstances/SecureWebContainer.json", "../testInstances/offersICCP2018/offers_40.json",
    #           "SMT_Solver_Z3_PBC_nonite")
    # runZ3Once("../testInstances/SecureWebContainer.json", "../testInstances/offersICCP2018/offers_60.json",
    #           "SMT_Solver_Z3_PBC_nonite")
    # runZ3Once("../testInstances/SecureWebContainer.json", "../testInstances/offersICCP2018/offers_80.json",
    #           "SMT_Solver_Z3_PBC_nonite")
    # runZ3Once("../testInstances/SecureWebContainer.json", "../testInstances/offersICCP2018/offers_100.json",
    #           "SMT_Solver_Z3_PBC_nonite")
    # ######################
    # # SecureBillingEmail #
    # ######################
    #
    # runZ3Once("../testInstances/SecureBillingEmail.json", "../testInstances/offersICCP2018/offers_4.json",
    #           "SMT_Solver_Z3_IntIntLessThan")
    # runZ3Once("../testInstances/SecureBillingEmail.json", "../testInstances/offersICCP2018/offers_10.json",
    #           "SMT_Solver_Z3_IntIntLessThan")
    # runZ3Once("../testInstances/SecureBillingEmail.json", "../testInstances/offersICCP2018/offers_20.json",
    #           "SMT_Solver_Z3_IntIntLessThan")
    # runZ3Once("../testInstances/SecureBillingEmail.json", "../testInstances/offersICCP2018/offers_40.json",
    #           "SMT_Solver_Z3_IntIntLessThan")
    # runZ3Once("../testInstances/SecureBillingEmail.json", "../testInstances/offersICCP2018/offers_60.json",
    #           "SMT_Solver_Z3_IntIntLessThan")
    # runZ3Once("../testInstances/SecureBillingEmail.json", "../testInstances/offersICCP2018/offers_80.json",
    #           "SMT_Solver_Z3_IntIntLessThan")
    # runZ3Once("../testInstances/SecureBillingEmail.json", "../testInstances/offersICCP2018/offers_100.json",
    #           "SMT_Solver_Z3_IntIntLessThan")
    #
    # runZ3Once("../testInstances/SecureBillingEmail.json", "../testInstances/offersICCP2018/offers_4.json",
    #           "SMT_Solver_Z3_RealBool")
    # runZ3Once("../testInstances/SecureBillingEmail.json", "../testInstances/offersICCP2018/offers_10.json",
    #           "SMT_Solver_Z3_RealBool")
    # runZ3Once("../testInstances/SecureBillingEmail.json", "../testInstances/offersICCP2018/offers_20.json",
    #           "SMT_Solver_Z3_RealBool")
    # runZ3Once("../testInstances/SecureBillingEmail.json", "../testInstances/offersICCP2018/offers_40.json",
    #           "SMT_Solver_Z3_RealBool")
    # runZ3Once("../testInstances/SecureBillingEmail.json", "../testInstances/offersICCP2018/offers_60.json",
    #           "SMT_Solver_Z3_RealBool")
    # runZ3Once("../testInstances/SecureBillingEmail.json", "../testInstances/offersICCP2018/offers_80.json",
    #           "SMT_Solver_Z3_RealBool")
    # runZ3Once("../testInstances/SecureBillingEmail.json", "../testInstances/offersICCP2018/offers_100.json",
    #           "SMT_Solver_Z3_RealBool")
    #
    # runZ3Once("../testInstances/SecureBillingEmail.json", "../testInstances/offersICCP2018/offers_4.json",
    #           "SMT_Solver_Z3_RealReal")
    # runZ3Once("../testInstances/SecureBillingEmail.json", "../testInstances/offersICCP2018/offers_10.json",
    #           "SMT_Solver_Z3_RealReal")
    # runZ3Once("../testInstances/SecureBillingEmail.json", "../testInstances/offersICCP2018/offers_20.json",
    #           "SMT_Solver_Z3_RealReal")
    # runZ3Once("../testInstances/SecureBillingEmail.json", "../testInstances/offersICCP2018/offers_40.json",
    #           "SMT_Solver_Z3_RealReal")
    # runZ3Once("../testInstances/SecureBillingEmail.json", "../testInstances/offersICCP2018/offers_60.json",
    #           "SMT_Solver_Z3_RealReal")
    # runZ3Once("../testInstances/SecureBillingEmail.json", "../testInstances/offersICCP2018/offers_80.json",
    #           "SMT_Solver_Z3_RealReal")
    # runZ3Once("../testInstances/SecureBillingEmail.json", "../testInstances/offersICCP2018/offers_100.json",
    #           "SMT_Solver_Z3_RealReal")
    #
    # runZ3Once("../testInstances/SecureBillingEmail.json", "../testInstances/offersICCP2018/offers_4.json",
    #           "SMT_Solver_Z3_IntIntOr")
    # runZ3Once("../testInstances/SecureBillingEmail.json", "../testInstances/offersICCP2018/offers_10.json",
    #           "SMT_Solver_Z3_IntIntOr")
    # runZ3Once("../testInstances/SecureBillingEmail.json", "../testInstances/offersICCP2018/offers_20.json",
    #           "SMT_Solver_Z3_IntIntOr")
    # runZ3Once("../testInstances/SecureBillingEmail.json", "../testInstances/offersICCP2018/offers_40.json",
    #           "SMT_Solver_Z3_IntIntOr")
    # runZ3Once("../testInstances/SecureBillingEmail.json", "../testInstances/offersICCP2018/offers_60.json",
    #           "SMT_Solver_Z3_IntIntOr")
    # runZ3Once("../testInstances/SecureBillingEmail.json", "../testInstances/offersICCP2018/offers_80.json",
    #           "SMT_Solver_Z3_IntIntOr")
    # runZ3Once("../testInstances/SecureBillingEmail.json", "../testInstances/offersICCP2018/offers_100.json",
    #           "SMT_Solver_Z3_IntIntOr")
    #
    # runZ3Once("../testInstances/SecureBillingEmail.json", "../testInstances/offersICCP2018/offers_4.json",
    #           "SMT_Solver_Z3_BV")
    # runZ3Once("../testInstances/SecureBillingEmail.json", "../testInstances/offersICCP2018/offers_10.json",
    #           "SMT_Solver_Z3_BV")
    # runZ3Once("../testInstances/SecureBillingEmail.json", "../testInstances/offersICCP2018/offers_20.json",
    #           "SMT_Solver_Z3_BV")
    # runZ3Once("../testInstances/SecureBillingEmail.json", "../testInstances/offersICCP2018/offers_40.json",
    #           "SMT_Solver_Z3_BV")
    # runZ3Once("../testInstances/SecureBillingEmail.json", "../testInstances/offersICCP2018/offers_60.json",
    #           "SMT_Solver_Z3_BV")
    # runZ3Once("../testInstances/SecureBillingEmail.json", "../testInstances/offersICCP2018/offers_80.json",
    #           "SMT_Solver_Z3_BV")
    # runZ3Once("../testInstances/SecureBillingEmail.json", "../testInstances/offersICCP2018/offers_100.json",
    #           "SMT_Solver_Z3_BV")
    #
    # runZ3Once("../testInstances/SecureBillingEmail.json", "../testInstances/offersICCP2018/offers_4.json",
    #           "SMT_Solver_Z3_PBC_ite")
    # runZ3Once("../testInstances/SecureBillingEmail.json", "../testInstances/offersICCP2018/offers_10.json",
    #           "SMT_Solver_Z3_PBC_ite")
    # runZ3Once("../testInstances/SecureBillingEmail.json", "../testInstances/offersICCP2018/offers_20.json",
    #           "SMT_Solver_Z3_PBC_ite")
    # runZ3Once("../testInstances/SecureBillingEmail.json", "../testInstances/offersICCP2018/offers_40.json",
    #           "SMT_Solver_Z3_PBC_ite")
    # runZ3Once("../testInstances/SecureBillingEmail.json", "../testInstances/offersICCP2018/offers_60.json",
    #           "SMT_Solver_Z3_PBC_ite")
    # runZ3Once("../testInstances/SecureBillingEmail.json", "../testInstances/offersICCP2018/offers_80.json",
    #           "SMT_Solver_Z3_PBC_ite")
    # runZ3Once("../testInstances/SecureBillingEmail.json", "../testInstances/offersICCP2018/offers_100.json",
    #           "SMT_Solver_Z3_PBC_ite")
    #
    # runZ3Once("../testInstances/SecureBillingEmail.json", "../testInstances/offersICCP2018/offers_4.json",
    #           "SMT_Solver_Z3_PBC_nonite")
    # runZ3Once("../testInstances/SecureBillingEmail.json", "../testInstances/offersICCP2018/offers_10.json",
    #           "SMT_Solver_Z3_PBC_nonite")
    # runZ3Once("../testInstances/SecureBillingEmail.json", "../testInstances/offersICCP2018/offers_20.json",
    #           "SMT_Solver_Z3_PBC_nonite")
    # runZ3Once("../testInstances/SecureBillingEmail.json", "../testInstances/offersICCP2018/offers_40.json",
    #           "SMT_Solver_Z3_PBC_nonite")
    # runZ3Once("../testInstances/SecureBillingEmail.json", "../testInstances/offersICCP2018/offers_60.json",
    #           "SMT_Solver_Z3_PBC_nonite")
    # runZ3Once("../testInstances/SecureBillingEmail.json", "../testInstances/offersICCP2018/offers_80.json",
    #           "SMT_Solver_Z3_PBC_nonite")
    # runZ3Once("../testInstances/SecureBillingEmail.json", "../testInstances/offersICCP2018/offers_100.json",
    #           "SMT_Solver_Z3_PBC_nonite")
    # # ######################
    # ######## Oryx2 #######
    # ######################
    #
    # runZ3Once("../testInstances/Oryx2.json", "../testInstances/offersICCP2018/offers_4.json",
    #           "SMT_Solver_Z3_IntIntLessThan")
    # runZ3Once("../testInstances/Oryx2.json", "../testInstances/offersICCP2018/offers_10.json",
    #           "SMT_Solver_Z3_IntIntLessThan")
    # runZ3Once("../testInstances/Oryx2.json", "../testInstances/offersICCP2018/offers_20.json",
    #           "SMT_Solver_Z3_IntIntLessThan")
    # runZ3Once("../testInstances/Oryx2.json", "../testInstances/offersICCP2018/offers_40.json",
    #           "SMT_Solver_Z3_IntIntLessThan")
    # runZ3Once("../testInstances/Oryx2.json", "../testInstances/offersICCP2018/offers_60.json",
    #           "SMT_Solver_Z3_IntIntLessThan")
    # runZ3Once("../testInstances/Oryx2.json", "../testInstances/offersICCP2018/offers_80.json",
    #           "SMT_Solver_Z3_IntIntLessThan")
    # runZ3Once("../testInstances/Oryx2.json", "../testInstances/offersICCP2018/offers_100.json",
    #           "SMT_Solver_Z3_IntIntLessThan")
    #
    # runZ3Once("../testInstances/Oryx2.json", "../testInstances/offersICCP2018/offers_4.json",
    #           "SMT_Solver_Z3_RealBool")
    # runZ3Once("../testInstances/Oryx2.json", "../testInstances/offersICCP2018/offers_10.json",
    #           "SMT_Solver_Z3_RealBool")
    # runZ3Once("../testInstances/Oryx2.json", "../testInstances/offersICCP2018/offers_20.json",
    #           "SMT_Solver_Z3_RealBool")
    # runZ3Once("../testInstances/Oryx2.json", "../testInstances/offersICCP2018/offers_40.json",
    #           "SMT_Solver_Z3_RealBool")
    # runZ3Once("../testInstances/Oryx2.json", "../testInstances/offersICCP2018/offers_60.json",
    #           "SMT_Solver_Z3_RealBool")
    # runZ3Once("../testInstances/Oryx2.json", "../testInstances/offersICCP2018/offers_80.json",
    #           "SMT_Solver_Z3_RealBool")
    # runZ3Once("../testInstances/Oryx2.json", "../testInstances/offersICCP2018/offers_100.json",
    #           "SMT_Solver_Z3_RealBool")
    #
    # runZ3Once("../testInstances/Oryx2.json", "../testInstances/offersICCP2018/offers_4.json",
    #           "SMT_Solver_Z3_RealReal")
    # runZ3Once("../testInstances/Oryx2.json", "../testInstances/offersICCP2018/offers_10.json",
    #           "SMT_Solver_Z3_RealReal")
    # runZ3Once("../testInstances/Oryx2.json", "../testInstances/offersICCP2018/offers_20.json",
    #           "SMT_Solver_Z3_RealReal")
    # runZ3Once("../testInstances/Oryx2.json", "../testInstances/offersICCP2018/offers_40.json",
    #           "SMT_Solver_Z3_RealReal")
    # runZ3Once("../testInstances/Oryx2.json", "../testInstances/offersICCP2018/offers_60.json",
    #           "SMT_Solver_Z3_RealReal")
    # runZ3Once("../testInstances/Oryx2.json", "../testInstances/offersICCP2018/offers_80.json",
    #           "SMT_Solver_Z3_RealReal")
    # runZ3Once("../testInstances/Oryx2.json", "../testInstances/offersICCP2018/offers_100.json",
    #           "SMT_Solver_Z3_RealReal")
    #
    # runZ3Once("../testInstances/Oryx2.json", "../testInstances/offersICCP2018/offers_4.json",
    #           "SMT_Solver_Z3_IntIntOr")
    # runZ3Once("../testInstances/Oryx2.json", "../testInstances/offersICCP2018/offers_10.json",
    #           "SMT_Solver_Z3_IntIntOr")
    # runZ3Once("../testInstances/Oryx2.json", "../testInstances/offersICCP2018/offers_20.json",
    #           "SMT_Solver_Z3_IntIntOr")
    # runZ3Once("../testInstances/Oryx2.json", "../testInstances/offersICCP2018/offers_40.json",
    #           "SMT_Solver_Z3_IntIntOr")
    # runZ3Once("../testInstances/Oryx2.json", "../testInstances/offersICCP2018/offers_60.json",
    #           "SMT_Solver_Z3_IntIntOr")
    # runZ3Once("../testInstances/Oryx2.json", "../testInstances/offersICCP2018/offers_80.json",
    #           "SMT_Solver_Z3_IntIntOr")
    # runZ3Once("../testInstances/Oryx2.json", "../testInstances/offersICCP2018/offers_100.json",
    #           "SMT_Solver_Z3_IntIntOr")
    #
    # runZ3Once("../testInstances/Oryx2.json", "../testInstances/offersICCP2018/offers_4.json",
    #           "SMT_Solver_Z3_BV")
    # runZ3Once("../testInstances/Oryx2.json", "../testInstances/offersICCP2018/offers_10.json",
    #           "SMT_Solver_Z3_BV")
    # runZ3Once("../testInstances/Oryx2.json", "../testInstances/offersICCP2018/offers_20.json",
    #           "SMT_Solver_Z3_BV")
    # runZ3Once("../testInstances/Oryx2.json", "../testInstances/offersICCP2018/offers_40.json",
    #           "SMT_Solver_Z3_BV")
    # runZ3Once("../testInstances/Oryx2.json", "../testInstances/offersICCP2018/offers_60.json",
    #           "SMT_Solver_Z3_BV")
    # runZ3Once("../testInstances/Oryx2.json", "../testInstances/offersICCP2018/offers_80.json",
    #           "SMT_Solver_Z3_BV")
    # runZ3Once("../testInstances/Oryx2.json", "../testInstances/offersICCP2018/offers_100.json",
    #           "SMT_Solver_Z3_BV")
    #
    # runZ3Once("../testInstances/Oryx2.json", "../testInstances/offersICCP2018/offers_4.json",
    #           "SMT_Solver_Z3_PBC_ite")
    # runZ3Once("../testInstances/Oryx2.json", "../testInstances/offersICCP2018/offers_10.json",
    #           "SMT_Solver_Z3_PBC_ite")
    # runZ3Once("../testInstances/Oryx2.json", "../testInstances/offersICCP2018/offers_20.json",
    #           "SMT_Solver_Z3_PBC_ite")
    # runZ3Once("../testInstances/Oryx2.json", "../testInstances/offersICCP2018/offers_40.json",
    #           "SMT_Solver_Z3_PBC_ite")
    # runZ3Once("../testInstances/Oryx2.json", "../testInstances/offersICCP2018/offers_60.json",
    #           "SMT_Solver_Z3_PBC_ite")
    # runZ3Once("../testInstances/Oryx2.json", "../testInstances/offersICCP2018/offers_80.json",
    #           "SMT_Solver_Z3_PBC_ite")
    # runZ3Once("../testInstances/Oryx2.json", "../testInstances/offersICCP2018/offers_100.json",
    #           "SMT_Solver_Z3_PBC_ite")
    #
    # runZ3Once("../testInstances/Oryx2.json", "../testInstances/offersICCP2018/offers_4.json",
    #           "SMT_Solver_Z3_PBC_nonite")
    # runZ3Once("../testInstances/Oryx2.json", "../testInstances/offersICCP2018/offers_10.json",
    #           "SMT_Solver_Z3_PBC_nonite")
    # runZ3Once("../testInstances/Oryx2.json", "../testInstances/offersICCP2018/offers_20.json",
    #           "SMT_Solver_Z3_PBC_nonite")
    # runZ3Once("../testInstances/Oryx2.json", "../testInstances/offersICCP2018/offers_40.json",
    #           "SMT_Solver_Z3_PBC_nonite")
    # runZ3Once("../testInstances/Oryx2.json", "../testInstances/offersICCP2018/offers_60.json",
    #           "SMT_Solver_Z3_PBC_nonite")
    # runZ3Once("../testInstances/Oryx2.json", "../testInstances/offersICCP2018/offers_80.json",
    #           "SMT_Solver_Z3_PBC_nonite")
    # runZ3Once("../testInstances/Oryx2.json", "../testInstances/offersICCP2018/offers_100.json",
    #           "SMT_Solver_Z3_PBC_nonite")
    # ######################
    # ###### Wordpress3 ####
    # ######################
    #
    # runZ3Once("../testInstances/Wordpress3.json", "../testInstances/offersICCP2018/offers_4.json",
    #           "SMT_Solver_Z3_IntIntLessThan")
    # runZ3Once("../testInstances/Wordpress3.json", "../testInstances/offersICCP2018/offers_10.json",
    #           "SMT_Solver_Z3_IntIntLessThan")
    # runZ3Once("../testInstances/Wordpress3.json", "../testInstances/offersICCP2018/offers_20.json",
    #           "SMT_Solver_Z3_IntIntLessThan")
    # runZ3Once("../testInstances/Wordpress3.json", "../testInstances/offersICCP2018/offers_40.json",
    #           "SMT_Solver_Z3_IntIntLessThan")
    # runZ3Once("../testInstances/Wordpress3.json", "../testInstances/offersICCP2018/offers_60.json",
    #           "SMT_Solver_Z3_IntIntLessThan")
    # runZ3Once("../testInstances/Wordpress3.json", "../testInstances/offersICCP2018/offers_80.json",
    #           "SMT_Solver_Z3_IntIntLessThan")
    # runZ3Once("../testInstances/Wordpress3.json", "../testInstances/offersICCP2018/offers_100.json",
    #           "SMT_Solver_Z3_IntIntLessThan")
    #
    # runZ3Once("../testInstances/Wordpress3.json", "../testInstances/offersICCP2018/offers_4.json",
    #           "SMT_Solver_Z3_RealBool")
    # runZ3Once("../testInstances/Wordpress3.json", "../testInstances/offersICCP2018/offers_10.json",
    #           "SMT_Solver_Z3_RealBool")
    # runZ3Once("../testInstances/Wordpress3.json", "../testInstances/offersICCP2018/offers_20.json",
    #           "SMT_Solver_Z3_RealBool")
    # runZ3Once("../testInstances/Wordpress3.json", "../testInstances/offersICCP2018/offers_40.json",
    #           "SMT_Solver_Z3_RealBool")
    # runZ3Once("../testInstances/Wordpress3.json", "../testInstances/offersICCP2018/offers_60.json",
    #           "SMT_Solver_Z3_RealBool")
    # runZ3Once("../testInstances/Wordpress3.json", "../testInstances/offersICCP2018/offers_80.json",
    #           "SMT_Solver_Z3_RealBool")
    # runZ3Once("../testInstances/Wordpress3.json", "../testInstances/offersICCP2018/offers_100.json",
    #           "SMT_Solver_Z3_RealBool")
    #
    # runZ3Once("../testInstances/Wordpress3.json", "../testInstances/offersICCP2018/offers_4.json",
    #           "SMT_Solver_Z3_RealReal")
    # runZ3Once("../testInstances/Wordpress3.json", "../testInstances/offersICCP2018/offers_10.json",
    #           "SMT_Solver_Z3_RealReal")
    # runZ3Once("../testInstances/Wordpress3.json", "../testInstances/offersICCP2018/offers_20.json",
    #           "SMT_Solver_Z3_RealReal")
    # runZ3Once("../testInstances/Wordpress3.json", "../testInstances/offersICCP2018/offers_40.json",
    #           "SMT_Solver_Z3_RealReal")
    # runZ3Once("../testInstances/Wordpress3.json", "../testInstances/offersICCP2018/offers_60.json",
    #           "SMT_Solver_Z3_RealReal")
    # runZ3Once("../testInstances/Wordpress3.json", "../testInstances/offersICCP2018/offers_80.json",
    #           "SMT_Solver_Z3_RealReal")
    # runZ3Once("../testInstances/Wordpress3.json", "../testInstances/offersICCP2018/offers_100.json",
    #           "SMT_Solver_Z3_RealReal")
    #
    # runZ3Once("../testInstances/Wordpress3.json", "../testInstances/offersICCP2018/offers_4.json",
    #           "SMT_Solver_Z3_IntIntOr")
    # runZ3Once("../testInstances/Wordpress3.json", "../testInstances/offersICCP2018/offers_10.json",
    #           "SMT_Solver_Z3_IntIntOr")
    # runZ3Once("../testInstances/Wordpress3.json", "../testInstances/offersICCP2018/offers_20.json",
    #           "SMT_Solver_Z3_IntIntOr")
    # runZ3Once("../testInstances/Wordpress3.json", "../testInstances/offersICCP2018/offers_40.json",
    #           "SMT_Solver_Z3_IntIntOr")
    # runZ3Once("../testInstances/Wordpress3.json", "../testInstances/offersICCP2018/offers_60.json",
    #           "SMT_Solver_Z3_IntIntOr")
    # runZ3Once("../testInstances/Wordpress3.json", "../testInstances/offersICCP2018/offers_80.json",
    #           "SMT_Solver_Z3_IntIntOr")
    # runZ3Once("../testInstances/Wordpress3.json", "../testInstances/offersICCP2018/offers_100.json",
    #           "SMT_Solver_Z3_IntIntOr")
    #
    # runZ3Once("../testInstances/Wordpress3.json", "../testInstances/offersICCP2018/offers_4.json",
    #           "SMT_Solver_Z3_BV")
    # runZ3Once("../testInstances/Wordpress3.json", "../testInstances/offersICCP2018/offers_10.json",
    #           "SMT_Solver_Z3_BV")
    # runZ3Once("../testInstances/Wordpress3.json", "../testInstances/offersICCP2018/offers_20.json",
    #           "SMT_Solver_Z3_BV")
    # runZ3Once("../testInstances/Wordpress3.json", "../testInstances/offersICCP2018/offers_40.json",
    #           "SMT_Solver_Z3_BV")
    # runZ3Once("../testInstances/Wordpress3.json", "../testInstances/offersICCP2018/offers_60.json",
    #           "SMT_Solver_Z3_BV")
    # runZ3Once("../testInstances/Wordpress3.json", "../testInstances/offersICCP2018/offers_80.json",
    #           "SMT_Solver_Z3_BV")
    # runZ3Once("../testInstances/Wordpress3.json", "../testInstances/offersICCP2018/offers_100.json",
    #           "SMT_Solver_Z3_BV")
    #
    # runZ3Once("../testInstances/Wordpress3.json", "../testInstances/offersICCP2018/offers_4.json",
    #           "SMT_Solver_Z3_PBC_ite")
    # runZ3Once("../testInstances/Wordpress3.json", "../testInstances/offersICCP2018/offers_10.json",
    #           "SMT_Solver_Z3_PBC_ite")
    # runZ3Once("../testInstances/Wordpress3.json", "../testInstances/offersICCP2018/offers_20.json",
    #           "SMT_Solver_Z3_PBC_ite")
    # runZ3Once("../testInstances/Wordpress3.json", "../testInstances/offersICCP2018/offers_40.json",
    #           "SMT_Solver_Z3_PBC_ite")
    # runZ3Once("../testInstances/Wordpress3.json", "../testInstances/offersICCP2018/offers_60.json",
    #           "SMT_Solver_Z3_PBC_ite")
    # runZ3Once("../testInstances/Wordpress3.json", "../testInstances/offersICCP2018/offers_80.json",
    #           "SMT_Solver_Z3_PBC_ite")
    # runZ3Once("../testInstances/Wordpress3.json", "../testInstances/offersICCP2018/offers_100.json",
    #           "SMT_Solver_Z3_PBC_ite")
    #
    # runZ3Once("../testInstances/Wordpress3.json", "../testInstances/offersICCP2018/offers_4.json",
    #           "SMT_Solver_Z3_PBC_nonite")
    # runZ3Once("../testInstances/Wordpress3.json", "../testInstances/offersICCP2018/offers_10.json",
    #           "SMT_Solver_Z3_PBC_nonite")
    # runZ3Once("../testInstances/Wordpress3.json", "../testInstances/offersICCP2018/offers_20.json",
    #           "SMT_Solver_Z3_PBC_nonite")
    # runZ3Once("../testInstances/Wordpress3.json", "../testInstances/offersICCP2018/offers_40.json",
    #           "SMT_Solver_Z3_PBC_nonite")
    # runZ3Once("../testInstances/Wordpress3.json", "../testInstances/offersICCP2018/offers_60.json",
    #           "SMT_Solver_Z3_PBC_nonite")
    # runZ3Once("../testInstances/Wordpress3.json", "../testInstances/offersICCP2018/offers_80.json",
    #           "SMT_Solver_Z3_PBC_nonite")
    # runZ3Once("../testInstances/Wordpress3.json", "../testInstances/offersICCP2018/offers_100.json",
    #           "SMT_Solver_Z3_PBC_nonite")
    # ######################
    # ###### Wordpress4 ####
    # ######################
    #
    # runZ3Once("../testInstances/Wordpress4.json", "../testInstances/offersICCP2018/offers_4.json",
    #           "SMT_Solver_Z3_IntIntLessThan")
    # runZ3Once("../testInstances/Wordpress4.json", "../testInstances/offersICCP2018/offers_10.json",
    #           "SMT_Solver_Z3_IntIntLessThan")
    # runZ3Once("../testInstances/Wordpress4.json", "../testInstances/offersICCP2018/offers_20.json",
    #           "SMT_Solver_Z3_IntIntLessThan")
    # runZ3Once("../testInstances/Wordpress4.json", "../testInstances/offersICCP2018/offers_40.json",
    #           "SMT_Solver_Z3_IntIntLessThan")
    # runZ3Once("../testInstances/Wordpress4.json", "../testInstances/offersICCP2018/offers_60.json",
    #           "SMT_Solver_Z3_IntIntLessThan")
    # runZ3Once("../testInstances/Wordpress4.json", "../testInstances/offersICCP2018/offers_80.json",
    #           "SMT_Solver_Z3_IntIntLessThan")
    # runZ3Once("../testInstances/Wordpress4.json", "../testInstances/offersICCP2018/offers_100.json",
    #           "SMT_Solver_Z3_IntIntLessThan")
    #
    # runZ3Once("../testInstances/Wordpress4.json", "../testInstances/offersICCP2018/offers_4.json",
    #           "SMT_Solver_Z3_PBC_ite")
    # runZ3Once("../testInstances/Wordpress4.json", "../testInstances/offersICCP2018/offers_10.json",
    #           "SMT_Solver_Z3_PBC_ite")
    # runZ3Once("../testInstances/Wordpress4.json", "../testInstances/offersICCP2018/offers_20.json",
    #           "SMT_Solver_Z3_PBC_ite")
    # runZ3Once("../testInstances/Wordpress4.json", "../testInstances/offersICCP2018/offers_40.json",
    #           "SMT_Solver_Z3_PBC_ite")
    # runZ3Once("../testInstances/Wordpress4.json", "../testInstances/offersICCP2018/offers_60.json",
    #           "SMT_Solver_Z3_PBC_ite")
    # runZ3Once("../testInstances/Wordpress4.json", "../testInstances/offersICCP2018/offers_80.json",
    #           "SMT_Solver_Z3_PBC_ite")
    # runZ3Once("../testInstances/Wordpress4.json", "../testInstances/offersICCP2018/offers_100.json",
    #           "SMT_Solver_Z3_PBC_ite")
    #
    # runZ3Once("../testInstances/Wordpress4.json", "../testInstances/offersICCP2018/offers_4.json",
    #           "SMT_Solver_Z3_PBC_nonite")
    # runZ3Once("../testInstances/Wordpress4.json", "../testInstances/offersICCP2018/offers_10.json",
    #           "SMT_Solver_Z3_PBC_nonite")
    # runZ3Once("../testInstances/Wordpress4.json", "../testInstances/offersICCP2018/offers_20.json",
    #           "SMT_Solver_Z3_PBC_nonite")
    # runZ3Once("../testInstances/Wordpress4.json", "../testInstances/offersICCP2018/offers_40.json",
    #           "SMT_Solver_Z3_PBC_nonite")
    # runZ3Once("../testInstances/Wordpress4.json", "../testInstances/offersICCP2018/offers_60.json",
    #           "SMT_Solver_Z3_PBC_nonite")
    # runZ3Once("../testInstances/Wordpress4.json", "../testInstances/offersICCP2018/offers_80.json",
    #           "SMT_Solver_Z3_PBC_nonite")
    # runZ3Once("../testInstances/Wordpress4.json", "../testInstances/offersICCP2018/offers_100.json",
    #           "SMT_Solver_Z3_PBC_nonite")
    #
    # runZ3Once("../testInstances/Wordpress4.json", "../testInstances/offersICCP2018/offers_4.json",
    #           "SMT_Solver_Z3_BV")
    # runZ3Once("../testInstances/Wordpress4.json", "../testInstances/offersICCP2018/offers_10.json",
    #           "SMT_Solver_Z3_BV")
    # runZ3Once("../testInstances/Wordpress4.json", "../testInstances/offersICCP2018/offers_20.json",
    #           "SMT_Solver_Z3_BV")
    # runZ3Once("../testInstances/Wordpress4.json", "../testInstances/offersICCP2018/offers_40.json",
    #           "SMT_Solver_Z3_BV")
    # runZ3Once("../testInstances/Wordpress4.json", "../testInstances/offersICCP2018/offers_60.json",
    #           "SMT_Solver_Z3_BV")
    # runZ3Once("../testInstances/Wordpress4.json", "../testInstances/offersICCP2018/offers_80.json",
    #           "SMT_Solver_Z3_BV")
    # runZ3Once("../testInstances/Wordpress4.json", "../testInstances/offersICCP2018/offers_100.json",
    #           "SMT_Solver_Z3_BV")
    #
    # runZ3Once("../testInstances/Wordpress4.json", "../testInstances/offersICCP2018/offers_4.json",
    #           "SMT_Solver_Z3_RealBool")
    # runZ3Once("../testInstances/Wordpress4.json", "../testInstances/offersICCP2018/offers_10.json",
    #           "SMT_Solver_Z3_RealBool")
    # runZ3Once("../testInstances/Wordpress4.json", "../testInstances/offersICCP2018/offers_20.json",
    #           "SMT_Solver_Z3_RealBool")
    # runZ3Once("../testInstances/Wordpress4.json", "../testInstances/offersICCP2018/offers_40.json",
    #           "SMT_Solver_Z3_RealBool")
    # runZ3Once("../testInstances/Wordpress4.json", "../testInstances/offersICCP2018/offers_60.json",
    #           "SMT_Solver_Z3_RealBool")
    # runZ3Once("../testInstances/Wordpress4.json", "../testInstances/offersICCP2018/offers_80.json",
    #           "SMT_Solver_Z3_RealBool")
    # runZ3Once("../testInstances/Wordpress4.json", "../testInstances/offersICCP2018/offers_100.json",
    #           "SMT_Solver_Z3_RealBool")
    #
    # runZ3Once("../testInstances/Wordpress4.json", "../testInstances/offersICCP2018/offers_4.json",
    #           "SMT_Solver_Z3_RealReal")
    # runZ3Once("../testInstances/Wordpress4.json", "../testInstances/offersICCP2018/offers_10.json",
    #           "SMT_Solver_Z3_RealReal")
    # runZ3Once("../testInstances/Wordpress4.json", "../testInstances/offersICCP2018/offers_20.json",
    #           "SMT_Solver_Z3_RealReal")
    # runZ3Once("../testInstances/Wordpress4.json", "../testInstances/offersICCP2018/offers_40.json",
    #           "SMT_Solver_Z3_RealReal")
    # runZ3Once("../testInstances/Wordpress4.json", "../testInstances/offersICCP2018/offers_60.json",
    #           "SMT_Solver_Z3_RealReal")
    # runZ3Once("../testInstances/Wordpress4.json", "../testInstances/offersICCP2018/offers_80.json",
    #           "SMT_Solver_Z3_RealReal")
    # runZ3Once("../testInstances/Wordpress4.json", "../testInstances/offersICCP2018/offers_100.json",
    #           "SMT_Solver_Z3_RealReal")

    # runZ3Once("../testInstances/Wordpress4.json", "../testInstances/offersICCP2018/offers_4.json",
    #           "SMT_Solver_Z3_IntIntOr")
    # runZ3Once("../testInstances/Wordpress4.json", "../testInstances/offersICCP2018/offers_10.json",
    #           "SMT_Solver_Z3_IntIntOr")
    # runZ3Once("../testInstances/Wordpress4.json", "../testInstances/offersICCP2018/offers_20.json",
    #           "SMT_Solver_Z3_IntIntOr")
    # runZ3Once("../testInstances/Wordpress4.json", "../testInstances/offersICCP2018/offers_40.json",
    #           "SMT_Solver_Z3_IntIntOr")
    # runZ3Once("../testInstances/Wordpress4.json", "../testInstances/offersICCP2018/offers_60.json",
    #           "SMT_Solver_Z3_IntIntOr")
    # runZ3Once("../testInstances/Wordpress4.json", "../testInstances/offersICCP2018/offers_80.json",
    #           "SMT_Solver_Z3_IntIntOr")
    # runZ3Once("../testInstances/Wordpress4.json", "../testInstances/offersICCP2018/offers_100.json",
    #           "SMT_Solver_Z3_IntIntOr")
    # ######################
    # ###### Wordpress5 ####
    # ######################
    #
    # runZ3Once("../testInstances/Wordpress5.json", "../testInstances/offersICCP2018/offers_4.json",
    #           "SMT_Solver_Z3_IntIntLessThan")
    # runZ3Once("../testInstances/Wordpress5.json", "../testInstances/offersICCP2018/offers_10.json",
    #           "SMT_Solver_Z3_IntIntLessThan")
    # runZ3Once("../testInstances/Wordpress5.json", "../testInstances/offersICCP2018/offers_20.json",
    #           "SMT_Solver_Z3_IntIntLessThan")
    # runZ3Once("../testInstances/Wordpress5.json", "../testInstances/offersICCP2018/offers_40.json",
    #           "SMT_Solver_Z3_IntIntLessThan")
    # runZ3Once("../testInstances/Wordpress5.json", "../testInstances/offersICCP2018/offers_60.json",
    #           "SMT_Solver_Z3_IntIntLessThan")
    # runZ3Once("../testInstances/Wordpress5.json", "../testInstances/offersICCP2018/offers_80.json",
    #           "SMT_Solver_Z3_IntIntLessThan")
    # runZ3Once("../testInstances/Wordpress5.json", "../testInstances/offersICCP2018/offers_100.json",
    #           "SMT_Solver_Z3_IntIntLessThan")
    #
    # runZ3Once("../testInstances/Wordpress5.json", "../testInstances/offersICCP2018/offers_4.json",
    #           "SMT_Solver_Z3_BV")
    # runZ3Once("../testInstances/Wordpress5.json", "../testInstances/offersICCP2018/offers_10.json",
    #           "SMT_Solver_Z3_BV")
    # runZ3Once("../testInstances/Wordpress5.json", "../testInstances/offersICCP2018/offers_20.json",
    #           "SMT_Solver_Z3_BV")
    # runZ3Once("../testInstances/Wordpress5.json", "../testInstances/offersICCP2018/offers_40.json",
    #           "SMT_Solver_Z3_BV")
    # runZ3Once("../testInstances/Wordpress5.json", "../testInstances/offersICCP2018/offers_60.json",
    #           "SMT_Solver_Z3_BV")
    # runZ3Once("../testInstances/Wordpress5.json", "../testInstances/offersICCP2018/offers_80.json",
    #           "SMT_Solver_Z3_BV")
    # runZ3Once("../testInstances/Wordpress5.json", "../testInstances/offersICCP2018/offers_100.json",
    #           "SMT_Solver_Z3_BV")
    #
    # runZ3Once("../testInstances/Wordpress5.json", "../testInstances/offersICCP2018/offers_4.json",
    #           "SMT_Solver_Z3_RealBool")
    # runZ3Once("../testInstances/Wordpress5.json", "../testInstances/offersICCP2018/offers_10.json",
    #           "SMT_Solver_Z3_RealBool")
    # runZ3Once("../testInstances/Wordpress5.json", "../testInstances/offersICCP2018/offers_20.json",
    #           "SMT_Solver_Z3_RealBool")
    # runZ3Once("../testInstances/Wordpress5.json", "../testInstances/offersICCP2018/offers_40.json",
    #           "SMT_Solver_Z3_RealBool")
    # runZ3Once("../testInstances/Wordpress5.json", "../testInstances/offersICCP2018/offers_60.json",
    #           "SMT_Solver_Z3_RealBool")
    # runZ3Once("../testInstances/Wordpress5.json", "../testInstances/offersICCP2018/offers_80.json",
    #           "SMT_Solver_Z3_RealBool")
    # runZ3Once("../testInstances/Wordpress5.json", "../testInstances/offersICCP2018/offers_100.json",
    #           "SMT_Solver_Z3_RealBool")
    #
    # runZ3Once("../testInstances/Wordpress5.json", "../testInstances/offersICCP2018/offers_4.json",
    #           "SMT_Solver_Z3_PBC_ite")
    # runZ3Once("../testInstances/Wordpress5.json", "../testInstances/offersICCP2018/offers_10.json",
    #           "SMT_Solver_Z3_PBC_ite")
    # runZ3Once("../testInstances/Wordpress5.json", "../testInstances/offersICCP2018/offers_20.json",
    #           "SMT_Solver_Z3_PBC_ite")
    # runZ3Once("../testInstances/Wordpress5.json", "../testInstances/offersICCP2018/offers_40.json",
    #           "SMT_Solver_Z3_PBC_ite")
    # runZ3Once("../testInstances/Wordpress5.json", "../testInstances/offersICCP2018/offers_60.json",
    #           "SMT_Solver_Z3_PBC_ite")
    # runZ3Once("../testInstances/Wordpress5.json", "../testInstances/offersICCP2018/offers_80.json",
    #           "SMT_Solver_Z3_PBC_ite")
    # runZ3Once("../testInstances/Wordpress5.json", "../testInstances/offersICCP2018/offers_100.json",
    #           "SMT_Solver_Z3_PBC_ite")
    #
    # runZ3Once("../testInstances/Wordpress5.json", "../testInstances/offersICCP2018/offers_4.json",
    #           "SMT_Solver_Z3_PBC_nonite")
    # runZ3Once("../testInstances/Wordpress5.json", "../testInstances/offersICCP2018/offers_10.json",
    #           "SMT_Solver_Z3_PBC_nonite")
    # runZ3Once("../testInstances/Wordpress5.json", "../testInstances/offersICCP2018/offers_20.json",
    #         "SMT_Solver_Z3_PBC_nonite")
    # runZ3Once("../testInstances/Wordpress5.json", "../testInstances/offersICCP2018/offers_40.json",
    #           "SMT_Solver_Z3_PBC_nonite")
    # runZ3Once("../testInstances/Wordpress5.json", "../testInstances/offersICCP2018/offers_60.json",
    #           "SMT_Solver_Z3_PBC_nonite")
    # runZ3Once("../testInstances/Wordpress5.json", "../testInstances/offersICCP2018/offers_80.json",
    #           "SMT_Solver_Z3_PBC_nonite")
    # runZ3Once("../testInstances/Wordpress5.json", "../testInstances/offersICCP2018/offers_100.json",
    #           "SMT_Solver_Z3_PBC_nonite")
    #
    # runZ3Once("../testInstances/Wordpress5.json", "../testInstances/offersICCP2018/offers_4.json",
    #           "SMT_Solver_Z3_IntIntOr")
    # runZ3Once("../testInstances/Wordpress5.json", "../testInstances/offersICCP2018/offers_10.json",
    #           "SMT_Solver_Z3_IntIntOr")
    # runZ3Once("../testInstances/Wordpress5.json", "../testInstances/offersICCP2018/offers_20.json",
    #           "SMT_Solver_Z3_IntIntOr")
    # runZ3Once("../testInstances/Wordpress5.json", "../testInstances/offersICCP2018/offers_40.json",
    #           "SMT_Solver_Z3_IntIntOr")
    # runZ3Once("../testInstances/Wordpress5.json", "../testInstances/offersICCP2018/offers_60.json",
    #           "SMT_Solver_Z3_IntIntOr")
    # runZ3Once("../testInstances/Wordpress5.json", "../testInstances/offersICCP2018/offers_80.json",
    #           "SMT_Solver_Z3_IntIntOr")
    # runZ3Once("../testInstances/Wordpress5.json", "../testInstances/offersICCP2018/offers_100.json",
    #           "SMT_Solver_Z3_IntIntOr")
    #
    # runZ3Once("../testInstances/Wordpress5.json", "../testInstances/offersICCP2018/offers_4.json",
    #           "SMT_Solver_Z3_RealReal")
    # runZ3Once("../testInstances/Wordpress5.json", "../testInstances/offersICCP2018/offers_10.json",
    #           "SMT_Solver_Z3_RealReal")
    # runZ3Once("../testInstances/Wordpress5.json", "../testInstances/offersICCP2018/offers_20.json",
    #           "SMT_Solver_Z3_RealReal")
    # runZ3Once("../testInstances/Wordpress5.json", "../testInstances/offersICCP2018/offers_40.json",
    #           "SMT_Solver_Z3_RealReal")
    # runZ3Once("../testInstances/Wordpress5.json", "../testInstances/offersICCP2018/offers_60.json",
    #           "SMT_Solver_Z3_RealReal")
    # runZ3Once("../testInstances/Wordpress5.json", "../testInstances/offersICCP2018/offers_80.json",
    #           "SMT_Solver_Z3_RealReal")
    # runZ3Once("../testInstances/Wordpress5.json", "../testInstances/offersICCP2018/offers_100.json",
    #           "SMT_Solver_Z3_RealReal")
    # ######################
    # ###### Wordpress6 ####
    # ######################
    #
    # runZ3Once("../testInstances/Wordpress6.json", "../testInstances/offersICCP2018/offers_4.json",
    #           "SMT_Solver_Z3_RealReal")
    # runZ3Once("../testInstances/Wordpress6.json", "../testInstances/offersICCP2018/offers_10.json",
    #           "SMT_Solver_Z3_RealReal")
    #
    # runZ3Once("../testInstances/Wordpress6.json", "../testInstances/offersICCP2018/offers_4.json",
    #           "SMT_Solver_Z3_RealBool")
    # runZ3Once("../testInstances/Wordpress6.json", "../testInstances/offersICCP2018/offers_10.json",
    #           "SMT_Solver_Z3_RealBool")
    # runZ3Once("../testInstances/Wordpress6.json", "../testInstances/offersICCP2018/offers_20.json",
    #           "SMT_Solver_Z3_RealBool")
    # runZ3Once("../testInstances/Wordpress6.json", "../testInstances/offersICCP2018/offers_40.json",
    #           "SMT_Solver_Z3_RealBool")
    runZ3Once("../testInstances/Wordpress6.json", "../testInstances/offersICCP2018/offers_60.json",
              "SMT_Solver_Z3_RealBool")
    runZ3Once("../testInstances/Wordpress6.json", "../testInstances/offersICCP2018/offers_80.json",
              "SMT_Solver_Z3_RealBool")
    # runZ3Once("../testInstances/Wordpress6.json", "../testInstances/offersICCP2018/offers_100.json",
    #           "SMT_Solver_Z3_RealBool")
    # #
    # runZ3Once("../testInstances/Wordpress6.json", "../testInstances/offersICCP2018/offers_4.json",
    #           "SMT_Solver_Z3_PBC_ite")
    # runZ3Once("../testInstances/Wordpress6.json", "../testInstances/offersICCP2018/offers_10.json",
    #           "SMT_Solver_Z3_PBC_ite")
    # runZ3Once("../testInstances/Wordpress6.json", "../testInstances/offersICCP2018/offers_20.json",
    #           "SMT_Solver_Z3_PBC_ite")
    # runZ3Once("../testInstances/Wordpress6.json", "../testInstances/offersICCP2018/offers_40.json",
    #           "SMT_Solver_Z3_PBC_ite")
    # runZ3Once("../testInstances/Wordpress6.json", "../testInstances/offersICCP2018/offers_60.json",
    #           "SMT_Solver_Z3_PBC_ite")
    # runZ3Once("../testInstances/Wordpress6.json", "../testInstances/offersICCP2018/offers_80.json",
    #           "SMT_Solver_Z3_PBC_ite")
    # runZ3Once("../testInstances/Wordpress6.json", "../testInstances/offersICCP2018/offers_100.json",
    #           "SMT_Solver_Z3_PBC_ite")
    #
    # runZ3Once("../testInstances/Wordpress6.json", "../testInstances/offersICCP2018/offers_4.json",
    #           "SMT_Solver_Z3_PBC_nonite")
    # runZ3Once("../testInstances/Wordpress6.json", "../testInstances/offersICCP2018/offers_10.json",
    #           "SMT_Solver_Z3_PBC_nonite")
    # runZ3Once("../testInstances/Wordpress6.json", "../testInstances/offersICCP2018/offers_20.json",
    #           "SMT_Solver_Z3_PBC_nonite")
    # runZ3Once("../testInstances/Wordpress6.json", "../testInstances/offersICCP2018/offers_40.json",
    #           "SMT_Solver_Z3_PBC_nonite")
    # runZ3Once("../testInstances/Wordpress6.json", "../testInstances/offersICCP2018/offers_60.json",
    #           "SMT_Solver_Z3_PBC_nonite")
    # runZ3Once("../testInstances/Wordpress6.json", "../testInstances/offersICCP2018/offers_80.json",
    #           "SMT_Solver_Z3_PBC_nonite")
    # runZ3Once("../testInstances/Wordpress6.json", "../testInstances/offersICCP2018/offers_100.json",
    #           "SMT_Solver_Z3_PBC_nonite")
    #
    # runZ3Once("../testInstances/Wordpress6.json", "../testInstances/offersICCP2018/offers_4.json",
    #           "SMT_Solver_Z3_IntIntLessThan")
    # runZ3Once("../testInstances/Wordpress6.json", "../testInstances/offersICCP2018/offers_10.json",
    #           "SMT_Solver_Z3_IntIntLessThan")
    # runZ3Once("../testInstances/Wordpress6.json", "../testInstances/offersICCP2018/offers_20.json",
    #           "SMT_Solver_Z3_IntIntLessThan")
    # runZ3Once("../testInstances/Wordpress6.json", "../testInstances/offersICCP2018/offers_40.json",
    #           "SMT_Solver_Z3_IntIntLessThan")
    # runZ3Once("../testInstances/Wordpress6.json", "../testInstances/offersICCP2018/offers_60.json",
    #           "SMT_Solver_Z3_IntIntLessThan")
    # runZ3Once("../testInstances/Wordpress6.json", "../testInstances/offersICCP2018/offers_80.json",
    #           "SMT_Solver_Z3_IntIntLessThan")
    # runZ3Once("../testInstances/Wordpress6.json", "../testInstances/offersICCP2018/offers_100.json",
    #           "SMT_Solver_Z3_IntIntLessThan")
    #
    # runZ3Once("../testInstances/Wordpress6.json", "../testInstances/offersICCP2018/offers_4.json",
    #           "SMT_Solver_Z3_IntIntOr")
    # runZ3Once("../testInstances/Wordpress6.json", "../testInstances/offersICCP2018/offers_10.json",
    #           "SMT_Solver_Z3_IntIntOr")
    # runZ3Once("../testInstances/Wordpress6.json", "../testInstances/offersICCP2018/offers_20.json",
    #           "SMT_Solver_Z3_IntIntOr")
    # runZ3Once("../testInstances/Wordpress6.json", "../testInstances/offersICCP2018/offers_40.json",
    #           "SMT_Solver_Z3_IntIntOr")
    # runZ3Once("../testInstances/Wordpress6.json", "../testInstances/offersICCP2018/offers_60.json",
    #           "SMT_Solver_Z3_IntIntOr")
    # runZ3Once("../testInstances/Wordpress6.json", "../testInstances/offersICCP2018/offers_80.json",
    #           "SMT_Solver_Z3_IntIntOr")
    # runZ3Once("../testInstances/Wordpress6.json", "../testInstances/offersICCP2018/offers_100.json",
    #           "SMT_Solver_Z3_IntIntOr")
    #
    # runZ3Once("../testInstances/Wordpress6.json", "../testInstances/offersICCP2018/offers_4.json",
    #           "SMT_Solver_Z3_BV")
    # runZ3Once("../testInstances/Wordpress6.json", "../testInstances/offersICCP2018/offers_10.json",
    #           "SMT_Solver_Z3_BV")
    # runZ3Once("../testInstances/Wordpress6.json", "../testInstances/offersICCP2018/offers_20.json",
    #           "SMT_Solver_Z3_BV")
    # runZ3Once("../testInstances/Wordpress6.json", "../testInstances/offersICCP2018/offers_40.json",
    #           "SMT_Solver_Z3_BV")
    # runZ3Once("../testInstances/Wordpress6.json", "../testInstances/offersICCP2018/offers_60.json",
    #           "SMT_Solver_Z3_BV")
    # runZ3Once("../testInstances/Wordpress6.json", "../testInstances/offersICCP2018/offers_80.json",
    #           "SMT_Solver_Z3_BV")
    # runZ3Once("../testInstances/Wordpress6.json", "../testInstances/offersICCP2018/offers_100.json",
    #           "SMT_Solver_Z3_BV")
    # ######################
    # ###### Wordpress7 ####
    # ######################
    #
    # runZ3Once("../testInstances/Wordpress7.json", "../testInstances/offersICCP2018/offers_4.json",
    #           "SMT_Solver_Z3_RealBool")
    # runZ3Once("../testInstances/Wordpress7.json", "../testInstances/offersICCP2018/offers_10.json",
    #           "SMT_Solver_Z3_RealBool")
    # runZ3Once("../testInstances/Wordpress7.json", "../testInstances/offersICCP2018/offers_20.json",
    #           "SMT_Solver_Z3_RealBool")
    # runZ3Once("../testInstances/Wordpress7.json", "../testInstances/offersICCP2018/offers_40.json",
    #           "SMT_Solver_Z3_RealBool")
    # runZ3Once("../testInstances/Wordpress7.json", "../testInstances/offersICCP2018/offers_60.json",
    #           "SMT_Solver_Z3_RealBool")
    # runZ3Once("../testInstances/Wordpress7.json", "../testInstances/offersICCP2018/offers_80.json",
    #            "SMT_Solver_Z3_RealBool")
    # runZ3Once("../testInstances/Wordpress7.json", "../testInstances/offersICCP2018/offers_100.json",
    #           "SMT_Solver_Z3_RealBool")
    #
    # runZ3Once("../testInstances/Wordpress7.json", "../testInstances/offersICCP2018/offers_4.json",
    #           "SMT_Solver_Z3_PBC_ite")
    # runZ3Once("../testInstances/Wordpress7.json", "../testInstances/offersICCP2018/offers_10.json",
    #           "SMT_Solver_Z3_PBC_ite")
    # runZ3Once("../testInstances/Wordpress7.json", "../testInstances/offersICCP2018/offers_20.json",
    #           "SMT_Solver_Z3_PBC_ite")
    # runZ3Once("../testInstances/Wordpress7.json", "../testInstances/offersICCP2018/offers_40.json",
    #           "SMT_Solver_Z3_PBC_ite")
    # runZ3Once("../testInstances/Wordpress7.json", "../testInstances/offersICCP2018/offers_60.json",
    #           "SMT_Solver_Z3_PBC_ite")
    # runZ3Once("../testInstances/Wordpress7.json", "../testInstances/offersICCP2018/offers_80.json",
    #           "SMT_Solver_Z3_PBC_ite")
    # runZ3Once("../testInstances/Wordpress7.json", "../testInstances/offersICCP2018/offers_100.json",
    #           "SMT_Solver_Z3_PBC_ite")
    #
    # runZ3Once("../testInstances/Wordpress7.json", "../testInstances/offersICCP2018/offers_4.json",
    #           "SMT_Solver_Z3_PBC_nonite")
    # runZ3Once("../testInstances/Wordpress7.json", "../testInstances/offersICCP2018/offers_10.json",
    #           "SMT_Solver_Z3_PBC_nonite")
    #
    # runZ3Once("../testInstances/Wordpress7.json", "../testInstances/offersICCP2018/offers_4.json",
    #           "SMT_Solver_Z3_IntIntLessThan")
    # runZ3Once("../testInstances/Wordpress7.json", "../testInstances/offersICCP2018/offers_10.json",
    #           "SMT_Solver_Z3_IntIntLessThan")
    # runZ3Once("../testInstances/Wordpress7.json", "../testInstances/offersICCP2018/offers_20.json",
    #           "SMT_Solver_Z3_IntIntLessThan")
    # runZ3Once("../testInstances/Wordpress7.json", "../testInstances/offersICCP2018/offers_40.json",
    #           "SMT_Solver_Z3_IntIntLessThan")
    # runZ3Once("../testInstances/Wordpress7.json", "../testInstances/offersICCP2018/offers_60.json",
    #           "SMT_Solver_Z3_IntIntLessThan")
    # runZ3Once("../testInstances/Wordpress7.json", "../testInstances/offersICCP2018/offers_80.json",
    #           "SMT_Solver_Z3_IntIntLessThan")
    # runZ3Once("../testInstances/Wordpress7.json", "../testInstances/offersICCP2018/offers_100.json",
    #           "SMT_Solver_Z3_IntIntLessThan")
    #
    # runZ3Once("../testInstances/Wordpress7.json", "../testInstances/offersICCP2018/offers_4.json",
    #           "SMT_Solver_Z3_IntIntOr")
    # runZ3Once("../testInstances/Wordpress7.json", "../testInstances/offersICCP2018/offers_10.json",
    #           "SMT_Solver_Z3_IntIntOr")
    # runZ3Once("../testInstances/Wordpress7.json", "../testInstances/offersICCP2018/offers_20.json",
    #           "SMT_Solver_Z3_IntIntOr")
    # runZ3Once("../testInstances/Wordpress7.json", "../testInstances/offersICCP2018/offers_40.json",
    #           "SMT_Solver_Z3_IntIntOr")
    # runZ3Once("../testInstances/Wordpress7.json", "../testInstances/offersICCP2018/offers_60.json",
    #           "SMT_Solver_Z3_IntIntOr")
    # runZ3Once("../testInstances/Wordpress7.json", "../testInstances/offersICCP2018/offers_80.json",
    #           "SMT_Solver_Z3_IntIntOr")
    # runZ3Once("../testInstances/Wordpress7.json", "../testInstances/offersICCP2018/offers_100.json",
    #           "SMT_Solver_Z3_IntIntOr")
    #
    # runZ3Once("../testInstances/Wordpress7.json", "../testInstances/offersICCP2018/offers_4.json",
    #           "SMT_Solver_Z3_BV")
    # runZ3Once("../testInstances/Wordpress7.json", "../testInstances/offersICCP2018/offers_10.json",
    #           "SMT_Solver_Z3_BV")
    # runZ3Once("../testInstances/Wordpress7.json", "../testInstances/offersICCP2018/offers_20.json",
    #           "SMT_Solver_Z3_BV")
    # runZ3Once("../testInstances/Wordpress7.json", "../testInstances/offersICCP2018/offers_40.json",
    #           "SMT_Solver_Z3_BV")
    # runZ3Once("../testInstances/Wordpress7.json", "../testInstances/offersICCP2018/offers_60.json",
    #           "SMT_Solver_Z3_BV")
    # runZ3Once("../testInstances/Wordpress7.json", "../testInstances/offersICCP2018/offers_80.json",
    #           "SMT_Solver_Z3_BV")
    # runZ3Once("../testInstances/Wordpress7.json", "../testInstances/offersICCP2018/offers_100.json",
    #           "SMT_Solver_Z3_BV")
    # ######################
    # ###### Wordpress8 ####
    #
    # runZ3Once("../testInstances/Wordpress8.json", "../testInstances/offersICCP2018/offers_4.json",
    #           "SMT_Solver_Z3_RealBool")
    # runZ3Once("../testInstances/Wordpress8.json", "../testInstances/offersICCP2018/offers_10.json",
    #           "SMT_Solver_Z3_RealBool")
    # runZ3Once("../testInstances/Wordpress8.json", "../testInstances/offersICCP2018/offers_20.json",
    #           "SMT_Solver_Z3_RealBool")
    # runZ3Once("../testInstances/Wordpress8.json", "../testInstances/offersICCP2018/offers_40.json",
    #           "SMT_Solver_Z3_RealBool")
    # runZ3Once("../testInstances/Wordpress8.json", "../testInstances/offersICCP2018/offers_60.json",
    #           "SMT_Solver_Z3_RealBool")
    # runZ3Once("../testInstances/Wordpress8.json", "../testInstances/offersICCP2018/offers_80.json",
    #           "SMT_Solver_Z3_RealBool")
    # runZ3Once("../testInstances/Wordpress8.json", "../testInstances/offersICCP2018/offers_100.json",
    #           "SMT_Solver_Z3_RealBool")
    #
    # runZ3Once("../testInstances/Wordpress8.json", "../testInstances/offersICCP2018/offers_4.json",
    #           "SMT_Solver_Z3_PBC_ite")
    # runZ3Once("../testInstances/Wordpress8.json", "../testInstances/offersICCP2018/offers_10.json",
    #           "SMT_Solver_Z3_PBC_ite")
    # runZ3Once("../testInstances/Wordpress8.json", "../testInstances/offersICCP2018/offers_20.json",
    #           "SMT_Solver_Z3_PBC_ite")
    # runZ3Once("../testInstances/Wordpress8.json", "../testInstances/offersICCP2018/offers_40.json",
    #           "SMT_Solver_Z3_PBC_ite")
    # runZ3Once("../testInstances/Wordpress8.json", "../testInstances/offersICCP2018/offers_60.json",
    #           "SMT_Solver_Z3_PBC_ite")
    # runZ3Once("../testInstances/Wordpress8.json", "../testInstances/offersICCP2018/offers_80.json",
    #           "SMT_Solver_Z3_PBC_ite")
    # runZ3Once("../testInstances/Wordpress8.json", "../testInstances/offersICCP2018/offers_100.json",
    #           "SMT_Solver_Z3_PBC_ite")
    #
    # runZ3Once("../testInstances/Wordpress8.json", "../testInstances/offersICCP2018/offers_4.json",
    #           "SMT_Solver_Z3_PBC_nonite")
    #
    # runZ3Once("../testInstances/Wordpress8.json", "../testInstances/offersICCP2018/offers_4.json",
    #           "SMT_Solver_Z3_IntIntLessThan")
    # runZ3Once("../testInstances/Wordpress8.json", "../testInstances/offersICCP2018/offers_10.json",
    #           "SMT_Solver_Z3_IntIntLessThan")
    # runZ3Once("../testInstances/Wordpress8.json", "../testInstances/offersICCP2018/offers_20.json",
    #           "SMT_Solver_Z3_IntIntLessThan")
    # runZ3Once("../testInstances/Wordpress8.json", "../testInstances/offersICCP2018/offers_40.json",
    #           "SMT_Solver_Z3_IntIntLessThan")
    # runZ3Once("../testInstances/Wordpress8.json", "../testInstances/offersICCP2018/offers_60.json",
    #           "SMT_Solver_Z3_IntIntLessThan")
    # runZ3Once("../testInstances/Wordpress8.json", "../testInstances/offersICCP2018/offers_80.json",
    #           "SMT_Solver_Z3_IntIntLessThan")
    # runZ3Once("../testInstances/Wordpress8.json", "../testInstances/offersICCP2018/offers_100.json",
    #           "SMT_Solver_Z3_IntIntLessThan")
    #
    # runZ3Once("../testInstances/Wordpress8.json", "../testInstances/offersICCP2018/offers_4.json",
    #           "SMT_Solver_Z3_IntIntOr")
    # runZ3Once("../testInstances/Wordpress8.json", "../testInstances/offersICCP2018/offers_10.json",
    #           "SMT_Solver_Z3_IntIntOr")
    # runZ3Once("../testInstances/Wordpress8.json", "../testInstances/offersICCP2018/offers_20.json",
    #           "SMT_Solver_Z3_IntIntOr")
    # runZ3Once("../testInstances/Wordpress8.json", "../testInstances/offersICCP2018/offers_40.json",
    #           "SMT_Solver_Z3_IntIntOr")
    # runZ3Once("../testInstances/Wordpress8.json", "../testInstances/offersICCP2018/offers_60.json",
    #           "SMT_Solver_Z3_IntIntOr")
    # runZ3Once("../testInstances/Wordpress8.json", "../testInstances/offersICCP2018/offers_80.json",
    #           "SMT_Solver_Z3_IntIntOr")
    # runZ3Once("../testInstances/Wordpress8.json", "../testInstances/offersICCP2018/offers_100.json",
    #           "SMT_Solver_Z3_IntIntOr")
    #
    # runZ3Once("../testInstances/Wordpress8.json", "../testInstances/offersICCP2018/offers_4.json",
    #           "SMT_Solver_Z3_BV")
    # runZ3Once("../testInstances/Wordpress8.json", "../testInstances/offersICCP2018/offers_10.json",
    #           "SMT_Solver_Z3_BV")
    # runZ3Once("../testInstances/Wordpress8.json", "../testInstances/offersICCP2018/offers_20.json",
    #           "SMT_Solver_Z3_BV")
    # runZ3Once("../testInstances/Wordpress8.json", "../testInstances/offersICCP2018/offers_40.json",
    #           "SMT_Solver_Z3_BV")
    # runZ3Once("../testInstances/Wordpress8.json", "../testInstances/offersICCP2018/offers_60.json",
    #           "SMT_Solver_Z3_BV")
    # runZ3Once("../testInstances/Wordpress8.json", "../testInstances/offersICCP2018/offers_80.json",
    #           "SMT_Solver_Z3_BV")
    # runZ3Once("../testInstances/Wordpress8.json", "../testInstances/offersICCP2018/offers_100.json",
    #           "SMT_Solver_Z3_BV")
    # ######################
    # ######################
    # ###### Wordpress9 ####
    # ######################
    #
    # runZ3Once("../testInstances/Wordpress9.json", "../testInstances/offersICCP2018/offers_4.json",
    #           "SMT_Solver_Z3_RealBool")
    # runZ3Once("../testInstances/Wordpress9.json", "../testInstances/offersICCP2018/offers_10.json",
    #           "SMT_Solver_Z3_RealBool")
    # runZ3Once("../testInstances/Wordpress9.json", "../testInstances/offersICCP2018/offers_20.json",
    #           "SMT_Solver_Z3_RealBool")
    # runZ3Once("../testInstances/Wordpress9.json", "../testInstances/offersICCP2018/offers_40.json",
    #           "SMT_Solver_Z3_RealBool")
    # runZ3Once("../testInstances/Wordpress9.json", "../testInstances/offersICCP2018/offers_60.json",
    #           "SMT_Solver_Z3_RealBool")
    # runZ3Once("../testInstances/Wordpress9.json", "../testInstances/offersICCP2018/offers_80.json",
    #           "SMT_Solver_Z3_RealBool")
    # runZ3Once("../testInstances/Wordpress9.json", "../testInstances/offersICCP2018/offers_100.json",
    #           "SMT_Solver_Z3_RealBool")
    #
    #
    # runZ3Once("../testInstances/Wordpress9.json", "../testInstances/offersICCP2018/offers_4.json",
    #           "SMT_Solver_Z3_PBC_ite")
    # runZ3Once("../testInstances/Wordpress9.json", "../testInstances/offersICCP2018/offers_10.json",
    #           "SMT_Solver_Z3_PBC_ite")
    # runZ3Once("../testInstances/Wordpress9.json", "../testInstances/offersICCP2018/offers_20.json",
    #           "SMT_Solver_Z3_PBC_ite")
    # runZ3Once("../testInstances/Wordpress9.json", "../testInstances/offersICCP2018/offers_40.json",
    #           "SMT_Solver_Z3_PBC_ite")
    # runZ3Once("../testInstances/Wordpress9.json", "../testInstances/offersICCP2018/offers_60.json",
    #           "SMT_Solver_Z3_PBC_ite")
    # runZ3Once("../testInstances/Wordpress9.json", "../testInstances/offersICCP2018/offers_80.json",
    #           "SMT_Solver_Z3_PBC_ite")
    # runZ3Once("../testInstances/Wordpress9.json", "../testInstances/offersICCP2018/offers_100.json",
    #           "SMT_Solver_Z3_PBC_ite")
    #
    # runZ3Once("../testInstances/Wordpress9.json", "../testInstances/offersICCP2018/offers_4.json",
    #           "SMT_Solver_Z3_IntIntLessThan")
    # runZ3Once("../testInstances/Wordpress9.json", "../testInstances/offersICCP2018/offers_10.json",
    #           "SMT_Solver_Z3_IntIntLessThan")
    # runZ3Once("../testInstances/Wordpress9.json", "../testInstances/offersICCP2018/offers_20.json",
    #           "SMT_Solver_Z3_IntIntLessThan")
    # runZ3Once("../testInstances/Wordpress9.json", "../testInstances/offersICCP2018/offers_40.json",
    #           "SMT_Solver_Z3_IntIntLessThan")
    # runZ3Once("../testInstances/Wordpress9.json", "../testInstances/offersICCP2018/offers_60.json",
    #           "SMT_Solver_Z3_IntIntLessThan")
    # runZ3Once("../testInstances/Wordpress9.json", "../testInstances/offersICCP2018/offers_80.json",
    #           "SMT_Solver_Z3_IntIntLessThan")
    # runZ3Once("../testInstances/Wordpress9.json", "../testInstances/offersICCP2018/offers_100.json",
    #           "SMT_Solver_Z3_IntIntLessThan")
    #
    #
    # runZ3Once("../testInstances/Wordpress9.json", "../testInstances/offersICCP2018/offers_4.json",
    #           "SMT_Solver_Z3_IntIntOr")
    # runZ3Once("../testInstances/Wordpress9.json", "../testInstances/offersICCP2018/offers_10.json",
    #           "SMT_Solver_Z3_IntIntOr")
    # runZ3Once("../testInstances/Wordpress9.json", "../testInstances/offersICCP2018/offers_20.json",
    #           "SMT_Solver_Z3_IntIntOr")
    # runZ3Once("../testInstances/Wordpress9.json", "../testInstances/offersICCP2018/offers_40.json",
    #           "SMT_Solver_Z3_IntIntOr")
    # runZ3Once("../testInstances/Wordpress9.json", "../testInstances/offersICCP2018/offers_60.json",
    #           "SMT_Solver_Z3_IntIntOr")
    # runZ3Once("../testInstances/Wordpress9.json", "../testInstances/offersICCP2018/offers_80.json",
    #           "SMT_Solver_Z3_IntIntOr")
    # runZ3Once("../testInstances/Wordpress9.json", "../testInstances/offersICCP2018/offers_100.json",
    #           "SMT_Solver_Z3_IntIntOr")
    #
    # runZ3Once("../testInstances/Wordpress9.json", "../testInstances/offersICCP2018/offers_4.json",
    #           "SMT_Solver_Z3_BV")
    # runZ3Once("../testInstances/Wordpress9.json", "../testInstances/offersICCP2018/offers_10.json",
    #           "SMT_Solver_Z3_BV")
    # ######################
    # ###### Wordpress10 ####
    # ######################
    #
    # runZ3Once("../testInstances/Wordpress10.json", "../testInstances/offersICCP2018/offers_4.json",
    #           "SMT_Solver_Z3_RealBool")
    # runZ3Once("../testInstances/Wordpress10.json", "../testInstances/offersICCP2018/offers_10.json",
    #           "SMT_Solver_Z3_RealBool")
    # runZ3Once("../testInstances/Wordpress10.json", "../testInstances/offersICCP2018/offers_20.json",
    #           "SMT_Solver_Z3_RealBool")
    # runZ3Once("../testInstances/Wordpress10.json", "../testInstances/offersICCP2018/offers_40.json",
    #           "SMT_Solver_Z3_RealBool")
    # runZ3Once("../testInstances/Wordpress10.json", "../testInstances/offersICCP2018/offers_60.json",
    #           "SMT_Solver_Z3_RealBool")
    # runZ3Once("../testInstances/Wordpress10.json", "../testInstances/offersICCP2018/offers_80.json",
    #           "SMT_Solver_Z3_RealBool")
    # runZ3Once("../testInstances/Wordpress10.json", "../testInstances/offersICCP2018/offers_100.json",
    #           "SMT_Solver_Z3_RealBool")
    #
    # runZ3Once("../testInstances/Wordpress10.json", "../testInstances/offersICCP2018/offers_4.json",
    #           "SMT_Solver_Z3_PBC_ite")
    # runZ3Once("../testInstances/Wordpress10.json", "../testInstances/offersICCP2018/offers_10.json",
    #           "SMT_Solver_Z3_PBC_ite")
    # runZ3Once("../testInstances/Wordpress10.json", "../testInstances/offersICCP2018/offers_20.json",
    #           "SMT_Solver_Z3_PBC_ite")
    # runZ3Once("../testInstances/Wordpress10.json", "../testInstances/offersICCP2018/offers_40.json",
    #           "SMT_Solver_Z3_PBC_ite")
    # runZ3Once("../testInstances/Wordpress10.json", "../testInstances/offersICCP2018/offers_60.json",
    #           "SMT_Solver_Z3_PBC_ite")
    # runZ3Once("../testInstances/Wordpress10.json", "../testInstances/offersICCP2018/offers_80.json",
    #           "SMT_Solver_Z3_PBC_ite")
    # runZ3Once("../testInstances/Wordpress10.json", "../testInstances/offersICCP2018/offers_100.json",
    #           "SMT_Solver_Z3_PBC_ite")
    #
    # runZ3Once("../testInstances/Wordpress10.json", "../testInstances/offersICCP2018/offers_4.json",
    #           "SMT_Solver_Z3_IntIntLessThan")
    # runZ3Once("../testInstances/Wordpress10.json", "../testInstances/offersICCP2018/offers_10.json",
    #           "SMT_Solver_Z3_IntIntLessThan")
    # runZ3Once("../testInstances/Wordpress10.json", "../testInstances/offersICCP2018/offers_20.json",
    #           "SMT_Solver_Z3_IntIntLessThan")
    # runZ3Once("../testInstances/Wordpress10.json", "../testInstances/offersICCP2018/offers_40.json",
    #           "SMT_Solver_Z3_IntIntLessThan")
    # runZ3Once("../testInstances/Wordpress10.json", "../testInstances/offersICCP2018/offers_60.json",
    #           "SMT_Solver_Z3_IntIntLessThan")
    # runZ3Once("../testInstances/Wordpress10.json", "../testInstances/offersICCP2018/offers_80.json",
    #           "SMT_Solver_Z3_IntIntLessThan")
    # runZ3Once("../testInstances/Wordpress10.json", "../testInstances/offersICCP2018/offers_100.json",
    #           "SMT_Solver_Z3_IntIntLessThan")
    #
    # runZ3Once("../testInstances/Wordpress10.json", "../testInstances/offersICCP2018/offers_4.json",
    #           "SMT_Solver_Z3_IntIntOr")
    # runZ3Once("../testInstances/Wordpress10.json", "../testInstances/offersICCP2018/offers_10.json",
    #           "SMT_Solver_Z3_IntIntOr")
    # runZ3Once("../testInstances/Wordpress10.json", "../testInstances/offersICCP2018/offers_20.json",
    #           "SMT_Solver_Z3_IntIntOr")
    # runZ3Once("../testInstances/Wordpress10.json", "../testInstances/offersICCP2018/offers_40.json",
    #           "SMT_Solver_Z3_IntIntOr")
    # runZ3Once("../testInstances/Wordpress10.json", "../testInstances/offersICCP2018/offers_60.json",
    #           "SMT_Solver_Z3_IntIntOr")
    # runZ3Once("../testInstances/Wordpress10.json", "../testInstances/offersICCP2018/offers_80.json",
    #           "SMT_Solver_Z3_IntIntOr")
    # runZ3Once("../testInstances/Wordpress10.json", "../testInstances/offersICCP2018/offers_100.json",
    #           "SMT_Solver_Z3_IntIntOr")
    #
    # runZ3Once("../testInstances/Wordpress10.json", "../testInstances/offersICCP2018/offers_4.json",
    #           "SMT_Solver_Z3_BV")
    # runZ3Once("../testInstances/Wordpress10.json", "../testInstances/offersICCP2018/offers_10.json",
    #           "SMT_Solver_Z3_BV")
    # # ######################
    # ###### Wordpress11 ####
    # ######################
    #
    # runZ3Once("../testInstances/Wordpress11.json", "../testInstances/offersICCP2018/offers_4.json",
    #           "SMT_Solver_Z3_RealBool")
    # runZ3Once("../testInstances/Wordpress11.json", "../testInstances/offersICCP2018/offers_10.json",
    #           "SMT_Solver_Z3_RealBool")
    # runZ3Once("../testInstances/Wordpress11.json", "../testInstances/offersICCP2018/offers_20.json",
    #           "SMT_Solver_Z3_RealBool")
    # runZ3Once("../testInstances/Wordpress11.json", "../testInstances/offersICCP2018/offers_40.json",
    #           "SMT_Solver_Z3_RealBool")
    # runZ3Once("../testInstances/Wordpress11.json", "../testInstances/offersICCP2018/offers_60.json",
    #           "SMT_Solver_Z3_RealBool")
    # runZ3Once("../testInstances/Wordpress11.json", "../testInstances/offersICCP2018/offers_80.json",
    #           "SMT_Solver_Z3_RealBool")
    # runZ3Once("../testInstances/Wordpress11.json", "../testInstances/offersICCP2018/offers_100.json",
    #           "SMT_Solver_Z3_RealBool")
    #
    # runZ3Once("../testInstances/Wordpress11.json", "../testInstances/offersICCP2018/offers_4.json",
    #           "SMT_Solver_Z3_PBC_ite")
    # runZ3Once("../testInstances/Wordpress11.json", "../testInstances/offersICCP2018/offers_10.json",
    #           "SMT_Solver_Z3_PBC_ite")
    # runZ3Once("../testInstances/Wordpress11.json", "../testInstances/offersICCP2018/offers_20.json",
    #           "SMT_Solver_Z3_PBC_ite")
    # runZ3Once("../testInstances/Wordpress11.json", "../testInstances/offersICCP2018/offers_40.json",
    #           "SMT_Solver_Z3_PBC_ite")
    # runZ3Once("../testInstances/Wordpress11.json", "../testInstances/offersICCP2018/offers_60.json",
    #           "SMT_Solver_Z3_PBC_ite")
    # runZ3Once("../testInstances/Wordpress11.json", "../testInstances/offersICCP2018/offers_80.json",
    #           "SMT_Solver_Z3_PBC_ite")
    # runZ3Once("../testInstances/Wordpress11.json", "../testInstances/offersICCP2018/offers_100.json",
    #           "SMT_Solver_Z3_PBC_ite")
    #
    # runZ3Once("../testInstances/Wordpress11.json", "../testInstances/offersICCP2018/offers_4.json",
    #           "SMT_Solver_Z3_IntIntLessThan")
    # runZ3Once("../testInstances/Wordpress11.json", "../testInstances/offersICCP2018/offers_10.json",
    #           "SMT_Solver_Z3_IntIntLessThan")
    # runZ3Once("../testInstances/Wordpress11.json", "../testInstances/offersICCP2018/offers_20.json",
    #           "SMT_Solver_Z3_IntIntLessThan")
    # runZ3Once("../testInstances/Wordpress11.json", "../testInstances/offersICCP2018/offers_40.json",
    #           "SMT_Solver_Z3_IntIntLessThan")
    # runZ3Once("../testInstances/Wordpress11.json", "../testInstances/offersICCP2018/offers_60.json",
    #           "SMT_Solver_Z3_IntIntLessThan")
    # runZ3Once("../testInstances/Wordpress11.json", "../testInstances/offersICCP2018/offers_80.json",
    #           "SMT_Solver_Z3_IntIntLessThan")
    # runZ3Once("../testInstances/Wordpress11.json", "../testInstances/offersICCP2018/offers_100.json",
    #           "SMT_Solver_Z3_IntIntLessThan")
    #
    # runZ3Once("../testInstances/Wordpress11.json", "../testInstances/offersICCP2018/offers_4.json",
    #           "SMT_Solver_Z3_IntIntOr")
    # runZ3Once("../testInstances/Wordpress11.json", "../testInstances/offersICCP2018/offers_10.json",
    #           "SMT_Solver_Z3_IntIntOr")
    # runZ3Once("../testInstances/Wordpress11.json", "../testInstances/offersICCP2018/offers_20.json",
    #           "SMT_Solver_Z3_IntIntOr")
    # runZ3Once("../testInstances/Wordpress11.json", "../testInstances/offersICCP2018/offers_40.json",
    #           "SMT_Solver_Z3_IntIntOr")
    # runZ3Once("../testInstances/Wordpress11.json", "../testInstances/offersICCP2018/offers_60.json",
    #           "SMT_Solver_Z3_IntIntOr")
    # runZ3Once("../testInstances/Wordpress11.json", "../testInstances/offersICCP2018/offers_80.json",
    #           "SMT_Solver_Z3_IntIntOr")
    # runZ3Once("../testInstances/Wordpress11.json", "../testInstances/offersICCP2018/offers_100.json",
    #           "SMT_Solver_Z3_IntIntOr")
    #
    # runZ3Once("../testInstances/Wordpress11.json", "../testInstances/offersICCP2018/offers_4.json",
    #           "SMT_Solver_Z3_BV")
    # runZ3Once("../testInstances/Wordpress11.json", "../testInstances/offersICCP2018/offers_10.json",
    #           "SMT_Solver_Z3_BV")
    # ######################
    # ###### Wordpress12 ####
    # ######################
    #
    # runZ3Once("../testInstances/Wordpress12.json", "../testInstances/offersICCP2018/offers_4.json",
    #           "SMT_Solver_Z3_RealBool")
    # runZ3Once("../testInstances/Wordpress12.json", "../testInstances/offersICCP2018/offers_10.json",
    #           "SMT_Solver_Z3_RealBool")
    # runZ3Once("../testInstances/Wordpress12.json", "../testInstances/offersICCP2018/offers_20.json",
    #           "SMT_Solver_Z3_RealBool")
    # runZ3Once("../testInstances/Wordpress12.json", "../testInstances/offersICCP2018/offers_40.json",
    #           "SMT_Solver_Z3_RealBool")
    # runZ3Once("../testInstances/Wordpress12.json", "../testInstances/offersICCP2018/offers_60.json",
    #           "SMT_Solver_Z3_RealBool")
    # runZ3Once("../testInstances/Wordpress12.json", "../testInstances/offersICCP2018/offers_80.json",
    #           "SMT_Solver_Z3_RealBool")
    # runZ3Once("../testInstances/Wordpress12.json", "../testInstances/offersICCP2018/offers_100.json",
    #           "SMT_Solver_Z3_RealBool")
    #
    # runZ3Once("../testInstances/Wordpress12.json", "../testInstances/offersICCP2018/offers_4.json",
    #           "SMT_Solver_Z3_PBC_ite")
    # runZ3Once("../testInstances/Wordpress12.json", "../testInstances/offersICCP2018/offers_10.json",
    #           "SMT_Solver_Z3_PBC_ite")
    # runZ3Once("../testInstances/Wordpress12.json", "../testInstances/offersICCP2018/offers_20.json",
    #           "SMT_Solver_Z3_PBC_ite")
    # runZ3Once("../testInstances/Wordpress12.json", "../testInstances/offersICCP2018/offers_40.json",
    #           "SMT_Solver_Z3_PBC_ite")
    # runZ3Once("../testInstances/Wordpress12.json", "../testInstances/offersICCP2018/offers_60.json",
    #           "SMT_Solver_Z3_PBC_ite")
    # runZ3Once("../testInstances/Wordpress12.json", "../testInstances/offersICCP2018/offers_80.json",
    #           "SMT_Solver_Z3_PBC_ite")
    # runZ3Once("../testInstances/Wordpress12.json", "../testInstances/offersICCP2018/offers_100.json",
    #           "SMT_Solver_Z3_PBC_ite")
    #
    # runZ3Once("../testInstances/Wordpress12.json", "../testInstances/offersICCP2018/offers_4.json",
    #           "SMT_Solver_Z3_IntIntLessThan")
    # runZ3Once("../testInstances/Wordpress12.json", "../testInstances/offersICCP2018/offers_10.json",
    #           "SMT_Solver_Z3_IntIntLessThan")
    # runZ3Once("../testInstances/Wordpress12.json", "../testInstances/offersICCP2018/offers_20.json",
    #           "SMT_Solver_Z3_IntIntLessThan")
    # runZ3Once("../testInstances/Wordpress12.json", "../testInstances/offersICCP2018/offers_40.json",
    #           "SMT_Solver_Z3_IntIntLessThan")
    # runZ3Once("../testInstances/Wordpress12.json", "../testInstances/offersICCP2018/offers_60.json",
    #           "SMT_Solver_Z3_IntIntLessThan")
    # runZ3Once("../testInstances/Wordpress12.json", "../testInstances/offersICCP2018/offers_80.json",
    #           "SMT_Solver_Z3_IntIntLessThan")
    # runZ3Once("../testInstances/Wordpress12.json", "../testInstances/offersICCP2018/offers_100.json",
    #           "SMT_Solver_Z3_IntIntLessThan")
    #
    # runZ3Once("../testInstances/Wordpress12.json", "../testInstances/offersICCP2018/offers_4.json",
    #           "SMT_Solver_Z3_IntIntOr")
    # runZ3Once("../testInstances/Wordpress12.json", "../testInstances/offersICCP2018/offers_10.json",
    #           "SMT_Solver_Z3_IntIntOr")
    # runZ3Once("../testInstances/Wordpress12.json", "../testInstances/offersICCP2018/offers_20.json",
    #           "SMT_Solver_Z3_IntIntOr")
    # runZ3Once("../testInstances/Wordpress12.json", "../testInstances/offersICCP2018/offers_40.json",
    #           "SMT_Solver_Z3_IntIntOr")
    # runZ3Once("../testInstances/Wordpress12.json", "../testInstances/offersICCP2018/offers_60.json",
    #           "SMT_Solver_Z3_IntIntOr")
    # runZ3Once("../testInstances/Wordpress12.json", "../testInstances/offersICCP2018/offers_80.json",
    #           "SMT_Solver_Z3_IntIntOr")
    # runZ3Once("../testInstances/Wordpress12.json", "../testInstances/offersICCP2018/offers_100.json",
    #           "SMT_Solver_Z3_IntIntOr")
    #
    # runZ3Once("../testInstances/Wordpress12.json", "../testInstances/offersICCP2018/offers_4.json",
    #           "SMT_Solver_Z3_BV")
    # runZ3Once("../testInstances/Wordpress12.json", "../testInstances/offersICCP2018/offers_10.json",
    #           "SMT_Solver_Z3_BV")
    # ###### Wordpress13 ####
    # ######################
    #
    # runZ3Once("../testInstances/Wordpress13.json", "../testInstances/offersICCP2018/offers_4.json",
    #           "SMT_Solver_Z3_RealBool")
    # runZ3Once("../testInstances/Wordpress13.json", "../testInstances/offersICCP2018/offers_10.json",
    #           "SMT_Solver_Z3_RealBool")
    # runZ3Once("../testInstances/Wordpress13.json", "../testInstances/offersICCP2018/offers_20.json",
    #           "SMT_Solver_Z3_RealBool")
    # runZ3Once("../testInstances/Wordpress13.json", "../testInstances/offersICCP2018/offers_40.json",
    #           "SMT_Solver_Z3_RealBool")
    # runZ3Once("../testInstances/Wordpress13.json", "../testInstances/offersICCP2018/offers_60.json",
    #           "SMT_Solver_Z3_RealBool")
    # runZ3Once("../testInstances/Wordpress13.json", "../testInstances/offersICCP2018/offers_80.json",
    #           "SMT_Solver_Z3_RealBool")
    # runZ3Once("../testInstances/Wordpress13.json", "../testInstances/offersICCP2018/offers_100.json",
    #           "SMT_Solver_Z3_RealBool")
    #
    # runZ3Once("../testInstances/Wordpress13.json", "../testInstances/offersICCP2018/offers_4.json",
    #           "SMT_Solver_Z3_PBC_ite")
    # runZ3Once("../testInstances/Wordpress13.json", "../testInstances/offersICCP2018/offers_10.json",
    #           "SMT_Solver_Z3_PBC_ite")
    # runZ3Once("../testInstances/Wordpress13.json", "../testInstances/offersICCP2018/offers_20.json",
    #           "SMT_Solver_Z3_PBC_ite")
    # runZ3Once("../testInstances/Wordpress13.json", "../testInstances/offersICCP2018/offers_40.json",
    #           "SMT_Solver_Z3_PBC_ite")
    # runZ3Once("../testInstances/Wordpress13.json", "../testInstances/offersICCP2018/offers_60.json",
    #           "SMT_Solver_Z3_PBC_ite")
    # runZ3Once("../testInstances/Wordpress13.json", "../testInstances/offersICCP2018/offers_80.json",
    #           "SMT_Solver_Z3_PBC_ite")
    # runZ3Once("../testInstances/Wordpress13.json", "../testInstances/offersICCP2018/offers_100.json",
    #           "SMT_Solver_Z3_PBC_ite")
    #
    # runZ3Once("../testInstances/Wordpress13.json", "../testInstances/offersICCP2018/offers_4.json",
    #           "SMT_Solver_Z3_IntIntLessThan")
    # runZ3Once("../testInstances/Wordpress13.json", "../testInstances/offersICCP2018/offers_10.json",
    #           "SMT_Solver_Z3_IntIntLessThan")
    # runZ3Once("../testInstances/Wordpress13.json", "../testInstances/offersICCP2018/offers_20.json",
    #           "SMT_Solver_Z3_IntIntLessThan")
    # runZ3Once("../testInstances/Wordpress13.json", "../testInstances/offersICCP2018/offers_40.json",
    #           "SMT_Solver_Z3_IntIntLessThan")
    # runZ3Once("../testInstances/Wordpress13.json", "../testInstances/offersICCP2018/offers_60.json",
    #           "SMT_Solver_Z3_IntIntLessThan")
    # runZ3Once("../testInstances/Wordpress13.json", "../testInstances/offersICCP2018/offers_80.json",
    #           "SMT_Solver_Z3_IntIntLessThan")
    # runZ3Once("../testInstances/Wordpress13.json", "../testInstances/offersICCP2018/offers_100.json",
    #           "SMT_Solver_Z3_IntIntLessThan")
    #
    # runZ3Once("../testInstances/Wordpress13.json", "../testInstances/offersICCP2018/offers_4.json",
    #           "SMT_Solver_Z3_IntIntOr")
    # runZ3Once("../testInstances/Wordpress13.json", "../testInstances/offersICCP2018/offers_10.json",
    #           "SMT_Solver_Z3_IntIntOr")
    # runZ3Once("../testInstances/Wordpress13.json", "../testInstances/offersICCP2018/offers_20.json",
    #           "SMT_Solver_Z3_IntIntOr")
    # runZ3Once("../testInstances/Wordpress13.json", "../testInstances/offersICCP2018/offers_40.json",
    #           "SMT_Solver_Z3_IntIntOr")
    # runZ3Once("../testInstances/Wordpress13.json", "../testInstances/offersICCP2018/offers_60.json",
    #           "SMT_Solver_Z3_IntIntOr")
    # runZ3Once("../testInstances/Wordpress13.json", "../testInstances/offersICCP2018/offers_80.json",
    #           "SMT_Solver_Z3_IntIntOr")
    # runZ3Once("../testInstances/Wordpress13.json", "../testInstances/offersICCP2018/offers_100.json",
    #           "SMT_Solver_Z3_IntIntOr")
    #    # ###### Wordpress14 ####
    # ######################
    #
    # runZ3Once("../testInstances/Wordpress14.json", "../testInstances/offersICCP2018/offers_4.json",
    #           "SMT_Solver_Z3_RealBool")
    # runZ3Once("../testInstances/Wordpress14.json", "../testInstances/offersICCP2018/offers_10.json",
    #           "SMT_Solver_Z3_RealBool")
    # runZ3Once("../testInstances/Wordpress14.json", "../testInstances/offersICCP2018/offers_20.json",
    #           "SMT_Solver_Z3_RealBool")
    # runZ3Once("../testInstances/Wordpress14.json", "../testInstances/offersICCP2018/offers_40.json",
    #           "SMT_Solver_Z3_RealBool")
    # runZ3Once("../testInstances/Wordpress14.json", "../testInstances/offersICCP2018/offers_60.json",
    #           "SMT_Solver_Z3_RealBool")
    # runZ3Once("../testInstances/Wordpress14.json", "../testInstances/offersICCP2018/offers_80.json",
    #           "SMT_Solver_Z3_RealBool")
    # runZ3Once("../testInstances/Wordpress14.json", "../testInstances/offersICCP2018/offers_100.json",
    #           "SMT_Solver_Z3_RealBool")
    #
    # runZ3Once("../testInstances/Wordpress14.json", "../testInstances/offersICCP2018/offers_4.json",
    #           "SMT_Solver_Z3_PBC_ite")
    # runZ3Once("../testInstances/Wordpress14.json", "../testInstances/offersICCP2018/offers_10.json",
    #           "SMT_Solver_Z3_PBC_ite")
    # runZ3Once("../testInstances/Wordpress14.json", "../testInstances/offersICCP2018/offers_20.json",
    #           "SMT_Solver_Z3_PBC_ite")
    # runZ3Once("../testInstances/Wordpress14.json", "../testInstances/offersICCP2018/offers_40.json",
    #           "SMT_Solver_Z3_PBC_ite")
    # runZ3Once("../testInstances/Wordpress14.json", "../testInstances/offersICCP2018/offers_60.json",
    #           "SMT_Solver_Z3_PBC_ite")
    # runZ3Once("../testInstances/Wordpress14.json", "../testInstances/offersICCP2018/offers_80.json",
    #           "SMT_Solver_Z3_PBC_ite")
    # runZ3Once("../testInstances/Wordpress14.json", "../testInstances/offersICCP2018/offers_100.json",
    #           "SMT_Solver_Z3_PBC_ite")
    #
    # runZ3Once("../testInstances/Wordpress14.json", "../testInstances/offersICCP2018/offers_4.json",
    #           "SMT_Solver_Z3_IntIntLessThan")
    # runZ3Once("../testInstances/Wordpress14.json", "../testInstances/offersICCP2018/offers_10.json",
    #           "SMT_Solver_Z3_IntIntLessThan")
    # runZ3Once("../testInstances/Wordpress14.json", "../testInstances/offersICCP2018/offers_20.json",
    #           "SMT_Solver_Z3_IntIntLessThan")
    # runZ3Once("../testInstances/Wordpress14.json", "../testInstances/offersICCP2018/offers_40.json",
    #           "SMT_Solver_Z3_IntIntLessThan")
    # runZ3Once("../testInstances/Wordpress14.json", "../testInstances/offersICCP2018/offers_60.json",
    #           "SMT_Solver_Z3_IntIntLessThan")
    # runZ3Once("../testInstances/Wordpress14.json", "../testInstances/offersICCP2018/offers_80.json",
    #           "SMT_Solver_Z3_IntIntLessThan")
    # runZ3Once("../testInstances/Wordpress14.json", "../testInstances/offersICCP2018/offers_100.json",
    #           "SMT_Solver_Z3_IntIntLessThan")
    #
    # runZ3Once("../testInstances/Wordpress14.json", "../testInstances/offersICCP2018/offers_4.json",
    #           "SMT_Solver_Z3_IntIntOr")
    # runZ3Once("../testInstances/Wordpress14.json", "../testInstances/offersICCP2018/offers_10.json",
    #           "SMT_Solver_Z3_IntIntOr")
    # runZ3Once("../testInstances/Wordpress14.json", "../testInstances/offersICCP2018/offers_20.json",
    #           "SMT_Solver_Z3_IntIntOr")
    # runZ3Once("../testInstances/Wordpress14.json", "../testInstances/offersICCP2018/offers_40.json",
    #           "SMT_Solver_Z3_IntIntOr")
    # runZ3Once("../testInstances/Wordpress14.json", "../testInstances/offersICCP2018/offers_60.json",
    #           "SMT_Solver_Z3_IntIntOr")
    # runZ3Once("../testInstances/Wordpress14.json", "../testInstances/offersICCP2018/offers_80.json",
    #           "SMT_Solver_Z3_IntIntOr")
    # runZ3Once("../testInstances/Wordpress14.json", "../testInstances/offersICCP2018/offers_100.json",
    #           "SMT_Solver_Z3_IntIntOr")
    #    # ###### Wordpress15 ####
    # ######################
    #
    # runZ3Once("../testInstances/Wordpress15.json", "../testInstances/offersICCP2018/offers_4.json",
    #           "SMT_Solver_Z3_RealBool")
    # runZ3Once("../testInstances/Wordpress15.json", "../testInstances/offersICCP2018/offers_10.json",
    #           "SMT_Solver_Z3_RealBool")
    # runZ3Once("../testInstances/Wordpress15.json", "../testInstances/offersICCP2018/offers_20.json",
    #           "SMT_Solver_Z3_RealBool")
    # runZ3Once("../testInstances/Wordpress15.json", "../testInstances/offersICCP2018/offers_40.json",
    #           "SMT_Solver_Z3_RealBool")
    # runZ3Once("../testInstances/Wordpress15.json", "../testInstances/offersICCP2018/offers_60.json",
    #           "SMT_Solver_Z3_RealBool")
    # runZ3Once("../testInstances/Wordpress15.json", "../testInstances/offersICCP2018/offers_80.json",
    #           "SMT_Solver_Z3_RealBool")
    # runZ3Once("../testInstances/Wordpress15.json", "../testInstances/offersICCP2018/offers_100.json",
    #           "SMT_Solver_Z3_RealBool")
    #
    # runZ3Once("../testInstances/Wordpress15.json", "../testInstances/offersICCP2018/offers_4.json",
    #           "SMT_Solver_Z3_PBC_ite")
    # runZ3Once("../testInstances/Wordpress15.json", "../testInstances/offersICCP2018/offers_10.json",
    #           "SMT_Solver_Z3_PBC_ite")
    # runZ3Once("../testInstances/Wordpress15.json", "../testInstances/offersICCP2018/offers_20.json",
    #           "SMT_Solver_Z3_PBC_ite")
    # runZ3Once("../testInstances/Wordpress15.json", "../testInstances/offersICCP2018/offers_40.json",
    #           "SMT_Solver_Z3_PBC_ite")
    # runZ3Once("../testInstances/Wordpress15.json", "../testInstances/offersICCP2018/offers_60.json",
    #           "SMT_Solver_Z3_PBC_ite")
    # runZ3Once("../testInstances/Wordpress15.json", "../testInstances/offersICCP2018/offers_80.json",
    #           "SMT_Solver_Z3_PBC_ite")
    # runZ3Once("../testInstances/Wordpress15.json", "../testInstances/offersICCP2018/offers_100.json",
    #           "SMT_Solver_Z3_PBC_ite")
    #
    #
    # runZ3Once("../testInstances/Wordpress15.json", "../testInstances/offersICCP2018/offers_4.json",
    #           "SMT_Solver_Z3_IntIntLessThan")
    # runZ3Once("../testInstances/Wordpress15.json", "../testInstances/offersICCP2018/offers_10.json",
    #           "SMT_Solver_Z3_IntIntLessThan")
    # runZ3Once("../testInstances/Wordpress15.json", "../testInstances/offersICCP2018/offers_20.json",
    #           "SMT_Solver_Z3_IntIntLessThan")
    # runZ3Once("../testInstances/Wordpress15.json", "../testInstances/offersICCP2018/offers_40.json",
    #           "SMT_Solver_Z3_IntIntLessThan")
    # runZ3Once("../testInstances/Wordpress15.json", "../testInstances/offersICCP2018/offers_60.json",
    #           "SMT_Solver_Z3_IntIntLessThan")
    # runZ3Once("../testInstances/Wordpress15.json", "../testInstances/offersICCP2018/offers_80.json",
    #           "SMT_Solver_Z3_IntIntLessThan")
    # runZ3Once("../testInstances/Wordpress15.json", "../testInstances/offersICCP2018/offers_100.json",
    #           "SMT_Solver_Z3_IntIntLessThan")
    #
    # runZ3Once("../testInstances/Wordpress15.json", "../testInstances/offersICCP2018/offers_4.json",
    #           "SMT_Solver_Z3_IntIntOr")
    # runZ3Once("../testInstances/Wordpress15.json", "../testInstances/offersICCP2018/offers_10.json",
    #           "SMT_Solver_Z3_IntIntOr")
    # runZ3Once("../testInstances/Wordpress15.json", "../testInstances/offersICCP2018/offers_20.json",
    #           "SMT_Solver_Z3_IntIntOr")
    # runZ3Once("../testInstances/Wordpress15.json", "../testInstances/offersICCP2018/offers_40.json",
    #           "SMT_Solver_Z3_IntIntOr")
    # runZ3Once("../testInstances/Wordpress15.json", "../testInstances/offersICCP2018/offers_60.json",
    #           "SMT_Solver_Z3_IntIntOr")
    # runZ3Once("../testInstances/Wordpress15.json", "../testInstances/offersICCP2018/offers_80.json",
    #           "SMT_Solver_Z3_IntIntOr")
    # runZ3Once("../testInstances/Wordpress15.json", "../testInstances/offersICCP2018/offers_100.json",
    #           "SMT_Solver_Z3_IntIntOr")
    #    # ###### Wordpress16 ####
    # ######################
    #
    # runZ3Once("../testInstances/Wordpress16.json", "../testInstances/offersICCP2018/offers_4.json",
    #           "SMT_Solver_Z3_RealBool")
    # runZ3Once("../testInstances/Wordpress16.json", "../testInstances/offersICCP2018/offers_10.json",
    #           "SMT_Solver_Z3_RealBool")
    # runZ3Once("../testInstances/Wordpress16.json", "../testInstances/offersICCP2018/offers_20.json",
    #           "SMT_Solver_Z3_RealBool")
    # runZ3Once("../testInstances/Wordpress16.json", "../testInstances/offersICCP2018/offers_40.json",
    #           "SMT_Solver_Z3_RealBool")
    # runZ3Once("../testInstances/Wordpress16.json", "../testInstances/offersICCP2018/offers_60.json",
    #           "SMT_Solver_Z3_RealBool")
    # runZ3Once("../testInstances/Wordpress16.json", "../testInstances/offersICCP2018/offers_80.json",
    #           "SMT_Solver_Z3_RealBool")
    # runZ3Once("../testInstances/Wordpress16.json", "../testInstances/offersICCP2018/offers_100.json",
    #           "SMT_Solver_Z3_RealBool")
    #
    #
    # runZ3Once("../testInstances/Wordpress16.json", "../testInstances/offersICCP2018/offers_4.json",
    #           "SMT_Solver_Z3_PBC_ite")
    # runZ3Once("../testInstances/Wordpress16.json", "../testInstances/offersICCP2018/offers_10.json",
    #           "SMT_Solver_Z3_PBC_ite")
    # runZ3Once("../testInstances/Wordpress16.json", "../testInstances/offersICCP2018/offers_20.json",
    #           "SMT_Solver_Z3_PBC_ite")
    # runZ3Once("../testInstances/Wordpress16.json", "../testInstances/offersICCP2018/offers_40.json",
    #           "SMT_Solver_Z3_PBC_ite")
    # runZ3Once("../testInstances/Wordpress16.json", "../testInstances/offersICCP2018/offers_60.json",
    #           "SMT_Solver_Z3_PBC_ite")
    # runZ3Once("../testInstances/Wordpress16.json", "../testInstances/offersICCP2018/offers_80.json",
    #           "SMT_Solver_Z3_PBC_ite")
    # runZ3Once("../testInstances/Wordpress16.json", "../testInstances/offersICCP2018/offers_100.json",
    #           "SMT_Solver_Z3_PBC_ite")
    #
    # runZ3Once("../testInstances/Wordpress16.json", "../testInstances/offersICCP2018/offers_4.json",
    #           "SMT_Solver_Z3_IntIntLessThan")
    # runZ3Once("../testInstances/Wordpress16.json", "../testInstances/offersICCP2018/offers_10.json",
    #           "SMT_Solver_Z3_IntIntLessThan")
    # runZ3Once("../testInstances/Wordpress16.json", "../testInstances/offersICCP2018/offers_20.json",
    #           "SMT_Solver_Z3_IntIntLessThan")
    # runZ3Once("../testInstances/Wordpress16.json", "../testInstances/offersICCP2018/offers_40.json",
    #           "SMT_Solver_Z3_IntIntLessThan")
    # runZ3Once("../testInstances/Wordpress16.json", "../testInstances/offersICCP2018/offers_60.json",
    #           "SMT_Solver_Z3_IntIntLessThan")
    # runZ3Once("../testInstances/Wordpress16.json", "../testInstances/offersICCP2018/offers_80.json",
    #           "SMT_Solver_Z3_IntIntLessThan")
    # runZ3Once("../testInstances/Wordpress16.json", "../testInstances/offersICCP2018/offers_100.json",
    #           "SMT_Solver_Z3_IntIntLessThan")
    #
    # runZ3Once("../testInstances/Wordpress16.json", "../testInstances/offersICCP2018/offers_4.json",
    #           "SMT_Solver_Z3_IntIntOr")
    # runZ3Once("../testInstances/Wordpress16.json", "../testInstances/offersICCP2018/offers_10.json",
    #           "SMT_Solver_Z3_IntIntOr")
    # runZ3Once("../testInstances/Wordpress16.json", "../testInstances/offersICCP2018/offers_20.json",
    #           "SMT_Solver_Z3_IntIntOr")
    #    # ###### Wordpress17 ####
    # ######################
    #
    # runZ3Once("../testInstances/Wordpress17.json", "../testInstances/offersICCP2018/offers_4.json",
    #           "SMT_Solver_Z3_RealBool")
    # runZ3Once("../testInstances/Wordpress17.json", "../testInstances/offersICCP2018/offers_10.json",
    #           "SMT_Solver_Z3_RealBool")
    # runZ3Once("../testInstances/Wordpress17.json", "../testInstances/offersICCP2018/offers_20.json",
    #           "SMT_Solver_Z3_RealBool")
    # runZ3Once("../testInstances/Wordpress17.json", "../testInstances/offersICCP2018/offers_40.json",
    #           "SMT_Solver_Z3_RealBool")
    # runZ3Once("../testInstances/Wordpress17.json", "../testInstances/offersICCP2018/offers_60.json",
    #           "SMT_Solver_Z3_RealBool")
    # runZ3Once("../testInstances/Wordpress17.json", "../testInstances/offersICCP2018/offers_80.json",
    #           "SMT_Solver_Z3_RealBool")
    # runZ3Once("../testInstances/Wordpress17.json", "../testInstances/offersICCP2018/offers_100.json",
    #           "SMT_Solver_Z3_RealBool")
    #
    #
    # runZ3Once("../testInstances/Wordpress17.json", "../testInstances/offersICCP2018/offers_4.json",
    #           "SMT_Solver_Z3_PBC_ite")
    # runZ3Once("../testInstances/Wordpress17.json", "../testInstances/offersICCP2018/offers_10.json",
    #           "SMT_Solver_Z3_PBC_ite")
    # runZ3Once("../testInstances/Wordpress17.json", "../testInstances/offersICCP2018/offers_20.json",
    #           "SMT_Solver_Z3_PBC_ite")
    # runZ3Once("../testInstances/Wordpress17.json", "../testInstances/offersICCP2018/offers_40.json",
    #           "SMT_Solver_Z3_PBC_ite")
    # runZ3Once("../testInstances/Wordpress17.json", "../testInstances/offersICCP2018/offers_60.json",
    #           "SMT_Solver_Z3_PBC_ite")
    # runZ3Once("../testInstances/Wordpress17.json", "../testInstances/offersICCP2018/offers_80.json",
    #           "SMT_Solver_Z3_PBC_ite")
    # runZ3Once("../testInstances/Wordpress17.json", "../testInstances/offersICCP2018/offers_100.json",
    #           "SMT_Solver_Z3_PBC_ite")
    #
    # runZ3Once("../testInstances/Wordpress17.json", "../testInstances/offersICCP2018/offers_4.json",
    #           "SMT_Solver_Z3_IntIntLessThan")
    # runZ3Once("../testInstances/Wordpress17.json", "../testInstances/offersICCP2018/offers_10.json",
    #           "SMT_Solver_Z3_IntIntLessThan")
    # runZ3Once("../testInstances/Wordpress17.json", "../testInstances/offersICCP2018/offers_20.json",
    #           "SMT_Solver_Z3_IntIntLessThan")
    # runZ3Once("../testInstances/Wordpress17.json", "../testInstances/offersICCP2018/offers_40.json",
    #           "SMT_Solver_Z3_IntIntLessThan")
    # runZ3Once("../testInstances/Wordpress17.json", "../testInstances/offersICCP2018/offers_60.json",
    #           "SMT_Solver_Z3_IntIntLessThan")
    # runZ3Once("../testInstances/Wordpress17.json", "../testInstances/offersICCP2018/offers_80.json",
    #           "SMT_Solver_Z3_IntIntLessThan")
    # runZ3Once("../testInstances/Wordpress17.json", "../testInstances/offersICCP2018/offers_100.json",
    #           "SMT_Solver_Z3_IntIntLessThan")
    #
    # runZ3Once("../testInstances/Wordpress17.json", "../testInstances/offersICCP2018/offers_4.json",
    #           "SMT_Solver_Z3_IntIntOr")
    # runZ3Once("../testInstances/Wordpress17.json", "../testInstances/offersICCP2018/offers_10.json",
    #           "SMT_Solver_Z3_IntIntOr")
    #    # ###### Wordpress18 ####
    ######################
    # runZ3Once("../testInstances/Wordpress18.json", "../testInstances/offersICCP2018/offers_4.json",
    #           "SMT_Solver_Z3_PBC_ite")
    # runZ3Once("../testInstances/Wordpress18.json", "../testInstances/offersICCP2018/offers_10.json",
    #           "SMT_Solver_Z3_PBC_ite")
    # runZ3Once("../testInstances/Wordpress18.json", "../testInstances/offersICCP2018/offers_20.json",
    #           "SMT_Solver_Z3_PBC_ite")
    # runZ3Once("../testInstances/Wordpress18.json", "../testInstances/offersICCP2018/offers_40.json",
    #           "SMT_Solver_Z3_PBC_ite")
    # runZ3Once("../testInstances/Wordpress18.json", "../testInstances/offersICCP2018/offers_60.json",
    #           "SMT_Solver_Z3_PBC_ite")
    # runZ3Once("../testInstances/Wordpress18.json", "../testInstances/offersICCP2018/offers_80.json",
    #           "SMT_Solver_Z3_PBC_ite")
    # runZ3Once("../testInstances/Wordpress18.json", "../testInstances/offersICCP2018/offers_100.json",
    #           "SMT_Solver_Z3_PBC_ite")
