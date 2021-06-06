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
            "3": self.commonGate
        }
        amps[self.selected]()

    def promt(self):
        if self.__firstRun:
            clear()
            self.__firstRun = False
        selected = input(promt)
        if selected in ["1", "2", "3"]:
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
        vout = Fraction(str(round(vdd - vtn - math.sqrt((2*drainCurrent)/(Un * cox * wl1)), 3)))

        wl2 = Fraction(str(round((2 * drainCurrent) / (Un * cox * (vout ** 2)),2)))

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
        pass


if __name__ == "__main__":
    amps = Amplifiers()
    amps.start()
