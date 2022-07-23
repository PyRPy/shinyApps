// write data into excel sheet
// https://www.geeksforgeeks.org/how-to-read-and-write-excel-file-in-node-js/
const reader = require('xlsx')

const file = reader.readFile('test.xlsx')

let more_data = [
    {Name: 'Kent', ID: 9, Books: 'Nomore', Journals: 'Onemore'},
    {Name: 'Ken', ID: 10, Books: 'Nomore', Journals: 'Onemore'},
    {Name: 'Jen', ID: 11, Books: 'Nomore', Journals: 'Onemore'}
]

const ws = reader.utils.json_to_sheet(more_data)
reader.utils.book_append_sheet(file, ws, "Sheet3")
reader.writeFile(file, 'test.xlsx')