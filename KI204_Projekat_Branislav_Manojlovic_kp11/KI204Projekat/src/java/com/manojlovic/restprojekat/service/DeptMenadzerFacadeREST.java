/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.manojlovic.restprojekat.service;

import com.manojlovic.restprojekat.DeptMenadzer;
import com.manojlovic.restprojekat.DeptMenadzerPK;
import java.util.List;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.ws.rs.Consumes;
import javax.ws.rs.DELETE;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.PUT;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.PathSegment;

/**
 *
 * @author Bane
 */
@Stateless
@Path("com.manojlovic.restprojekat.deptmenadzer")
public class DeptMenadzerFacadeREST extends AbstractFacade<DeptMenadzer> {

    @PersistenceContext(unitName = "KI204ProjekatPU")
    private EntityManager em;

    private DeptMenadzerPK getPrimaryKey(PathSegment pathSegment) {
        /*
         * pathSemgent represents a URI path segment and any associated matrix parameters.
         * URI path part is supposed to be in form of 'somePath;deptBr=deptBrValue;zaposleniBr=zaposleniBrValue'.
         * Here 'somePath' is a result of getPath() method invocation and
         * it is ignored in the following code.
         * Matrix parameters are used as field names to build a primary key instance.
         */
        com.manojlovic.restprojekat.DeptMenadzerPK key = new com.manojlovic.restprojekat.DeptMenadzerPK();
        javax.ws.rs.core.MultivaluedMap<String, String> map = pathSegment.getMatrixParameters();
        java.util.List<String> deptBr = map.get("deptBr");
        if (deptBr != null && !deptBr.isEmpty()) {
            key.setDeptBr(deptBr.get(0));
        }
        java.util.List<String> zaposleniBr = map.get("zaposleniBr");
        if (zaposleniBr != null && !zaposleniBr.isEmpty()) {
            key.setZaposleniBr(new java.lang.Integer(zaposleniBr.get(0)));
        }
        return key;
    }

    public DeptMenadzerFacadeREST() {
        super(DeptMenadzer.class);
    }

    @POST
    @Override
    @Consumes({MediaType.APPLICATION_XML, MediaType.APPLICATION_JSON})
    public void create(DeptMenadzer entity) {
        super.create(entity);
    }

    @PUT
    @Path("{id}")
    @Consumes({MediaType.APPLICATION_XML, MediaType.APPLICATION_JSON})
    public void edit(@PathParam("id") PathSegment id, DeptMenadzer entity) {
        super.edit(entity);
    }

    @DELETE
    @Path("{id}")
    public void remove(@PathParam("id") PathSegment id) {
        com.manojlovic.restprojekat.DeptMenadzerPK key = getPrimaryKey(id);
        super.remove(super.find(key));
    }

    @GET
    @Path("{id}")
    @Produces({MediaType.APPLICATION_XML, MediaType.APPLICATION_JSON})
    public DeptMenadzer find(@PathParam("id") PathSegment id) {
        com.manojlovic.restprojekat.DeptMenadzerPK key = getPrimaryKey(id);
        return super.find(key);
    }

    @GET
    @Override
    @Produces({MediaType.APPLICATION_XML, MediaType.APPLICATION_JSON})
    public List<DeptMenadzer> findAll() {
        return super.findAll();
    }

    @GET
    @Path("{from}/{to}")
    @Produces({MediaType.APPLICATION_XML, MediaType.APPLICATION_JSON})
    public List<DeptMenadzer> findRange(@PathParam("from") Integer from, @PathParam("to") Integer to) {
        return super.findRange(new int[]{from, to});
    }

    @GET
    @Path("count")
    @Produces(MediaType.TEXT_PLAIN)
    public String countREST() {
        return String.valueOf(super.count());
    }

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }
    
}
