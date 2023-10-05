

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.entities.Note;
import com.helper.FactoryProvider;


@WebServlet("/SaveNoteServlate")
public class SaveNoteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public SaveNoteServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
		try 
		{
			String title=request.getParameter("title");
			String content=request.getParameter("content");
			PrintWriter out=response.getWriter();
			Note newNote=new Note(title,content,new Date());
		
			//To save object in database using Hibernate
			Session s=FactoryProvider.getFactory().openSession();
			Transaction ts=s.beginTransaction();
			s.save(newNote);
			ts.commit();
			s.close();
			
			
			
			
			HttpSession httpSession=request.getSession();
			httpSession.setAttribute("message","Note added Successfully!!.");
			response.sendRedirect("addNote.jsp");
			
        } catch (Exception e) {
            e.printStackTrace();

        }

	}

}
