//这只是一个解析excel,对应数据库的例子
const xlsx = require('node-xlsx');
const NewTables = require('../table.js');

const workSheetsFromFile = xlsx.parse(`${__dirname}/新闻标签划分.xlsx`);

const data = workSheetsFromFile[0].data;

for (let i = 0; i < data.length; i++) {
    // 去除列标题
    if (i === 0) {
        continue;
    }
    let title = data[i][0];
    if (title) {
        NewTables.news.find({ where: { title: title } }).then((news) => {
            console.log(title);
            data[i].forEach((label, index) => {
                if (label && index !== 0) {
                    console.log(index);
                    NewTables.newsLabel.create({
                        newsId: news.id,
                        labelId: index,
                    })
                }
            })
        })
    }
}