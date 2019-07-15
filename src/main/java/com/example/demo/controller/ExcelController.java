package com.example.demo.controller;

import com.example.demo.dao.BumenMapper;
import com.example.demo.dao.RenyuanMapper;
import com.example.demo.dao.ShisuanMapper;
import com.example.demo.entity.Bumen;
import com.example.demo.entity.ExcelData;
import com.example.demo.entity.Renyuan;
import com.example.demo.entity.Shisuan;
import com.example.demo.util.ExcelUtils;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@RestController
@RequestMapping("excel")
public class ExcelController {
    @Autowired
    BumenMapper bumenMapper;
    @Autowired
    RenyuanMapper renyuanMapper;
    @Autowired
    ShisuanMapper shisuanMapper;

    @RequestMapping("/export")
    public void test2(HttpServletResponse response, @RequestParam List lists){
        int rowIndex = 0;
        List<Shisuan> list = lists;
        List<Bumen> bList=bumenMapper.queryAll();
        ExcelData data = new ExcelData();
        data.setName("信息");
        List<String> titles = new ArrayList();
        titles.add("序号");
        titles.add("中队");
        titles.add("项目名称");
        titles.add("人数");
        titles.add("工资");
        titles.add("税费");
        titles.add("房租");
        titles.add("外包");
        titles.add("招待费");
        titles.add("通讯费");
        titles.add("日用品");
        titles.add("邮寄费");
        titles.add("租车费");
        titles.add("设备维修");
        titles.add("高速通行");
        titles.add("出差加油");
        titles.add("市内公交出租");
        titles.add("修洗车费");
        titles.add("人工费");
        titles.add("水电费");
        titles.add("车票");
        titles.add("其他");
        titles.add("开始时间");
        /*titles.add("实算结果");
        titles.add("时间");*/
        data.setTitles(titles);
        Bumen bumen=new Bumen();

        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
        List<List<Object>> rows = new ArrayList();
        for(int i = 0, length = list.size();i<length;i++) {
            Shisuan shisuan = list.get(i);
            List<Object> row = new ArrayList();
            row.add(shisuan.getShiid());
            for (int k = 0; k < bList.size(); k++) {
                bumen=bList.get(k);
                if(shisuan.getBid()== bumen.getBid())
                row.add(bumen.getBname());
            }
            row.add(shisuan.getXiangmuname());
            row.add(shisuan.getRenshu());
            row.add(shisuan.getGongzi());
            row.add(shisuan.getShuifei());
            row.add(shisuan.getFangzu());
            row.add(shisuan.getWaibao());
            row.add(shisuan.getZhaodaifei());
            row.add(shisuan.getTongxunfei());
            row.add(shisuan.getRiyongpin());
            row.add(shisuan.getYoujifei());
            row.add(shisuan.getZuchefei());
            row.add(shisuan.getShebeixiuli());
            row.add(shisuan.getGaosutongxing());
            row.add(shisuan.getChuchaijiayou());
            row.add(shisuan.getShineigongjiao());
            row.add(shisuan.getXiuchefei());
            row.add(shisuan.getRengong());
            row.add(shisuan.getShuidian());
            row.add(shisuan.getChepiao());
            row.add(shisuan.getQita());
            Date date= shisuan.getKaishitime();
            String  dt = simpleDateFormat.format(date);
            System.out.println(dt);
            row.add(dt);
            rows.add(row);
        }
        data.setRows(rows);
        try{
            ExcelUtils.exportExcel(response,"查询信息",data);
        }catch (Exception e){
            e.printStackTrace();
        }
    }

    @RequestMapping("/add")
    public String Import(HttpServletRequest request) throws IOException {
        String url=request.getParameter("wenjian");

        File file = new File("C:\\Users\\Administrator\\Desktop\\"+url); //实际这个路径由前端传后台
        FileInputStream fis = new FileInputStream(file);
        Workbook wb = null;
        try {
            if(isExcel2003(file.getPath())){
                System.out.println("2003版本Excel: .xls结尾");
                wb = new XSSFWorkbook(fis); //创建2003版本Excel工作簿对象
            }else if (isExcel2007(file.getPath())){
                System.out.println("2007版本Excel: .xlsx结尾");
                wb = new XSSFWorkbook(fis); //创建2007版本Excel工作簿对象
            }else {
                System.out.println("未知版本的Excel !!!");
            }
            Sheet sheet = wb.getSheetAt(0); //获取第1个工作表
            List<Bumen> blist=bumenMapper.query();
            List<Renyuan> rlist=renyuanMapper.queryAll();
            for(int i=2;i<=sheet.getLastRowNum();i++){//循环Excel文件的i=1行开始
                Renyuan renyuan=new Renyuan();
                Bumen bumen=new Bumen();
                Row row = sheet.getRow(i);
                int bumen1=0;
                Cell cell1=row.getCell(0);
                cell1.setCellType(Cell.CELL_TYPE_STRING);
                renyuan.setRid(Integer.parseInt(cell1.getStringCellValue()));
                Cell cell2=row.getCell(1);
                cell2.setCellType(Cell.CELL_TYPE_STRING);
                renyuan.setRname(cell2.getStringCellValue());

                Cell cell3=row.getCell(2);
                cell3.setCellType(Cell.CELL_TYPE_STRING);
                for(int j=0;j<blist.size();j++){
                    bumen.setBname(blist.get(j).getBname());
                    bumen.setBid(blist.get(j).getBid());

                    if(cell3.getStringCellValue().equals(bumen.getBname())){
                        bumen1=bumen.getBid();
                    }
                }
                renyuan.setBid(bumen1);


                Cell cell4 = row.getCell(3); //获取第1个单元格的数据
                cell4.setCellType(Cell.CELL_TYPE_STRING); //设置Cell的类型为String类型
                renyuan.setGongzi(Double.valueOf(cell4.getStringCellValue()));
                Cell cell5 = row.getCell(4);
                cell5.setCellType(Cell.CELL_TYPE_STRING);
                renyuan.setGerenbaoxian(Double.valueOf(cell5.getStringCellValue()));
                Cell cell6 = row.getCell(5);
                cell6.setCellType(Cell.CELL_TYPE_STRING);
                renyuan.setGerenshui(Double.valueOf(cell6.getStringCellValue()));
                Cell cell7 = row.getCell(6);
                cell7.setCellType(Cell.CELL_TYPE_STRING);
                renyuan.setJingling(Double.valueOf(cell7.getStringCellValue()));
                Cell cell8 = row.getCell(7);
                cell8.setCellType(Cell.CELL_TYPE_STRING);
                renyuan.setYanglao(Double.valueOf(cell8.getStringCellValue()));
                Cell cell9 = row.getCell(8);
                cell9.setCellType(Cell.CELL_TYPE_STRING);
                renyuan.setYiliao(Double.valueOf(cell9.getStringCellValue()));
                Cell cell10 = row.getCell(9);
                cell10.setCellType(Cell.CELL_TYPE_STRING);
                renyuan.setShiye(Double.valueOf(cell10.getStringCellValue()));
                Cell cell11 = row.getCell(10);
                cell11.setCellType(Cell.CELL_TYPE_STRING);
                renyuan.setShengyu(Double.valueOf(cell11.getStringCellValue()));
                Cell cell12 = row.getCell(11);
                cell12.setCellType(Cell.CELL_TYPE_STRING);
                renyuan.setGongshang(Double.valueOf(cell12.getStringCellValue()));

                for(int k=0;k<rlist.size();k++){
                    Renyuan renyuan1=rlist.get(k);
                    if(renyuan1.getRid() != renyuan.getRid()) {
                        if (renyuan1.getRname().equals(renyuan.getRname()) && renyuan1.getBid() != renyuan.getBid()) {
                            renyuanMapper.insert(renyuan);
                        }
                        if(!renyuan1.getRname().equals(renyuan.getRname())){
                            renyuanMapper.insert(renyuan);
                        }

                    }
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }finally {
            fis.close();
        }
        return "上传成功";
    }

    public static boolean isExcel2003(String filePath)
    {
        return filePath.matches("^.+\\.(?i)(xls)$");
    }

    public static boolean isExcel2007(String filePath)
    {
        return filePath.matches("^.+\\.(?i)(xlsx)$");
    }

}
