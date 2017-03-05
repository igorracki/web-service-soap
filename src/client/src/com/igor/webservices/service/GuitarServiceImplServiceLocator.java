/**
 * GuitarServiceImplServiceLocator.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis 1.4 Apr 22, 2006 (06:55:48 PDT) WSDL2Java emitter.
 */

package com.igor.webservices.service;

public class GuitarServiceImplServiceLocator extends org.apache.axis.client.Service implements com.igor.webservices.service.GuitarServiceImplService {

    public GuitarServiceImplServiceLocator() {
    }


    public GuitarServiceImplServiceLocator(org.apache.axis.EngineConfiguration config) {
        super(config);
    }

    public GuitarServiceImplServiceLocator(java.lang.String wsdlLoc, javax.xml.namespace.QName sName) throws javax.xml.rpc.ServiceException {
        super(wsdlLoc, sName);
    }

    // Use to get a proxy class for GuitarServiceImpl
    private java.lang.String GuitarServiceImpl_address = "http://localhost:8080/SOAPAssignment_B00068103/services/GuitarServiceImpl";

    public java.lang.String getGuitarServiceImplAddress() {
        return GuitarServiceImpl_address;
    }

    // The WSDD service name defaults to the port name.
    private java.lang.String GuitarServiceImplWSDDServiceName = "GuitarServiceImpl";

    public java.lang.String getGuitarServiceImplWSDDServiceName() {
        return GuitarServiceImplWSDDServiceName;
    }

    public void setGuitarServiceImplWSDDServiceName(java.lang.String name) {
        GuitarServiceImplWSDDServiceName = name;
    }

    public com.igor.webservices.service.GuitarServiceImpl getGuitarServiceImpl() throws javax.xml.rpc.ServiceException {
       java.net.URL endpoint;
        try {
            endpoint = new java.net.URL(GuitarServiceImpl_address);
        }
        catch (java.net.MalformedURLException e) {
            throw new javax.xml.rpc.ServiceException(e);
        }
        return getGuitarServiceImpl(endpoint);
    }

    public com.igor.webservices.service.GuitarServiceImpl getGuitarServiceImpl(java.net.URL portAddress) throws javax.xml.rpc.ServiceException {
        try {
            com.igor.webservices.service.GuitarServiceImplSoapBindingStub _stub = new com.igor.webservices.service.GuitarServiceImplSoapBindingStub(portAddress, this);
            _stub.setPortName(getGuitarServiceImplWSDDServiceName());
            return _stub;
        }
        catch (org.apache.axis.AxisFault e) {
            return null;
        }
    }

    public void setGuitarServiceImplEndpointAddress(java.lang.String address) {
        GuitarServiceImpl_address = address;
    }

    /**
     * For the given interface, get the stub implementation.
     * If this service has no port for the given interface,
     * then ServiceException is thrown.
     */
    public java.rmi.Remote getPort(Class serviceEndpointInterface) throws javax.xml.rpc.ServiceException {
        try {
            if (com.igor.webservices.service.GuitarServiceImpl.class.isAssignableFrom(serviceEndpointInterface)) {
                com.igor.webservices.service.GuitarServiceImplSoapBindingStub _stub = new com.igor.webservices.service.GuitarServiceImplSoapBindingStub(new java.net.URL(GuitarServiceImpl_address), this);
                _stub.setPortName(getGuitarServiceImplWSDDServiceName());
                return _stub;
            }
        }
        catch (java.lang.Throwable t) {
            throw new javax.xml.rpc.ServiceException(t);
        }
        throw new javax.xml.rpc.ServiceException("There is no stub implementation for the interface:  " + (serviceEndpointInterface == null ? "null" : serviceEndpointInterface.getName()));
    }

    /**
     * For the given interface, get the stub implementation.
     * If this service has no port for the given interface,
     * then ServiceException is thrown.
     */
    public java.rmi.Remote getPort(javax.xml.namespace.QName portName, Class serviceEndpointInterface) throws javax.xml.rpc.ServiceException {
        if (portName == null) {
            return getPort(serviceEndpointInterface);
        }
        java.lang.String inputPortName = portName.getLocalPart();
        if ("GuitarServiceImpl".equals(inputPortName)) {
            return getGuitarServiceImpl();
        }
        else  {
            java.rmi.Remote _stub = getPort(serviceEndpointInterface);
            ((org.apache.axis.client.Stub) _stub).setPortName(portName);
            return _stub;
        }
    }

    public javax.xml.namespace.QName getServiceName() {
        return new javax.xml.namespace.QName("http://service.webservices.igor.com", "GuitarServiceImplService");
    }

    private java.util.HashSet ports = null;

    public java.util.Iterator getPorts() {
        if (ports == null) {
            ports = new java.util.HashSet();
            ports.add(new javax.xml.namespace.QName("http://service.webservices.igor.com", "GuitarServiceImpl"));
        }
        return ports.iterator();
    }

    /**
    * Set the endpoint address for the specified port name.
    */
    public void setEndpointAddress(java.lang.String portName, java.lang.String address) throws javax.xml.rpc.ServiceException {
        
if ("GuitarServiceImpl".equals(portName)) {
            setGuitarServiceImplEndpointAddress(address);
        }
        else 
{ // Unknown Port Name
            throw new javax.xml.rpc.ServiceException(" Cannot set Endpoint Address for Unknown Port" + portName);
        }
    }

    /**
    * Set the endpoint address for the specified port name.
    */
    public void setEndpointAddress(javax.xml.namespace.QName portName, java.lang.String address) throws javax.xml.rpc.ServiceException {
        setEndpointAddress(portName.getLocalPart(), address);
    }

}
