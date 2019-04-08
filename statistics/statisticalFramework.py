import os
import re
import collections


def statisticsBest(option):
    path_files = list()
    temp_files = list()
    numbers = list()
    average_list = list()
    count_encodings = list()

    if option == "linear":
        path_sol = "../Optimization-Modulo-Theory/statistics/statisticsLinear"
        path_read = "../Optimization-Modulo-Theory/experimentalResults/linear"
    else:
        path_sol = "../Optimization-Modulo-Theory/statistics/statisticsNonlinear"
        path_read = "../Optimization-Modulo-Theory/experimentalResults/nonlinear"

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
                            number = 0
                            number = myline.rsplit(",", 1)[1]
                            numbers.append(float(number))
                if len(numbers) > 0:
                    average = sum(numbers) / float(len(numbers))
                    # print(average)
                    average_list.append(average)
                    numbers.clear()
        if len(average_list) > 0:
            #print(average_list)
            min_value = min(average_list)
            min_index = average_list.index(min_value)
            #print("###########")
            #print(temp_files[min_index])
            file.write(app.split("-")[0] + "      ")
            file.write(app.split("-")[1].split("_")[0] + app.split("-")[1].split("_")[1].split(".")[0] + "      ")
            encoding = re.search('_Solver_Z3_(.*)/csv/', temp_files[min_index])
            file.write(encoding.group(1) + "       ")
            file.write(str(min_value))
            file.write("\n")
            count_encodings.append(encoding.group(1))

        average_list.clear()
        temp_files.clear()

    file.close()
    string = ''
    with open(path_sol, 'r') as f:
        for line in f:
            data = line.split()  # Splits on whitespace
            string = string + ('{0[0]:<30}{0[1]:<20}{0[2]:<20}{0[3]:<20}'.format(data)) + "\n"
    f.close()

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
    f.write("\n")
    f.write("##########CountEncodings##########\n")
    f.write("\n")
    ctr = collections.Counter(count_encodings)
    string = ''
    for k, v in ctr.items():
        word = k + "    " + str(v);
        data = word.split()
        string = string + ('{0[0]:<30}{0[1]:<20}'.format(data)) + "\n"
    f.write(string)
    f.close()

if __name__ == "__main__":
    statisticsBest("linear")
