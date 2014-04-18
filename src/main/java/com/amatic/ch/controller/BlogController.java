package com.amatic.ch.controller;

import java.io.IOException;
import java.security.NoSuchAlgorithmException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.amatic.ch.constants.WebConstants;

@Controller
public class BlogController extends PublicacionAbstract {

    @RequestMapping(value = { "/{url}" }, method = RequestMethod.GET)
    public String cargarPublicacion(ModelMap model, @PathVariable String url,
	    HttpServletRequest request, HttpServletResponse response)
	    throws IOException, NoSuchAlgorithmException {
	HttpSession session = request.getSession();
	if (request.getParameter("creative") != null) {
	    String creative = request.getParameter("creative");
	    session.setAttribute("creative", creative);
	}
	return setPublicacion(url, request, model);
    }

    @RequestMapping(value = { "/{url}/newcomment" }, method = { RequestMethod.POST })
    public void guardarComentario(ModelMap model,
	    @RequestParam("url") String url,
	    @RequestParam("nombre") String nombre,
	    @RequestParam("email") String email,
	    @RequestParam("puntos") String puntos,
	    @RequestParam("comentario") String comentario,
	    @RequestParam("web") String web,
	    @RequestParam("nbrComment") String nbrComment,
	    HttpServletRequest request, HttpServletResponse response)
	    throws IOException, NoSuchAlgorithmException {

	guardarComentarioPub(request, url, nombre, email, puntos, comentario,
		web, nbrComment, response);

	response.sendRedirect("/" + url);

    }

    @RequestMapping(value = { "/blog" }, method = { RequestMethod.GET })
    public String getPublicaciones(ModelMap model, HttpServletRequest request,
	    HttpServletResponse response) throws IOException {
	HttpSession session = request.getSession();
	if (request.getParameter("creative") != null) {
	    String creative = request.getParameter("creative");
	    session.setAttribute("creative", creative);
	}
	setPublicaciones(model, WebConstants.SessionConstants.ARTICULO);

	return "blog";
    }

    @RequestMapping(value = { "/specialoffer" }, method = { RequestMethod.GET })
    public String getAccesorios(ModelMap model, HttpServletRequest request,
	    HttpServletResponse response) throws IOException {
	HttpSession session = request.getSession();
	if (request.getParameter("creative") != null) {
	    String creative = request.getParameter("creative");
	    session.setAttribute("creative", creative);
	}
	setPublicaciones(model, WebConstants.SessionConstants.ACCESORIO);

	return "extras";
    }

}
