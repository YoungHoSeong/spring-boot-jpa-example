package com.example.util;

import org.apache.poi.ss.usermodel.*;
import org.springframework.web.servlet.view.document.AbstractXlsxStreamingView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public class ExcelBuilderView extends AbstractXlsxStreamingView {
    private String createSheetName;
    private List<String> headerKey;
    private List<String> headerText;

    public ExcelBuilderView(Map<String, String> header, String createSheetName) {

        this.createSheetName = createSheetName;

        headerKey = new ArrayList<>(header.keySet());
        headerText = new ArrayList<>(header.values());

    }

    @Override
    protected void buildExcelDocument(Map<String, Object> map, Workbook workbook, HttpServletRequest request, HttpServletResponse response) {
        response.setHeader("Content-Disposition", "attachment; filename=" + createSheetName + ".xlsx");

        List<Map<String, Object>> list = (List) map.get("body");

        Sheet sheet = workbook.createSheet(createSheetName);
        sheet.setDefaultColumnWidth(30);

        // create style for header cells
        CellStyle style = workbook.createCellStyle();
        Font font = workbook.createFont();
        font.setFontName("Arial");
        style.setFont(font);

        // create header row
        Row header = sheet.createRow(0);
        int cellIndex = 0;
        for(String text : headerText){
            header.createCell(cellIndex).setCellValue(text);
            header.getCell(0).setCellStyle(style);
            cellIndex++;
        }


        // create data rows
        int rowCount = 1;

        for(Map<String, Object> obj : list) {
            int cell = 0;
            Row aRow = sheet.createRow(rowCount++);
            for (String key : headerKey) {
                if(obj.get(key) != null){
                    aRow.createCell(cell).setCellValue(obj.get(key).toString());
                }else{
                    aRow.createCell(cell).setCellValue("");
                }

                cell++;
            }
        }

    }
}
