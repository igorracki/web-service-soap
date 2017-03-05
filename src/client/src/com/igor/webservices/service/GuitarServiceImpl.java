/**
 * GuitarServiceImpl.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis 1.4 Apr 22, 2006 (06:55:48 PDT) WSDL2Java emitter.
 */

package com.igor.webservices.service;

public interface GuitarServiceImpl extends java.rmi.Remote {
    public com.igor.webservices.beans.Guitar update(int id, com.igor.webservices.beans.Guitar g) throws java.rmi.RemoteException;
    public boolean init() throws java.rmi.RemoteException;
    public boolean delete(int id) throws java.rmi.RemoteException;
    public com.igor.webservices.beans.Guitar read(int id) throws java.rmi.RemoteException;
    public boolean create(com.igor.webservices.beans.Guitar g) throws java.rmi.RemoteException;
    public com.igor.webservices.beans.Guitar[] readAll() throws java.rmi.RemoteException;
}
