package com.example.demo.controller;

import com.example.demo.dao.BumenMapper;
import com.example.demo.dao.RenyuanMapper;
import com.example.demo.dao.ShisuanMapper;
import com.example.demo.entity.Bumen;
import com.example.demo.entity.ExcelData;
import com.example.demo.entity.Renyuan;
import com.example.demo.entity.Shisuan;
import com.example.demo.util.ExcelUtils;
import org.apache.poi.ss.usermodel.*;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.UUID;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

@RestController
@RequestMapping("excel")
public class ExcelController {
    @Autowired
    BumenMapper bumenMapper;
    @Autowired
    RenyuanMapper renyuanMapper;
    @Autowired
    ShisuanMapper shisuanMapper;

   // @PostMapping("/upload.do")
    @RequestMapping(value="/upload.do", method = RequestMethod.POST)
    //上传的文件会转换成MultipartFile对象，file名字对应html中上传控件的name
    public String upload2(MultipartFile[] files) throws IOException{
        if(files.length == 0){
            return "请选择要上传的文件";
        }
        for (MultipartFile multipartFile : files) {
            if(multipartFile.isEmpty()){
                return "文件上传失败";
            }
            byte[] fileBytes = multipartFile.getBytes();
            String filePath=System.getProperty("user.dir")+"/src/main/resources/static/pics/";
            //取得当前上传文件的文件名称
            String originalFilename = multipartFile.getOriginalFilename();
            //生成文件名
            String fileName = UUID.randomUUID() +"&"+ originalFilename;
            uploadFile(fileBytes, filePath, fileName);
            String wenjian=filePath+"/"+fileName;
            Import(wenjian);
        }
        return "文件上传完毕";
    }
    public static void uploadFile(byte[] file, String filePath, String fileName) throws IOException{

        File targetFile = new File(filePath);
        if(!targetFile.exists()){
            targetFile.mkdirs();
        }
        FileOutputStream out = new FileOutputStream(filePath + fileName);
        out.write(file);
        out.flush();
        out.close();
    }

    @RequestMapping("/export")
    public void test2(HttpServletResponse response,@RequestParam String xiangmuname,@RequestParam Integer bid){

        int rowIndex = 0;
        Shisuan shisuan=new Shisuan();
        shisuan.setBid(bid);
        shisuan.setXiangmuname(xiangmuname);

        List<Shisuan> list = shisuanMapper.queryShiSuan(shisuan);


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
        titles.add("实算结果");
        titles.add("所属时间");
        data.setTitles(titles);

        Bumen bumen=new Bumen();

        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
        List<List<Object>> rows = new ArrayList();
        for(int i = 0, length = list.size();i<length;i++) {
            shisuan = list.get(i);
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

            row.add(shisuan.getJieguo());

            Date date2= shisuan.getTime();
            String  dt1 = simpleDateFormat.format(date2);

            row.add(dt1);
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
    public void Import(String wenjian) throws IOException {

        File file = new File(wenjian); //实际这个路径由前端传后台
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
            List<Bumen> blist=bumenMapper.queryAll();
            for(int i=2;i<=sheet.getLastRowNum();i++){//循环Excel文件的i=1行开始
                Renyuan renyuan=new Renyuan();
                Bumen bumen=new Bumen();
                Row row = sheet.getRow(i);
                int bumen1=0;
                renyuan.setRid(null);
                Cell cell2=row.getCell(1);
                if (cell2 == null){
                    continue;
                }
                cell2.setCellType(Cell.CELL_TYPE_STRING);
                renyuan.setRname(cell2.getStringCellValue());

                Cell cell3=row.getCell(2);
                if (cell3 == null){
                    continue;
                }
                cell3.setCellType(Cell.CELL_TYPE_STRING);
                for(int j=0;j<blist.size();j++){
                    bumen.setBname(blist.get(j).getBname());
                    bumen.setBid(blist.get(j).getBid());

                    if(cell3.getStringCellValue().equals(bumen.getBname())){
                        bumen1=bumen.getBid();
                    }
                }
                renyuan.setBid(bumen1);
                Pattern p = Pattern.compile("[a-zA-Z\u4e00-\u9fa5]");//定义规则 ，该规则为大小写字母，汉字
                boolean bl=true;
                Cell cell4 = row.getCell(3); //获取第1个单元格的数据
                if (cell4 == null){
                    continue;
                }
                cell4.setCellType(Cell.CELL_TYPE_STRING); //设置Cell的类型为String类型

                Matcher m = p.matcher(cell4.getStringCellValue());

                if (m.find()) {//包含则为true
                    bl=false;
                    continue;
                }else{
                    bl = true;
                    renyuan.setGongzi(Double.valueOf(cell4.getStringCellValue()));
                }

                Cell cell5 = row.getCell(4);
                if (cell5 == null){
                    continue;
                }
                cell5.setCellType(Cell.CELL_TYPE_STRING);

                Matcher m1 = p.matcher(cell5.getStringCellValue());

                if (m1.find()) {
                    bl=false;
                    continue;
                }else {
                    bl = true;
                    renyuan.setGerenbaoxian(Double.valueOf(cell5.getStringCellValue()));

                }

                Cell cell6 = row.getCell(5);
                if (cell6 == null){
                    continue;
                }
                cell6.setCellType(Cell.CELL_TYPE_STRING);

                Matcher m2 = p.matcher(cell6.getStringCellValue());
                if (m2.find()) {
                    bl=false;
                    continue;
                }else {
                    bl=true;
                    renyuan.setGerenshui(Double.valueOf(cell6.getStringCellValue()));

                }

                Cell cell7 = row.getCell(6);
                if (cell7 == null){
                    continue;
                }
                cell7.setCellType(Cell.CELL_TYPE_STRING);

                Matcher m3 = p.matcher(cell7.getStringCellValue());
                if (m3.find()) {
                    bl=false;
                    continue;
                }else {
                    bl=true;
                    renyuan.setJingling(Double.valueOf(cell7.getStringCellValue()));
                }

                Cell cell8 = row.getCell(7);
                if (cell8 == null){
                    continue;
                }
                cell8.setCellType(Cell.CELL_TYPE_STRING);

                Matcher m4 = p.matcher(cell8.getStringCellValue());
                if (m4.find()) {
                    bl=false;
                    continue;
                }else {
                    bl=true;
                    renyuan.setYanglao(Double.valueOf(cell8.getStringCellValue()));
                }


                Cell cell9 = row.getCell(8);
                if (cell9 == null){
                    continue;
                }
                cell9.setCellType(Cell.CELL_TYPE_STRING);

                Matcher m5 = p.matcher(cell9.getStringCellValue());
                if (m5.find()) {
                    bl=false;
                    continue;
                }else {
                    bl=true;
                    renyuan.setYiliao(Double.valueOf(cell9.getStringCellValue()));
                }

                Cell cell10 = row.getCell(9);
                if (cell10 == null){
                    continue;
                }
                cell10.setCellType(Cell.CELL_TYPE_STRING);

                Matcher m6 = p.matcher(cell10.getStringCellValue());
                if (m6.find()) {
                    bl=false;
                    continue;
                }else {
                    bl=true;
                    renyuan.setShiye(Double.valueOf(cell10.getStringCellValue()));
                }


                Cell cell11 = row.getCell(10);
                if (cell11 == null){
                    continue;
                }
                cell11.setCellType(Cell.CELL_TYPE_STRING);

                Matcher m7 = p.matcher(cell11.getStringCellValue());
                if (m7.find()) {
                    bl=false;
                    continue;
                }else {
                    bl=true;
                    renyuan.setShengyu(Double.valueOf(cell11.getStringCellValue()));
                }

                Cell cell12 = row.getCell(11);
                if (cell2 == null){
                    continue;
                }
                cell12.setCellType(Cell.CELL_TYPE_STRING);

                Matcher m8 = p.matcher(cell12.getStringCellValue());
                if (m8.find()) {
                    bl=false;
                    continue;
                }else {
                    bl=true;
                    renyuan.setGongshang(Double.valueOf(cell12.getStringCellValue()));
                }



                Cell cell13 = row.getCell(12);
                SimpleDateFormat dateFormat = new SimpleDateFormat("yyyyMMdd");
                Date d = dateFormat.parse(excelTime(cell13));
                renyuan.setTime(d);
                if(bl==true) {
                    renyuanMapper.insert(renyuan);
                }

            }
        } catch (Exception e) {
            e.printStackTrace();
        }finally {
            fis.close();
        }
    }

    public static boolean isExcel2003(String filePath)
    {
        return filePath.matches("^.+\\.(?i)(xls)$");
    }

    public static boolean isExcel2007(String filePath)
    {
        return filePath.matches("^.+\\.(?i)(xlsx)$");
    }
    public String excelTime(Cell cell){
        String guarantee_time = null;
        if(DateUtil.isCellDateFormatted(cell)){
            //用于转化为日期格式
            Date d = cell.getDateCellValue();
            DateFormat formater = new SimpleDateFormat("yyyyMMdd");
            guarantee_time = formater.format(d);
        }
        return guarantee_time;
    }

}
