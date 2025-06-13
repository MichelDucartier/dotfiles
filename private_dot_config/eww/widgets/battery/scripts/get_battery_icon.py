import sys


def main():
    if len(sys.argv) <= 1:
        print("󰁹")
        return

    icons = ["󰁹", "󰂂", "󰂁", "󰂀", "󰁿", "󰁾", "󰁽", "󰁼", "󰁻", "󰁺"][::-1]
    percentage = min(100, max(0, int(sys.argv[1])))
    print(icons[((percentage - 1) // 10)])

if __name__ == '__main__':
    main()
