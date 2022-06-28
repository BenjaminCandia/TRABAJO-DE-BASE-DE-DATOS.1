CREATE TABLE afi(
    rut_afiliado                        NUMBER(8) NOT NULL,
    dv                                  VARCHAR2(1) NOT NULL, 
    primer_nombre                       VARCHAR2(254) NOT NULL,
    segundo_nombre                      VARCHAR2(254),
    apellido_paterno                    VARCHAR2(254) NOT NULL,
    apellido_materno                    VARCHAR2(254),
    fecha_nacimiento                    DATE NOT NULL, 
    pretension_sueldo                   NUMBER NOT NULL,
    direccion                           VARCHAR2(254) NOT NULL,
    genero                              VARCHAR2(254) NOT NULL,
    discapacidad                        VARCHAR2(254) NOT NULL,
    correo_electronico                  VARCHAR2(254) NOT NULL,
    curriculum_vitae                    VARCHAR2(254) NOT NULL, 
    numero_carnet_socio                 NUMBER NOT NULL,
    estado_postulacion_id_postulacion   NUMBER NOT NULL,
    comuna_id_comuna                    NUMBER NOT NULL
);

CREATE TABLE nacionalidad(
    id_nacionalidad     NUMBER NOT NULL,
    numero_pasaporte    NUMBER NOT NULL,
    nombre              VARCHAR2(254) NOT NULL,
    afiliados_rut       NUMBER(8) NOT NULL
);

CREATE TABLE tipo_discapacidad(
    id_tipo_discapacidad    NUMBER NOT NULL,
    nombre                  VARCHAR2(254) NOT NULL,
    afiliados_rut           NUMBER NOT NULL
);

CREATE TABLE telefono(
    id_telefono     NUMBER NOT NULL,
    numero_telefono VARCHAR(254) NOT NULL,
    afiliados_rut   NUMBER NOT NULL
);

CREATE TABLE tipo_telefono(
    id_numero               NUMBER NOT NULL, 
    ocupacion_numero        VARCHAR2(254) NOT NULL,
    telefono_id_telefono    VARCHAR2(254) NOT NULL
);
    
CREATE TABLE comuna(
    id_comuna               NUMBER NOT NULL,
    nombre                  VARCHAR2(254) NOT NULL,
    provincia_id_provincia  NUMBER NOT NULL
);

CREATE TABLE provincia(
    id_provincia        NUMBER NOT NULL,
    nombre              VARCHAR2(254) NOT NULL,
    region_id_region    NUMBER NOT NULL
);

CREATE TABLE region(
    id_region           NUMBER NOT NULL,
    nombre              VARCHAR2(254) NOT NULL
);

CREATE TABLE direccion(
    id_direccion        VARCHAR2(254) NOT NULL,
    nombre              VARCHAR2(254) NOT NULL,
    comuna_id_comuna    NUMBER NOT NULL,
    empresa_id_empresa  NUMBER NOT NULL
);

CREATE TABLE pagos(
    id_pagos                            NUMBER NOT NULL,
    pago_inicial                        NUMBER NOT NULL,
    fecha_pago_inicial                  DATE NOT NULL,
    pago_mensual                        NUMBER NOT NULL,
    fecha_pago_mensual                  DATE NOT NULL,
    sindicato_id_sindicato              NUMBER NOT NULL,
    historial_pago_id_historial_pago    NUMBER NOT NULL,
    cheque_id_cheque                    NUMBER NOT NULL,
    afiliados_rut                       NUMBER NOT NULL
);

CREATE TABLE historial_pagos(
    id_historial_pagos      NUMBER NOT NULL,
    pagos_mensuales         VARCHAR2(254) NOT NULL,
    pagos_anuales           VARCHAR2(254) NOT NULL,
    fecha                   DATE NOT NULL,
    lugar                   VARCHAR2(254) NOT NULL
);

--efectivo tipo?
CREATE TABLE tipo_pago(
    id_pago                         NUMBER NOT NULL,
    efectivo                        VARCHAR2(254) NOT NULL,
    transferencia                   VARCHAR2(254) NOT NULL,
    historial_pago_id_historial     NUMBER NOT NULL
);

CREATE TABLE deudas(
    id_deudas                   NUMBER NOT NULL,
    afiliados_deshabilitados    VARCHAR2(254) NOT NULL,
    meses_deuda                 NUMBER NOT NULL,
    afiliados_rut               NUMBER NOT NULL
);
-- id cheque o numero de serie?
CREATE TABLE cheque(
    id_cheque       NUMBER NOT NULL,
    numero_cheque   NUMBER NOT NULL,
    tipo_banco      VARCHAR2(254) NOT NULL,
    pagos_id_pagos  NUMBER NOT NULL,
    banco_id_banco  NUMBER NOT NULL
);

CREATE TABLE banco(
    id_banco    NUMBER NOT NULL,
    nombre      VARCHAR2(254) NOT NULL,
    direccion   VARCHAR2(254) NOT NULL
);

CREATE TABLE sindicato(
    id_sindicato        NUMBER NOT NULL,
    nombre              VARCHAR2(254) NOT NULL,
    direccion           VARCHAR2(254) NOT NULL,
    empresa_id_empresa  NUMBER NOT NULL
);
CREATE TABLE empresa(
    id_empresa          NUMBER NOT NULL,
    nombre              VARCHAR2(254) NOT NULL,
    direccion           VARCHAR2(254) NOT NULL
);

CREATE TABLE solicitud_ingreso(
    id_solicitud                        NUMBER NOT NULL,
    fecha_creacion                      DATE NOT NULL,
    sindicato_id_sindicato              NUMBER NOT NULL,
    futuro_afiliado_id_futuro_afiliado  NUMBER NOT NULL
);

CREATE TABLE estado_postulacion(
    id_postulacion      NUMBER NOT NULL,
    fecha_postulacion   DATE NOT NULL,
    empresa_id_empresa  NUMBER NOT NULL,
    afiliados_rut       NUMBER NOT NULL
);

CREATE TABLE futuro_afiliado(
    id_futuro_afiliado      NUMBER NOT NULL,
    primer_nombre           VARCHAR2(254) NOT NULL,
    segundo_nombre          VARCHAR2(254),
    apellido_paterno        VARCHAR2(254) NOT NULL,
    apellido_materno        VARCHAR2(254) NOT NULL,
    fecha_nacimiento        DATE NOT NULL,
    tipo_parentesco         VARCHAR2(254) NOT NULL
);

CREATE TABLE tipo_parentesco(
    id_tipo_parentesco                      NUMBER NOT NULL,
    hijo                                    VARCHAR2(254) NOT NULL,
    tipo_pareja                             VARCHAR2(254) NOT NULL,
    futuro_afiliado_id_futuro_afiliado      NUMBER NOT NULL
);

CREATE TABLE aseguradora_vehiculos(
    id_aseguradora              NUMBER NOT NULL,
    nombre                      VARCHAR2(254) NOT NULL,
    direccion                   VARCHAR2(254) NOT NULL,
    rut                         VARCHAR2(254) NOT NULL,
    empresa_id_empresa          NUMBER NOT NULL
);

CREATE TABLE vehiculo(
    id_vehiculo                             NUMBER NOT NULL,
    marca                                   VARCHAR2(254) NOT NULL,
    modelo                                  VARCHAR2(254) NOT NULL,
    patente                                 VARCHAR2(254) NOT NULL,
    color                                   VARCHAR2(254) NOT NULL,
    tipo                                    VARCHAR2(254) NOT NULL,
    numero_chasis                           VARCHAR2(254) NOT NULL,
    numero_motor                            VARCHAR2(254) NOT NULL,
    afiliados_rut                           NUMBER NOT NULL,
    aseguradora_vehiculos_id_aseguradora    NUMBER NOT NULL,
    descuento_id_descuentos                 NUMBER NOT NULL
);

CREATE TABLE tipo_transporte(
    id_tipo_transporte      NUMBER NOT NULL,
    nombre                  VARCHAR2(254) NOT NULL,
    descuento_id_descuentos NUMBER NOT NULL
);

CREATE TABLE beneficio(
    id_beneficio                                    NUMBER NOT NULL,
    nombre                                          VARCHAR2(254) NOT NULL,
    cantidad_usos_descuentos_id_descuento_usado     NUMBER NOT NULL
);

CREATE TABLE cantidad_usos_descuentos(
    id_descuento_usado              NUMBER NOT NULL,
    cantidad_descuentos_totales     VARCHAR2(254) NOT NULL
);

CREATE TABLE tipo_beneficio(
    id_tipo_beneficio               NUMBER NOT NULL,
    deportes                        VARCHAR2(254) NOT NULL,
    salud                           VARCHAR2(254) NOT NULL,
    educacion                       VARCHAR2(254) NOT NULL,
    otros                           VARCHAR2(254) NOT NULL,
    afiliados_rut                   NUMBER NOT NULL,
    beneficio_id_beneficio          NUMBER NOT NULL
);