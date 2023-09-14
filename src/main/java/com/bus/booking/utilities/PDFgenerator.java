package com.bus.booking.utilities;

import java.io.FileOutputStream;
import java.util.Date;

import org.springframework.stereotype.Component;

import com.bus.booking.entities.Reservation;
import com.itextpdf.text.Document;
import com.itextpdf.text.Element;
import com.itextpdf.text.Font;
import com.itextpdf.text.Paragraph;
import com.itextpdf.text.pdf.PdfPCell;
import com.itextpdf.text.pdf.PdfPTable;
import com.itextpdf.text.pdf.PdfWriter;

@Component
public class PDFgenerator {

    public void generatePDF(Reservation reservation, String filePath) {
        Document document = new Document();
        try {
            PdfWriter.getInstance(document, new FileOutputStream(filePath));
            document.open();
            document.add(generateTable(reservation));
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (document != null) {
                document.close();
            }
        }
    }

    private PdfPTable generateTable(Reservation reservation) {
        PdfPTable table = new PdfPTable(2);
        PdfPCell cell;

        Font headerFont = new Font(Font.FontFamily.HELVETICA, 14, Font.BOLD);
        Font normalFont = new Font(Font.FontFamily.HELVETICA, 12);

        cell = new PdfPCell(new Paragraph("Your Bus Ticket", headerFont));
        cell.setHorizontalAlignment(Element.ALIGN_CENTER);
        cell.setColspan(2);
        table.addCell(cell);

        cell = new PdfPCell(new Paragraph("Bus Details", headerFont));
        cell.setColspan(2);
        table.addCell(cell);

        addRowToTable(table, "Departure City", reservation.getBus().getDepartureCity(), normalFont);
        addRowToTable(table, "Arrival City", reservation.getBus().getArrivalCity(), normalFont);
        addRowToTable(table, "Bus Number", reservation.getBus().getBusNumber(), normalFont);
        addRowToTable(table, "Bus Name", reservation.getBus().getBusName(), normalFont);
        addRowToTable(table, "Departure Date", reservation.getBus().getDateOfDeparture().toString(), normalFont);
        addRowToTable(table, "Estimated Duration", reservation.getBus().getEstimatedDuration().toString(), normalFont);

        cell = new PdfPCell(new Paragraph("Passenger Details", headerFont));
        cell.setHorizontalAlignment(Element.ALIGN_CENTER);
        cell.setColspan(2);
        table.addCell(cell);

        addRowToTable(table, "First Name", reservation.getPassenger().getFirstName(), normalFont);
        addRowToTable(table, "Last Name", reservation.getPassenger().getLastName(), normalFont);
        addRowToTable(table, "Email", reservation.getPassenger().getEmail(), normalFont);
        addRowToTable(table, "Mobile Number", reservation.getPassenger().getPhone(), normalFont);

        return table;
    }

    private void addRowToTable(PdfPTable table, String label, String value, Font font) {
        PdfPCell labelCell = new PdfPCell(new Paragraph(label, font));
        PdfPCell valueCell = new PdfPCell(new Paragraph(value, font));

        table.addCell(labelCell);
        table.addCell(valueCell);
    }
}
