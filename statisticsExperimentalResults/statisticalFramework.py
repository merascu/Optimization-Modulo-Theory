import os
import re
import collections
import statistics
import csv


def statisticsBest(path_read, path_sol, option):
    path_files = list()
    temp_files = list()
    numbers = list()
    average_list = list()
    count_encodings = list()
    standard_list = list()
    max_encodings = 0

    path1 = path_sol

    if option == "linear":
        path_sol = path_sol + "/statisticsLinear"
        path_read = path_read + "/linear"
        path_sol_count = path1 + "/countLinear"
        csv_path = path1 + "/statisticsLinear.csv"
        csv_path_count = path1 + "/countLinear.csv"
    if option == "nonlinear":
        path_sol = path_sol + "/statisticsNonlinear"
        path_read = path_read + "/nonlinear"
        path_sol_count = path1 + "/countNonlinear"
        csv_path = path1 + "/statisticsNonlinear.csv"
        csv_path_count = path1 + "/countNonlinear.csv"




    file = open(path_sol, "w+")

    for root, dirs, files in os.walk(path_read, topdown=False):
        for name in files:
            if "output_SMT_Solver_Z3_" in os.path.join(root, name):
                if "SMT2" not in os.path.join(root, name):
                    if "-Sol" not in os.path.join(root, name):
                        path_files.append(os.path.join(root, name))

    while len(path_files) > 0:
        app = path_files[0].split("csv/", 1)[1]
        if os.stat(path_files[0]).st_size > 0:
            temp_files.append(path_files[0])

        j = 1
        while j < len(path_files):
            print(path_files[j])
            app1 = path_files[j].split("csv/", 1)[1]
            if app == app1:
                if os.stat(path_files[j]).st_size > 0:
                    temp_files.append(path_files[j])
            j = j + 1

        if len(temp_files) == 0:
            temp_files.append(path_files[0])

        k = 0
        # print(temp_files)
        while k < len(temp_files):
            path_files.remove(temp_files[k])
            k = k + 1

        for st in temp_files:
            if os.stat(st).st_size > 0:
                #print(st)
                with open(st, 'r') as myfile:
                    for i, myline in enumerate(myfile):
                        if i >= 1:
                            number = myline.rsplit(",", 1)[1]
                            numbers.append(float(number))
                if len(numbers) > 0:
                    average = sum(numbers) / float(len(numbers))
                    average_list.append(average)
                    standard_dev = statistics.stdev(numbers)
                    standard_list.append(standard_dev)
                    numbers.clear()
        if len(average_list) > 0:
            # print(average_list)
            # print(standard_list)
            file.write(app.split("-")[0] + "      ")
            file.write(app.split("-")[1].split("_")[0] + app.split("-")[1].split("_")[1].split(".")[0] + "      ")
            ok = True
            if max_encodings < len(average_list):
                max_encodings = len(average_list)
            while len(average_list) > 0:
                min_value = min(average_list)
                min_index = average_list.index(min_value)
                encoding = re.search('_Solver_Z3_(.*)/csv/', temp_files[min_index])
                file.write(encoding.group(1) + "       ")
                file.write(str(min_value) + "       ")
                file.write(str(standard_list[min_index]) + "   ")
                average_list.pop(min_index)
                standard_list.pop(min_index)
                temp_files.pop(min_index)
                if ok == True:
                    count_encodings.append(encoding.group(1))
                    ok = False
            file.write("\n")


        average_list.clear()
        standard_list.clear()
        temp_files.clear()

    file.close()

    string = ''
    text = ''
    csvfile = open(csv_path,"w")
    filewriter = csv.writer(csvfile, delimiter=',',
                            quotechar='|', quoting=csv.QUOTE_MINIMAL)
    for i in range(2 + max_encodings*3):
        text = text + "{0[" + str(i) + "]:<30}"
    with open(path_sol, 'r') as f:
        for line in f:
            data = line.split()  # Splits on whitespace
            filewriter.writerow(data)
            i=0
            while len(data) < (2 + max_encodings*3):
                if i >= len(data):
                    data.insert(len(data),"")
                i = i + 1
            string = string + (text.format(data)) + "\n"
    f.close()
    csvfile.close()

    new_string = string.split("\n")
    new_string1=sorted(new_string)
    new_string1.pop(0)
    for i in range(0,len(new_string1)):
        new_string1[i] = new_string1[i] + "\n"
    new_string2 = ''.join(new_string1)
    #print(new_string2)
    f = open(path_sol, 'w')
    f.write("##########StatisticsBest##########\n")
    f.write("\n")
    f.write(new_string2)
    f.close()

    csvfile = open(csv_path_count,"w")
    filewriter = csv.writer(csvfile, delimiter=',',
                            quotechar='|', quoting=csv.QUOTE_MINIMAL)
    f = open(path_sol_count, "w")
    f.write("##########CountEncodings##########\n")
    f.write("\n")
    ctr = collections.Counter(count_encodings)
    string = ''
    for k, v in ctr.items():
        word = k + "    " + str(v);
        data = word.split()
        filewriter.writerow(data)
        string = string + ('{0[0]:<30}{0[1]:<30}'.format(data)) + "\n"
    f.write(string)
    f.close()

if __name__ == "__main__":
    statisticsBest("/Users/razvanmetes/Optimization-Modulo-Theory/experimentalResults", "/Users/razvanmetes/Optimization-Modulo-Theory/statisticsExperimentalResults/output","linear")
