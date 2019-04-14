package com.demo.action;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sf.jasperreports.engine.JRException;
import net.sf.jasperreports.engine.JasperCompileManager;
import net.sf.jasperreports.engine.JasperExportManager;
import net.sf.jasperreports.engine.JasperFillManager;
import net.sf.jasperreports.engine.JasperPrint;
import net.sf.jasperreports.engine.JasperReport;

import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.ServletResponseAware;

import com.opensymphony.xwork2.ActionSupport;

public class Generate_Donor_Report extends ActionSupport implements ServletRequestAware,
		ServletResponseAware {

	private HttpServletRequest request;
	private HttpServletResponse response;
	private String bottle_id;
	
	public String generateJasperReport() throws IOException {
		
	JasperPrint jasperPrint = null;
		try {
			String reportFileName = "DonorBloodReport.jrxml";
			String reportPath = "D:\\project_workspace\\Struts_with_jaspers\\WebContent\\jrxml\\" + reportFileName;
			String targetFileName = reportFileName.replace(".jrxml", ".pdf");
			final JasperReport jasperReport = JasperCompileManager
					.compileReport(reportPath);
			jasperPrint = JasperFillManager.fillReport(jasperReport,setParameters(), JDBCConnection.getJDBCConnection());
			ServletOutputStream outputstream = response.getOutputStream();
			final ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
			JasperExportManager.exportReportToPdfStream(jasperPrint,
					byteArrayOutputStream);
			response.setContentType("application/pdf");
			
			outputstream.write(byteArrayOutputStream.toByteArray());
			response.setHeader("Cache-Control", "max-age=0");
			response.setHeader("Content-Disposition", "attachment; filename="
					+ targetFileName);
			// clear the output stream.
			outputstream.flush();
			outputstream.close();
			return SUCCESS;

		} catch (final JRException e) {
			e.printStackTrace();
		}
		return null;
	}
	
	public Map<String, String> setParameters() {
		  final Map<String, String> parameters = new HashMap<String, String>(4,1.0f);
		  parameters.put("bottle_id", getBottle_id());
		  return parameters;
		 }

	@Override
	public void setServletRequest(HttpServletRequest request) {
		// TODO Auto-generated method stub
		this.request = request;
	}

	public String getBottle_id() {
		return bottle_id;
	}

	public void setBottle_id(String bottleId) {
		bottle_id = bottleId;
	}

	@Override
	public void setServletResponse(HttpServletResponse response) {
		// TODO Auto-generated method stub
		this.response = response;
	}
}
