import terminaltables
from common import clear
from fractions import Fraction
from terminaltables import SingleTable
import math

promt = """Select the amplifier type.
1. Common Source Amplifier
2. Common Drain Amplifier
3. Common Gate Amplifier
4. Differential Amplifier

: """


class Amplifiers():
    def __init__(self) -> None:
        self.__firstRun = True

    def start(self):
        self.promt()
        amps = {
            "1": self.commonSource,
            "2": self.commonDrain,
            "3": self.commonGate,
            "4": self.differential
        }
        amps[self.selected]()

    def promt(self):
        if self.__firstRun:
            clear()
            self.__firstRun = False
        selected = input(promt)
        if selected in ["1", "2", "3", "4"]:
            self.selected = selected
        else:
            clear()
            print("Invalid input...")
            self.promt()

    def commonSource(self):
        clear()
        self.gain = abs(float(input("Enter the design gain (Av): ")))
        self.ratioNMOS = Fraction(
            input("Enter the W/L ratio of NMOS (eg: 6/1 | 10/1): "))
        self.ratioPMOS = Fraction((2 * self.ratioNMOS) / (self.gain ** 2))

        data = [["Designed Gain", -self.gain],
                ["NMOS | (W/L)1", self.ratioNMOS, float(self.ratioNMOS)],
                ["PMOS | (W/L)2", self.ratioPMOS, float(self.ratioPMOS)]]

        table = SingleTable(data, "Common Source Amplifier")

        table.inner_row_border = True
        table.justify_columns = {0: 'center', 1: 'center'}
        table.inner_heading_row_border = True

        clear()
        print(table.table)

    def commonDrain(self):
        clear()
        drainCurrent = Fraction(
            input("Enter the drain current Id (mA): ")) / (10 ** 3)
        vin = Fraction(input("Enter Vin (V) (Default is 0.5): "))
        wl1 = Fraction(input("Enter the ratio (W/L)1 (eg: 6/6 | 7/7): "))
        cox = Fraction(2484, 10 ** 6)
        Un = Fraction(45843, 10 ** 6)
        vtn = Fraction(7, 10)
        vdd = Fraction(5)

        # vout = vdd - vtn - math.sqrt((2*drainCurrent)/Un * cox * wl1)
        vout = Fraction(
            str(round(vdd - vtn - math.sqrt((2*drainCurrent)/(Un * cox * wl1)), 3)))

        wl2 = Fraction(
            str(round((2 * drainCurrent) / (Un * cox * (vout ** 2)), 2)))

        data = [
            ["Drain Current (Id)", drainCurrent],
            ["VDD", vdd],
            ["Vt", vtn],
            ["Vout", vout],
            ["(W/L)1", wl1],
            ["(W/L)2", wl2]
        ]

        table = SingleTable(data, "Common Drain Amplifier")
        table.inner_row_border = True
        table.justify_columns = {0: 'center', 1: 'center'}
        table.inner_heading_row_border = True

        clear()
        print(table.table)

    def commonGate(self):
        clear()
        self.gain = abs(float(input("Enter the design gain (Av): ")))
        self.ratioNMOS = Fraction(
            input("Enter the W/L ratio of NMOS (eg: 6/1 | 10/1): "))
        self.ratioPMOS = Fraction((2 * self.ratioNMOS) / (self.gain ** 2))

        data = [["Designed Gain", self.gain],
                ["NMOS | (W/L)1", round(float(self.ratioNMOS),2)],
                ["PMOS | (W/L)2", round(float(self.ratioPMOS),2)]]

        table = SingleTable(data, "Common Source Amplifier")

        table.inner_row_border = True
        table.justify_columns = {0: 'center', 1: 'center'}
        table.inner_heading_row_border = True

        clear()
        print(table.table)

    def differential(self):
        clear()
        Un = Fraction(45843, 10**6)
        Up = Fraction(21201661, 10**9)
        Cox = Fraction(2484, 10**6)
        Vdd = 5
        # gain = Fraction(input("Enter the gain (Av): "))
        loadCapacitance = Fraction(
            input("Enter the load capacitance in pico farad (pF): "))/10 ** 12
        icmrP = 4
        icmrN = Fraction(15, 10)
        slewRate = Fraction(input("Enter the slew rate (V/uA): ")) * (10 ** 6)
        gainBandwdithProduct = Fraction(
            input("Enter the gain bandwidth product (GBP) in MHz: ")) * (10**6)
        Vtn = Fraction(7, 10)
        Vtp = Fraction(9214, 10**4)

        # CALCULATIONS

        drainCurrent = loadCapacitance * slewRate
        Vx = icmrP - Vtn
        Vds3 = Vdd - Vx
        wl3 = (2 * drainCurrent / 2) / (Up * Cox * ((Vdd - Vx - Vtp) ** 2))
        gm1 = gainBandwdithProduct * 2 * Fraction(22/7) * loadCapacitance
        wl1 = (gm1 ** 2)/(drainCurrent * Un * Cox)
        Vgs1 = math.sqrt((drainCurrent)/(Un * Cox * (wl1))) + Vtn
        Vds5 = icmrN - Vgs1
        wl5 = drainCurrent*2 / ((Vds5 ** 2) * Un * Cox)

        wl1 = round(float(wl1), 2)
        wl3 = round(float(wl3), 2)
        wl5 = round(float(wl5), 2)


        data = [\
            # ["Gain", float(gain)],
            ["Load Capacitance", float(loadCapacitance)],
            # ["icmrP", float(icmrP)],
            # ["icmrN", float(icmrN)],
            ["gainBandwdithProduct", float(gainBandwdithProduct)],
            # ["Vtn", float(Vtn)],
            # ["Vtp", float(Vtp)],
            ["Drain Current (Id)", float(drainCurrent)],
            ["Volateg at M1 (Vx)", float(Vx)],
            ["Voltage accross M3 & M4 (Vds3)", float(Vds3)],
            ["(W/L)3 - (W/L)4", float(wl3)],
            ["Trans-conductance (gm1)", float(gm1)],
            ["(W/L)1 - (W/L)2", float(wl1)],
            ["G-S Voltage of M1 & M2 (Vgs1)", float(Vgs1)],
            ["(W/L)5 - (W/L)8", float(wl5)]
        ]
        table = SingleTable(data, "Differential Amplifier")
        table.inner_row_border = True
        table.justify_columns = {0: 'center', 1: 'center'}
        table.inner_heading_row_border = True
        print(table.table)

        data = [
            ["(W/L)1", "(W/L)2", "(W/L)3", "(W/L)4", "(W/L)5", "(W/L)8"],
            [wl1, wl1, wl3, wl3, wl5, wl5]
        ]
        table = SingleTable(data, "Width / Length Ratios")
        table.inner_row_border = True
        table.justify_columns = {0: 'center', 1: 'center'}
        table.inner_heading_row_border = True
        print(table.table)


if __name__ == "__main__":
    amps = Amplifiers()
    amps.start()
