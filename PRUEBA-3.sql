CREATE TABLE afi(
    id_afiliado                         NUMBER NOT NULL,
    rut                                 VARCHAR2(250) NOT NULL, 
    primer_nombre                       VARCHAR2(250) NOT NULL,
    segundo_nombre                      VARCHAR2(250),
    apellido_paterno                    VARCHAR2(250) NOT NULL,
    apellido_materno                    VARCHAR2(250),
    fecha_nacimiento                    DATE NOT NULL, 
    pretension_sueldo                   NUMBER NOT NULL,
    direccion                           VARCHAR2(250) NOT NULL,
    genero                              VARCHAR2(250) NOT NULL,
    discapacidad                        VARCHAR2(250) NOT NULL,
    correo_electronico                  VARCHAR2(250) NOT NULL,
    curriculum_vitae                    VARCHAR2(250) NOT NULL, 
    numero_carnet_socio                 NUMBER NOT NULL,
    estado_postulacion_id_postulacion   NUMBER NOT NULL,
    comuna_id_comuna                    NUMBER NOT NULL,
    solicitud_ingreso_id_solicitud      NUMBER NOT NULL
);

CREATE TABLE nacionalidad(
    id_nacionalidad     NUMBER NOT NULL,
    nombre              VARCHAR2(250) NOT NULL,
    pasaporte           VARCHAR2(250)
);

CREATE TABLE tipo_discapacidad(
    id_tipo_discapacidad    NUMBER NOT NULL,
    nombre                  VARCHAR2(250) NOT NULL
);

CREATE TABLE telefono_cliente(
    id_telefono_cliente    NUMBER NOT NULL, 
    numero_cliente         VARCHAR2(250) NOT NULL,
    telefono_id_telefono   NUMBER NOT NULL,
    afiliados_id_afiliado  NUMBER NOT NULL
);

CREATE TABLE telefono(
    id_telefono                 NUMBER NOT NULL,
    numero_telefono             VARCHAR(250) NOT NULL,
    tipo_telefono_id_numero     NUMBER NOT NULL
);

CREATE TABLE tipo_telefono(
    id_numero               NUMBER NOT NULL, 
    ocupacion_numero        VARCHAR2(250) NOT NULL
);
    
CREATE TABLE comuna(
    id_comuna               NUMBER NOT NULL,
    nombre                  VARCHAR2(250) NOT NULL,
    provincia_id_provincia  NUMBER NOT NULL
);

CREATE TABLE provincia(
    id_provincia        NUMBER NOT NULL,
    nombre              VARCHAR2(250) NOT NULL,
    region_id_region    NUMBER NOT NULL
);

CREATE TABLE region(
    id_region           NUMBER NOT NULL,
    nombre              VARCHAR2(250) NOT NULL
);

CREATE TABLE pagos(
    id_pagos                        NUMBER NOT NULL,
    fecha                           DATE NOT NULL, 
    estado                          VARCHAR2(250) NOT NULL,
    cheque_id_cheque                NUMBER,          
    banco_id_banco                  NUMBER,
    tipo_pago_id_pago               NUMBER NOT NULL,
    forma_pago_id_forma_pago        NUMBER,
    afiliados_id_afiliado           NUMBER NOT NULL
);

CREATE TABLE forma_pago(
    id_forma_pago       NUMBER NOT NULL,
    nombre              VARCHAR2(250) NOT NULL
);

--efectivo tipo?
CREATE TABLE tipo_pago(
    id_pago         NUMBER NOT NULL,
    nombre          VARCHAR2(250) NOT NULL                        
);


-- id cheque o numero de serie?
CREATE TABLE cheque(
    id_cheque       NUMBER NOT NULL,
    numero_cheque   NUMBER NOT NULL,
    tipo_banco      VARCHAR2(250) NOT NULL
);

CREATE TABLE banco(
    id_banco    NUMBER NOT NULL,
    nombre      VARCHAR2(250) NOT NULL,
    direccion   VARCHAR2(250) NOT NULL
);

CREATE TABLE sindicato(
    id_sindicato        NUMBER NOT NULL,
    nombre              VARCHAR2(250) NOT NULL,
    direccion           VARCHAR2(250) NOT NULL,
    empresa_id_empresa  NUMBER NOT NULL
);
CREATE TABLE empresa(
    id_empresa          NUMBER NOT NULL,
    nombre              VARCHAR2(250) NOT NULL,
    direccion           VARCHAR2(250) NOT NULL,
    comuna_id_comuna    NUMBER NOT NULL
);

CREATE TABLE solicitud_ingreso(
    id_solicitud                        NUMBER NOT NULL,
    fecha_creacion                      DATE NOT NULL,
    estado_postulacion_id_postulacion   NUMBER NOT NULL,
    futuro_afiliado_id_futuro_afiliado  NUMBER NOT NULL
);

CREATE TABLE estado_postulacion(
    id_postulacion      NUMBER NOT NULL,
    fecha_postulacion   DATE NOT NULL,
    rut_postulante      VARCHAR2(250) NOT NULL
    
);

CREATE TABLE futuro_afiliado(
    id_futuro_afiliado                  NUMBER NOT NULL,
    primer_nombre                       VARCHAR2(250) NOT NULL,
    segundo_nombre                      VARCHAR2(250),
    apellido_paterno                    VARCHAR2(250) NOT NULL,
    apellido_materno                    VARCHAR2(250) NOT NULL,
    fecha_nacimiento                    DATE NOT NULL,
    tipo_parentesco                     VARCHAR2(250) NOT NULL,
    tipo_patentesco_id_tipo_parentesco  NUMBER,
    estado_civil_id_estado_civil        NUMBER
);
CREATE TABLE estado_civil(
    id_estado_civil       NUMBER NOT NULL,
    nombre                VARCHAR2(250) NOT NULL
);

CREATE TABLE tipo_parentesco(
    id_tipo_parentesco      NUMBER NOT NULL,
    nombre                  VARCHAR2(250) NOT NULL                            
);
CREATE TABLE aseguradora(
    id_aseguradora              NUMBER NOT NULL,
    nombre                      VARCHAR2(250) NOT NULL,
    direccion                   VARCHAR2(250) NOT NULL,
    rut                         VARCHAR2(250) NOT NULL
);
CREATE TABLE aseguradora_empresa(
    id_aseguradora          NUMBER NOT NULL,
    nombre                  VARCHAR2(250) NOT NULL,
    direccion               VARCHAR2(250) NOT NULL
);

CREATE TABLE vehiculo(
    id_vehiculo                             NUMBER NOT NULL,
    marca                                   VARCHAR2(250) NOT NULL,
    modelo                                  VARCHAR2(250) NOT NULL,
    patente                                 VARCHAR2(250) NOT NULL,
    color                                   VARCHAR2(250) NOT NULL,
    tipo                                    VARCHAR2(250) NOT NULL,
    numero_chasis                           VARCHAR2(250) NOT NULL,
    numero_motor                            VARCHAR2(250) NOT NULL,
    aseguradora_id_aseguradora              NUMBER NOT NULL,
    descuento_id_descuentos                 NUMBER NOT NULL,
    afiliados_id_afiliado                   NUMBER NOT NULL
);

CREATE TABLE tipo_transporte(
    id_tipo_transporte      NUMBER NOT NULL,
    nombre                  VARCHAR2(250) NOT NULL
);

CREATE TABLE beneficio(
    id_beneficio                                    NUMBER NOT NULL,
    nombre                                          VARCHAR2(250) NOT NULL,
    descuento_id_descuentos                         NUMBER NOT NULL,
    tipo_beneficio_id_tipo_beneficio                NUMBER NOT NULL,
    afiliados_id_afiliado                           NUMBER NOT NULL
);

CREATE TABLE tipo_beneficio(
    id_tipo_beneficio           NUMBER NOT NULL,
    nombre                      VARCHAR2(250) NOT NULL                 
);