import sqlite3
import csv
import os

csv_files = ['Course.csv']

def read_in(proposer_csv):
    data = []
    with open(proposer_csv, 'r') as p:
        proposer_reader = csv.reader(p)
        for row in proposer_reader:
            data.append(row)
    return data


def make_sql_lines(table_name, data, headers):
    with open('insert_'+table_name+'.sql','w') as f:
        for entry in data:
            f.write(f'INSERT INTO {table_name}({headers[0]}) VALUES(')
            for value in range(len(entry)):
                if find_num(entry[value]):
                    val = int(entry[value])
                    print(val)
                else:
                    val = f"'{entry[value]}'"
                    print(val, 'loop')
                f.write(f'{val},')
            f.write(f');\n')


def find_num(value):
    num_list = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9"]
    for num in num_list:
        if num in value:
            return True
    return False




def main():
    for csv_file in csv_files:
        data = read_in(csv_file)
        print(data)
        table_name = csv_file.strip('.csv')
        headers = data[0]
        just_data = data[1:]
        print(just_data)
        make_sql_lines(table_name, just_data, headers)






if __name__ == '__main__':
    main()
