######################################################################################################
# Generation of the formulae in finite domain because z3 is able to handle them more effciently; #####
# in the end, z3 could not detect the special case so this encoding was not used anymore #############
######################################################################################################
from z3 import *
from RecomandEngine.problem.ProblemDefinition import ManeuverProblem

import time

class Z3_Solver(ManeuverProblem):
    def __init__(self, nrVm, nrComp, availableConfigurations, problem, solverType):
        self.__constMap = {}
        self.problem = problem

        if solverType == "optimize":
            self.solverTypeOptimize = True #optimize, debug
        else:
            self.solverTypeOptimize = False

        super().init(nrVm, nrComp)
        self.availableConfigurations = availableConfigurations
        self.__initSolver()


    def __initSolver(self):
        """
        Initializes the solver
        :return: None
        """
        #self.solver.set("sat.pb.solver", "solver")
        if self.solverTypeOptimize:
            self.solver = Optimize() #Optimize()
            #self.solver.set("produce-proofs", True)
        else:
            self.solver = Solver()
            self.solver.set(unsat_core=True)
            self.labelIdx = 0
            self.labelIdx_oneToOne = 0
            self.labelIdx_offer = 0
            self.labelIdx_conflict = 0

        self.__defineVariablesAndConstraints()

    def __defineVariablesAndConstraints(self):
        """
        Creates the variables used in the solver and the constraints on them as well as others (offers encoding, usage vector, etc.)
        :return: None
        """
        # VM usage vector vm in {0, 1}, k = 1..M; vm_k = 1 if at least one component is assigned to vm_k.
        self.vm = {}
        # Assignment matrix a_{alpha,k}: 1 if component alpha is on machine k, 0 otherwise
        self.a = {}
        # VMType  - type of a leased VM
        self.VMType = {}

        print("???", self.availableConfigurations)

        # values from availableConfigurations
        self.ProcProv    = [Int('ProcProv%i' % j) for j in range(1, self.nrVM + 1)]
        self.MemProv     = [Int('MemProv%i' % j) for j in range(1, self.nrVM + 1)]
        self.StorageProv = [Int('StorageProv%i' % j) for j in range(1, self.nrVM + 1)]
        self.PriceProv   = [Int('PriceProv%i' % j) for j in range(1, self.nrVM + 1)]

        # minProc = min(self.availableConfigurations[t][1] for t in range(len(self.availableConfigurations)))
        # maxProc = max(self.availableConfigurations[t][1] for t in range(len(self.availableConfigurations)))
        #
        # minMem = min(self.availableConfigurations[t][2] for t in range(len(self.availableConfigurations)))
        # maxMem = max(self.availableConfigurations[t][2] for t in range(len(self.availableConfigurations)))
        #
        # minSto = min(self.availableConfigurations[t][3] for t in range(len(self.availableConfigurations)))
        # maxSto = max(self.availableConfigurations[t][3] for t in range(len(self.availableConfigurations)))
        #
        # maxPrice = max(self.availableConfigurations[t][len(self.availableConfigurations[0]) - 1] for t in range(len(self.availableConfigurations)))

        # does it make any difference for Z3 algo ???
        # for i in range(self.nrVM):
        #     self.solver.add(self.ProcProv[i] >= minProc)
        #     self.solver.add(self.ProcProv[i] <= maxProc)
        #     self.solver.add(self.MemProv[i] >= minMem)
        #     self.solver.add(self.MemProv[i] <= maxMem)
        #     self.solver.add(self.StorageProv[i] >= minSto)
        #     self.solver.add(self.StorageProv[i] <= maxSto)
        #     self.solver.add(self.PriceProv[i] <= maxPrice)

        # auxiliary values for hardware constraints
        self.p = [Int("p%i_%i" % (k + 1, i + 1)) for k in range(self.nrComp) for i in range(self.nrVM)]
        self.m = [Int("m%i_%i" % (k + 1, i + 1)) for k in range(self.nrComp) for i in range(self.nrVM)]
        self.s = [Int("s%i_%i" % (k + 1, i + 1)) for k in range(self.nrComp) for i in range(self.nrVM)]

        # for k in range(len(self.availableConfigurations)):
        #     self.p = [Int("p%i%i" % (k + 1, i + 1) + self.componentsListcomponentsRequirements[i][0])
        #               for k in range(self.nrComp) for i in range(self.nrVM)]



            # pLst = []
            # mLst = []
            # sLst = []
            # for i in range(self.nrComp):
            #     self.solver.add(If(Not(self.a[i * self.nrVM + k]), self.p[i * self.nrVM + k] == 0,
            #                        self.p[i * self.nrVM + k] == componentsRequirements[i][0]))
            #     self.solver.add(If(Not(self.a[i * self.nrVM + k]), self.m[i * self.nrVM + k] == 0,
            #                        self.m[i * self.nrVM + k] == componentsRequirements[i][1]))
            #     self.solver.add(If(Not(self.a[i * self.nrVM + k]), self.s[i * self.nrVM + k] == 0,
            #                        self.s[i * self.nrVM + k] == componentsRequirements[i][2]))
            #


        self.vm = [Bool('VM%i' % j) for j in range(1, self.nrVM + 1)]
        # elements of VM should be positive
        #for i in range(len(self.vm)):
        #    self.solver.add(Or([self.vm[i] == 0, self.vm[i] == 1]))

        self.a = [Bool('C%i_VM%i' % (i + 1, j + 1)) for i in range(self.nrComp) for j in range(self.nrVM)]

        for j in range(self.nrVM):
            bvars = [self.a[i + j] for i in range(0, len(self.a), self.nrVM)]
            self.solver.add(Or(self.vm[j], self.PriceProv[j]<=0))
            self.solver.add(Implies(Or(bvars), self.vm[j]))

        # elements of the association matrix should be just 0 or 1
        # for i in range(len(self.a)):
        #     self.solver.add(Or([self.a[i] == 0, self.a[i] == 1]))
        # #     #self.solver.add(Sum([If(self.a[i]==0,1,0), If(self.a[i]==1,1,0)])==1)

        self.vmType = [Int('VM%iType' % j) for j in range(1, self.nrVM + 1)]
        # vmType is one of the types from availableConfigurations
        for i in range(len(self.vmType)):
            lst = [self.vmType[i] == t for t in range(1, len(self.availableConfigurations) + 1)]
            self.solver.add(Or(lst))
            # # add bounds to vmType
            # self.solver.add(self.vmType[i] >= 1)
            # self.solver.add(self.vmType[i] <= len(self.availableConfigurations))

        #If a machine is not leased then its price is 0
        for j in range(self.nrVM):
            bvars = [self.a[i + j] for i in range(0, len(self.a), self.nrVM)]
            #self.solver.add(Implies(PbEq([(x, 1) for x in bvars], 0), self.PriceProv[j] == 0))
            self.solver.add(Implies(Not(Or(bvars)), Not(self.vm[j])))
            self.solver.add(Or(self.vm[j], self.PriceProv[j] == 0))

        # encode offers
        for t in range(len(self.availableConfigurations)):
            for j in range(self.nrVM):
                if self.solverTypeOptimize:
                    bvars = [self.a[i+j] for i in range(0, len(self.a), self.nrVM)]

                    self.solver.add(Implies(And(self.vm[j], self.vmType[j] == t+1),
                            self.PriceProv[j] == (self.availableConfigurations[t][len(self.availableConfigurations[0]) - 1])))
                    self.solver.add(Implies(And(self.vm[j], self.vmType[j] == t + 1),
                                            self.ProcProv[j] == self.availableConfigurations[t][1]))
                    self.solver.add(Implies(And(self.vm[j], self.vmType[j] == t + 1), self.MemProv[j] == (self.availableConfigurations[t][2])))

                    self.solver.add(Implies(And(self.vm[j], self.vmType[j] == t + 1),
                                            self.StorageProv[j] == (self.availableConfigurations[t][3])))
                else:
                    self.solver.assert_and_track(Implies(And(PbGe([(x, 1) for x in bvars], 1), self.vmType[j] == t+1),
                            And(self.PriceProv[j] == (self.availableConfigurations[t][len(self.availableConfigurations[0]) - 1]),
                                self.ProcProv[j] == self.availableConfigurations[t][1],
                                self.MemProv[j] == (self.availableConfigurations[t][2]),
                                self.StorageProv[j] == (self.availableConfigurations[t][3])
                                )
                            ), "LabelOffer" + str(self.labelIdx_offer))
                    self.labelIdx_offer += 1

        # not needed If a machine is leased then its assignment vector is 1
        # for j in range(self.nrVM):
        #     if self.solverTypeOptimize:
        #         self.solver.add(Implies(sum([self.a[i+j] for i in range(0, len(self.a), self.nrVM)]) >= 1, self.vm[j] == 1))
        #     else:
        #         self.solver.assert_and_track(
        #             Implies(sum([self.a[i + j] for i in range(0, len(self.a), self.nrVM)]) >= 1, self.vm[j] == 1), "Label: " + str(self.labelIdx))
        #         self.labelIdx += 1

    def RestrictionConflict(self, alphaCompId, conflictCompsIdList):
        """
        Constraint describing the conflict between components. The 2 params. should not be placed on the same VM
        :param alphaCompId: id of the first conflict component
        :param conflictCompsIdList: id of the second conflict component
        :return: None
        """
        for compId in conflictCompsIdList:
            compId += 1

        self.problem.logger.debug("RestrictionConflict: alphaCompId = {} conflictComponentsList = {}".format(alphaCompId,conflictCompsIdList))

        for j in range(self.nrVM):
            for conflictCompId in conflictCompsIdList:
                #self.problem.logger.debug("...{} <= 1".format([self.a[alphaCompId * self.nrVM + j], self.a[conflictCompId * self.nrVM + j]]))
                if self.solverTypeOptimize:
                    bvars = [self.a[alphaCompId * self.nrVM + j], self.a[conflictCompId * self.nrVM + j]]
                    #It is important (assert (or (not x) (not y)))
                    self.solver.add(Not(And(bvars)))
                    #self.solver.add(PbLe([(x, 1) for x in bvars], 1))
                else:
                    bvars = [self.a[alphaCompId * self.nrVM + j], self.a[conflictCompId * self.nrVM + j]]
                    self.solver.assert_and_track(Not(And(bvars)), "LabelConflict: " + str(self.labelIdx_conflict))
                    self.labelIdx_conflict += 1

    def RestrictionOneToOneDependency(self, alphaCompId, betaCompId):
        """
        Contraint describing that alphaCompId and betaCompId should be deployed on the same VM
        :param alphaCompId: id of the first component
        :param betaCompId: id of the second component
        :return: None
        """
        for j in range(self.nrVM):
            if self.solverTypeOptimize:
                self.solver.add(self.a[alphaCompId * self.nrVM + j] == self.a[betaCompId * self.nrVM + j])
            else:
                self.solver.add(self.a[alphaCompId * self.nrVM + j] == self.a[betaCompId * self.nrVM + j], "LabelOneToOne" + str(self.labelIdx))
                self.labelIdx_oneToOne += 1

    def RestrictionManyToManyDependency(self, alphaCompId, betaCompId, relation):
        """
        The number of instances of component alphaCompId depends on the number of instances of component betaCompId
        :param alphaCompId: id of the first component
        :param betaCompId: id of the second component
        :param relation: one of the strings in the set {"=", "<=", ">="}
            "=": sum(instances of alpha component) == sum(instances of beta component)
            "<=": sum(instances of alpha component) <= sum(instances of beta component)
            ">=": sum(instances of alpha component) >= sum(instances of beta component)
        :return: None
        """
        if relation == "<=":
            if self.solverTypeOptimize:
                bvarsl = [self.a[alphaCompId * self.nrVM + j] for j in range(self.nrVM)]
                bvarsr = [self.a[betaCompId * self.nrVM + j] for j in range(self.nrVM)]
                self.solver.add(
                    PbLe([(x, 1) for x in bvarsl] + [(x, -1) for x in bvarsr], 0))
            else:
                self.solver.assert_and_track(
                    sum([self.a[alphaCompId * self.nrVM + j] for j in range(self.nrVM)]) <=
                    sum([self.a[betaCompId * self.nrVM + j] for j in range(self.nrVM)]), "LabelManyToMany1: " + str(self.labelIdx))
                self.labelIdx += 1
        elif relation == ">=":
            if self.solverTypeOptimize:
                bvarsl = [self.a[alphaCompId * self.nrVM + j] for j in range(self.nrVM)]
                bvarsr = [self.a[betaCompId * self.nrVM + j] for j in range(self.nrVM)]
                self.solver.add(
                    PbGe([(x, 1) for x in bvarsl] + [(x, 1) for x in bvarsr], 0))
            else:
                self.solver.assert_and_track(
                    sum([self.a[alphaCompId * self.nrVM + j] for j in range(self.nrVM)]) >=
                    sum([self.a[betaCompId * self.nrVM + j] for j in range(self.nrVM)]), "LabelManyToMany2: " + str(self.labelIdx))
                self.labelIdx += 1
        elif relation == "=":
            if self.solverTypeOptimize:
                bvarsl = [self.a[alphaCompId * self.nrVM + j] for j in range(self.nrVM)]
                bvarsr = [self.a[betaCompId * self.nrVM + j] for j in range(self.nrVM)]

                self.solver.add(
                    PbEq([(x, 1) for x in bvarsl] + [(x, 1) for x in bvarsr], 0))
            else:
                self.solver.assert_and_track(
                    sum([self.a[alphaCompId * self.nrVM + j] for j in range(self.nrVM)]) ==
                    sum([self.a[betaCompId * self.nrVM + j] for j in range(self.nrVM)]), "LabelManyToMany3: " + str(self.labelIdx))
                self.labelIdx += 1

    def RestrictionOneToManyDependency(self, alphaCompId, betaCompId, noInstances):
        """
        At each alphaCompId component should be deployed noInstances betaCompId components
        :param alphaCompId: id of the first component
        :param betaCompId: id of the second component
        :param noInstances: depending instances number
        :return: None
        """
        if self.solverTypeOptimize:

            bvars1 = [(self.a[alphaCompId * self.nrVM + j], noInstances) for j in range(self.nrVM)]
            bvars2 = [(self.a[betaCompId  * self.nrVM + j], -1)           for j in range(self.nrVM)]
            bvars = bvars1 + bvars2
            self.solver.add(PbGe(bvars, 0))
        else:
            self.solver.assert_and_track(
                PbGe(noInstances * sum([self.a[alphaCompId * self.nrVM + j] for j in range(self.nrVM)]) -
                              sum([self.a[betaCompId * self.nrVM + j] for j in range(self.nrVM)]), 0), "LabelOneToMany: " + str(self.labelIdx))
            self.labelIdx += 1

        if self.solverTypeOptimize:
            # substract -1 since < was replaced by <=
            # self.solver.add(
            #     PbLe(noInstances * sum([self.a[alphaCompId * self.nrVM + j] for j in range(self.nrVM)]) -
            #                   sum([self.a[betaCompId * self.nrVM + j] for j in range(self.nrVM)]) - 1, noInstances))

            bvars1 = [(self.a[alphaCompId * self.nrVM + j], noInstances) for j in range(self.nrVM)]
            bvars2 = [(self.a[betaCompId * self.nrVM + j], -1) for j in range(self.nrVM)]
            bvars = bvars1 + bvars2
            self.solver.add(PbLe(bvars, 1 + noInstances))
        else:
            self.solver.assert_and_track(
                PbLe(noInstances *
                     sum([self.a[alphaCompId * self.nrVM + j] for j in range(self.nrVM)]) -
                     sum([self.a[betaCompId  * self.nrVM + j] for j in range(self.nrVM)])-1, noInstances),
            "LabelOneToMany: " + str(self.labelIdx))
            self.labelIdx += 1

    def RestrictionUpperLowerEqualBound(self, compsIdList, bound, operator):
        """
        Defines an upper/lower/equal bound on the number of instances that a component must have
        :param compsIdList: list of components
        :param bound: a positive number
        :param operator: <=, >=, =
            "<=": sum(compsIdList) <= bound
            ">=": sum(compsIdList) >= bound
            "==":  sum(compsIdList) == bound
        :return: None
        """

        self.problem.logger.debug("RestrictionUpperLowerEqualBound: {} {} {} ".format(compsIdList, operator, bound))

        if operator == "<=":
            if self.solverTypeOptimize:
                bvars = [self.a[compId * self.nrVM + j] for compId in compsIdList for j in range(self.nrVM)]
                self.solver.add(PbLe([(x, 1) for x in bvars], bound))
            else:
                self.__constMap[str("LabelUpperLowerEqualBound" + str(self.labelIdx))] = sum([self.a[compId * self.nrVM + j] for compId in compsIdList for j in range(self.nrVM)]) <= bound
                bvars = [self.a[compId * self.nrVM + j] for compId in compsIdList for j in range(self.nrVM)]
                self.solver.assert_and_track(PbLe([(x, 1) for x in bvars], bound), "LabelUpperLowerEqualBound" + str(self.labelIdx))
                self.labelIdx += 1
        elif operator == ">=":
            if self.solverTypeOptimize:
                bvars = [self.a[compId * self.nrVM + j] for compId in compsIdList for j in range(self.nrVM)]
                self.solver.add(PbGe([(x, 1) for x in bvars], bound))
            else:
                self.__constMap[str("LabelUpperLowerEqualBound" + str(self.labelIdx))] = sum([self.a[compId * self.nrVM + j] for compId in compsIdList for j in range(self.nrVM)]) >= bound
                bvars = [self.a[compId * self.nrVM + j] for compId in compsIdList for j in range(self.nrVM)]
                self.solver.assert_and_track(PbGe([(x, 1) for x in bvars], bound), "LabelUpperLowerEqualBound" + str(self.labelIdx))
                self.labelIdx += 1
        elif operator == "=":
            if self.solverTypeOptimize:
                bvars = [self.a[compId * self.nrVM + j] for compId in compsIdList for j in range(self.nrVM)]
                self.solver.add(PbEq([(x, 1) for x in bvars], bound))
            else:
                self.__constMap[str("LabelUpperLowerEqualBound" + str(self.labelIdx))] = sum([self.a[compId * self.nrVM + j] for compId in compsIdList for j in range(self.nrVM)]) == bound

                self.solver.assert_and_track(
                    sum([self.a[compId * self.nrVM + j] for compId in compsIdList for j in range(self.nrVM)]) == bound, "LabelUpperLowerEqualBound" + str(self.labelIdx))
                self.labelIdx += 1
        else:
            self.problem.logger.info("Unknown operator")

    def RestrictionRangeBound(self, compsIdList, lowerBound, upperBound):
        """
        Defines a lower and upper bound of instances that a component must have
        :param compsIdList: list of components
        :param lowerBound: a positive number
        :param upperBound: a positive number
        :return:
        """
        for i in range(len(compsIdList)): compsIdList[i] -= 1
        if self.solverTypeOptimize:
            self.solver.add(PbGe(self.solver.add(
                Or([self.a[compId * self.nrVM + j] for compId in compsIdList for j in range(self.nrVM)]),
                upperBound)))
        else:
            self.solver.assert_and_track(
                PbGe(sum([self.a[compId * self.nrVM + j] for compId in compsIdList for j in range(self.nrVM)]),
                     lowerBound), "LabelRangeBound: " + str(self.labelIdx))
            self.labelIdx += 1
        if self.solverTypeOptimize:
            self.solver.add(PbLe(self.solver.add(Or([self.a[compId * self.nrVM + j] for compId in compsIdList for j in range(self.nrVM)]),
            upperBound)))
        else:
            self.solver.assert_and_track(
                sum([self.a[compId * self.nrVM + j] for compId in compsIdList for j in range(self.nrVM)]) <= upperBound, "LabelRangeBound: " + str(self.labelIdx))
            self.labelIdx += 1

    def RestrictionFullDeployment(self, alphaCompId, notInConflictCompsIdList):
        """
        Adds the fact that the component alphaCompId must be deployed on all machines except the ones that contain
         components that alphaCompId alpha is in conflict with
        :param alphaCompId: the component which must be fully deployed
        :param notInConflictCompsIdList: the list of components that alphaCompId is not in conflict in
        :return: None
        """
        for j in range(self.nrVM):
            if self.solverTypeOptimize:
                bvars1 = [self.a[alphaCompId * self.nrVM + j]]
                bvars2 = [self.a[_compId * self.nrVM + j] for _compId in notInConflictCompsIdList]
                bvars3 = [self.a[i+j] for i in range(0, len(self.a), self.nrVM)]
                bvars = bvars1 + bvars2

                self.solver.add(Implies(PbGe([(x, 1) for x in bvars3], 1), PbEq([(x, 1) for x in bvars], 1)))

            else:
                self.solver.assert_and_track(
                    (sum([If(self.a[alphaCompId * self.nrVM + j], 1, 0)] + [If(self.a[_compId * self.nrVM + j], 1, 0) for _compId in notInConflictCompsIdList])) ==
                    (sum([If(self.a[i + j], 1, 0) for i in range(0, len(self.a), self.nrVM)]) >= 1),
                    "LabelFullDeployment: " + str(self.labelIdx)
                )
                self.labelIdx += 1

    def RestrictionRequireProvideDependency(self, alphaCompId, betaCompId, alphaCompIdInstances, betaCompIdInstances):
        """
        The number of instances of component alpha depends on the number of instances of component beta
        :param alphaCompId: id of the first component
        :param betaCompId: id of the second component
        :param alphaCompIdInstances: number of instances of component alphaCompId
        :param betaCompIdInstances: number of instances of component betaCompId
        :return: None
        """
        #self.problem.logger.debug("RestrictionRequireProvideDependency: alphaCompId={}, betaCompId={}, alphaCompIdInstances={}, "
        #                          "betaCompIdInstances={}".format(alphaCompId, betaCompId, alphaCompIdInstances, betaCompIdInstances))

        if self.solverTypeOptimize:

            bvars1 = [(self.a[alphaCompId * self.nrVM + j],  alphaCompIdInstances) for j in range(self.nrVM)]
            bvars2 = [(self.a[betaCompId  * self.nrVM + j], -betaCompIdInstances)  for j in range(self.nrVM)]
            bvars = bvars1 + bvars2

            self.solver.add(PbLe( [x for x in bvars], 0))
        else:
            self.__constMap["LabelRequireProvide: " + str(self.labelIdx)] = \
                alphaCompIdInstances * sum([If(self.a[alphaCompId * self.nrVM + j], 1, 0) for j in range(self.nrVM)]) \
                <= \
                betaCompIdInstances * sum([If(self.a[betaCompId * self.nrVM + j], 1, 0) for j in range(self.nrVM)])
            self.solver.assert_and_track(
                alphaCompIdInstances * sum([If(self.a[alphaCompId * self.nrVM + j], 1, 0) for j in range(self.nrVM)]) <=
                betaCompIdInstances  * sum([If(self.a[betaCompId * self.nrVM + j],1, 0) for j in range(self.nrVM)]), "LabelRequireProvide: " + str(self.labelIdx))
            self.labelIdx += 1

    def RestrictionAlphaOrBeta(self, alphaCompId, betaCompId):
        """
        Describes the fact that alphaCompId or betaCompId not both
        :param alphaCompId: id of the first component
        :param betaCompId: id of the second component
        :return:
        """
        self.problem.logger.debug("RestrictionAlphaOrBeta: alphaCompId={}, betaCompId={}".format(alphaCompId, betaCompId))
        if self.solverTypeOptimize:

            bvars1 = [self.a[betaCompId * self.nrVM + j] for j in range(self.nrVM)]
            #self.solver.add(PbEq([(x, 1) for x in bvars1], 0))

            bvars2 = [self.a[betaCompId * self.nrVM + j] for j in range(self.nrVM)]
            #self.solver.add(PbGe([(x, 1) for x in bvars2], 1))


            # self.solver.add(Or(And([Not(x) for x in bvars1]),
            #                    PbGe([(x, 1) for x in bvars2], 1))
            #                )
            self.solver.add(Or(And([Not(x) for x in bvars1]), Or(bvars2)))
        else:
            self.solver.assert_and_track(
                Or(sum([If(self.a[betaCompId * self.nrVM + j], 1, 0) for j in range(self.nrVM)]) == 0,
                   sum([If(self.a[betaCompId * self.nrVM + j], 1, 0) for j in range(self.nrVM)]) >= 1),
                "LabelAlphaOrBeta: " + str(self.labelIdx))
            self.labelIdx += 1
        if self.solverTypeOptimize:

            bvars1 = [self.a[alphaCompId * self.nrVM + j] for j in range(self.nrVM)]
            # self.solver.add(PbEq([(x, 1) for x in bvars1], 0))

            bvars2 = [self.a[alphaCompId * self.nrVM + j] for j in range(self.nrVM)]
            # self.solver.add(PbGe([(x, 1) for x in bvars2], 1))

            # self.solver.add(Or(PbEq([(x, 1) for x in bvars1], 0),
            #                    PbGe([(x, 1) for x in bvars2], 1))

            # self.solver.add(Or(And([Not(x) for x in bvars1]), PbGe([(x, 1) for x in bvars2], 1)))
            self.solver.add(Or(And([Not(x) for x in bvars1]), Or(bvars2)))

        else:
            self.solver.assert_and_track(
                Or(sum([If(self.a[alphaCompId * self.nrVM + j], 1 , 0) for j in range(self.nrVM)]) == 0,
                   sum([If(self.a[alphaCompId * self.nrVM + j], 1, 0)  for j in range(self.nrVM)]) >= 1), "LabelAlphaOrBeta: " + str(self.labelIdx))
            self.labelIdx += 1

        if self.solverTypeOptimize:

            bvars1 = [self.a[betaCompId * self.nrVM + j] for j in range(self.nrVM)]
            bvars2 = [self.a[alphaCompId * self.nrVM + j] for j in range(self.nrVM)]
            bvars = bvars1 + bvars2
            # self.solver.add(PbGe([(x, 1) for x in bvars], 1))
            self.solver.add(Or(bvars))
        else:
            self.solver.assert_and_track(sum([If(self.a[betaCompId * self.nrVM + j], 1, 0) for j in range(self.nrVM)]) +
                                         sum([If(self.a[alphaCompId * self.nrVM + j], 1, 0) for j in range(self.nrVM)]) >= 1, "LabelAlphaOrBeta: " + str(self.labelIdx))
            self.labelIdx += 1

    def constraintsHardware(self, componentsRequirements):
        """
        Describes the hardware requirements for each component
        :param componentsRequirements: list of components requirements as given by the user
        :return: None
        """

        print("constraintsHardware")

        self.problem.logger.debug("constraintsHardware: componentsRequirements={}".format(componentsRequirements))
        componentsRequirements = [[0 if i is None else i for i in line] for line in componentsRequirements]

        # for j in range(self.nrVM):
        #     pVars = [self.p[i + j] for i in range(0, len(self.p), self.nrVM)]
        #     pVals = [componentsRequirements[i][0] for i in range(self.nrComp)]
        #     mVars = [self.m[i + j] for i in range(0, len(self.p), self.nrVM)]
        #     mVals = [componentsRequirements[i][1] for i in range(self.nrComp)]
        #     sVars = [self.s[i + j] for i in range(0, len(self.p), self.nrVM)]
        #     sVals = [componentsRequirements[i][2] for i in range(self.nrComp)]
        #     # print("bvars=", bvars)
        #     # print("vals=", vals)
        #     for i in range(len(pVars)):
        #         self.solver.add(Or(pVars[i]==0, pVars[i]==pVals[i]))
        #         self.solver.add(Or(mVars[i]==0, mVars[i]==mVals[i]))
        #         self.solver.add(Or(sVars[i]==0, sVars[i]==sVals[i]))

        tmpP = []
        tmpM = []
        tmpS = []
        for k in range(self.nrVM):
            pLst = []
            mLst = []
            sLst = []
            for i in range(self.nrComp):
                self.solver.add(If(Not(self.a[i * self.nrVM + k]), self.p[i * self.nrVM + k] == 0,
                                   self.p[i * self.nrVM + k] == componentsRequirements[i][0]))
                self.solver.add(If(Not(self.a[i * self.nrVM + k]), self.m[i * self.nrVM + k] == 0,
                                   self.m[i * self.nrVM + k] == componentsRequirements[i][1]))
                self.solver.add(If(Not(self.a[i * self.nrVM + k]), self.s[i * self.nrVM + k] == 0,
                                   self.s[i * self.nrVM + k] == componentsRequirements[i][2]))

                pLst.append(self.p[i * self.nrVM + k])
                mLst.append(self.m[i * self.nrVM + k])
                sLst.append(self.s[i * self.nrVM + k])
            tmpP.append(sum(pLst) <= self.ProcProv[k])
            tmpM.append(sum(mLst) <= self.MemProv[k])
            tmpS.append(sum(sLst) <= self.StorageProv[k])

            # self.solver.minimize(sum(pLst))
            # self.solver.minimize(sum(mLst))
            # self.solver.minimize(sum(sLst))
        self.solver.add(tmpP)
        self.solver.add(tmpM)
        self.solver.add(tmpS)

    def run(self, smt2lib, smt2libsol):
        self.return_ = """
        Invokes the solving of the problem (solution and additional effect like creation of special files)
        :param smt2lib: string indicating a file name storing the SMT2LIB encoding of the problem
        :param smt2libsol: string indicating a file name storing the solution of the problem together with a model (if applicable)
        :return:
        """

        if self.solverTypeOptimize:
            self.PriceProv = [Int('PriceProv%i' % j) for j in range(1, self.nrVM + 1)]
            opt = sum(self.PriceProv)
            min = self.solver.minimize(opt)

            # can not use this since self.PriceProv[j] must be a constant
            # for j in range(self.nrVM):
            #     self.solver.add_soft(Not(self.vm[j]), weight=1, id="numVMs")
            #     self.solver.add_soft(Not(self.vm[j]), weight=self.PriceProv[j], id="cost")

        self.createSMT2LIBFile(smt2lib)

        startime = time.time()
        status = self.solver.check()
        stoptime = time.time()

        if not self.solverTypeOptimize:
            c = self.solver.unsat_core()
            self.problem.logger.debug("unsat_constraints= {}".format(c))
            for cc in c:
                self.problem.logger.debug("Constraint label: {} constraint description {}".format(str(cc), self.__constMap[cc]))

        self.problem.logger.info("Z3 status: {}".format(status))

        if status == sat:
            model = self.solver.model()
            print("Column represents VM number")
            for i in range(self.nrComp):
                l = []
                for k in range(self.nrVM):
                    l.append(model[self.a[i * self.nrVM + k]])
                print(l)
            ll = []
            for k in range(self.nrVM):
                ll.append(model[self.PriceProv[k]])
            #print("Price for each machine")
            #print(ll)

        self.createSMT2LIBFileSolution(smt2libsol, status, model)
        return min.value()/1000, ll, stoptime - startime

    def createSMT2LIBFile(self, fileName):
        """
        File creation
        :param fileName: string representing the file name storing the SMT2LIB formulation of the problem
        :return:
        """
        with open(fileName, 'w+') as fo:
            fo.write("(set-logic QF_FD)\n")
            # fo.write("(set-option :opt.enable_sat true)\n")
           # fo.write("(set-option :sat.cardinality.solver true)\n")
        fo.close()

        with open(fileName, 'a+') as fo:
            #fo.truncate(0)
            self.solver.sexpr()
            fo.write(self.solver.sexpr())
            fo.write("(get-objectives)\n")
            fo.write("(get-model)\n")
            fo.write("(exit)\n")
        fo.close()

    def createSMT2LIBFileSolution(self, fileName, status, model):
        """
        File creation
        :param fileName: string representing the file name storing the SMT2LIB formulation of the problem
        :param status: SAT/UNSAT
        :param model: string representing key-values pairs for the variables in the model
        :return:
        """
        with open(fileName, 'w+') as foo:
            foo.truncate(0)
            foo.write(repr(status)+ '[\n')
            for k in model:
                foo.write('%s = %s, ' % (k, model[k]))
                foo.write('\n')
            foo.write(']')
        foo.close()