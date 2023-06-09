USE [creativ1_libertad]
GO
--No borra las siguientes tablas:
--TblUsuario
--Rol
--RolXSucursal
--ReglaRolXUsuario
--ReglaRol
--Regla
--Puesto
--Permisos
--Empleado
--TipoDestace
--TipoSucursal
--Países
--Estados
--Municipios
--HistorialScripts
--UnidadMedida
--TipoMoneda
--TipoIva
--TipoEntradaCompra
--PromocionTipo
--StatusAbonos
--Sucursal
--TipoVenta
--y las demás tbls que llevan "Estatus"

EXEC sp_MSForEachTable 'ALTER TABLE ? NOCHECK CONSTRAINT ALL'
GO

EXEC sp_MSForEachTable 'ALTER TABLE ? DISABLE TRIGGER ALL'
GO

/****** Object:  FROM [WS_Usuario].[TblCliente_Credenciales]    Script Date: 11/02/2020 03:47:28 p.m. ******/
DELETE FROM [WS_Usuario].[TblCliente_Credenciales]
GO
/****** Object:  FROM [Venta].[TblVentaProducto]    Script Date: 11/02/2020 03:47:28 p.m. ******/
DELETE FROM [Venta].[TblVentaProducto]
GO
/****** Object:  FROM [Venta].[TblVentaGastosServicio]    Script Date: 11/02/2020 03:47:28 p.m. ******/
DELETE FROM [Venta].[TblVentaGastosServicio]
GO
/****** Object:  FROM [Venta].[TblVentaFormaPago]    Script Date: 11/02/2020 03:47:28 p.m. ******/
DELETE FROM [Venta].[TblVentaFormaPago]
GO
/****** Object:  FROM [Venta].[TblVentaDetalle]    Script Date: 11/02/2020 03:47:28 p.m. ******/
DELETE FROM [Venta].[TblVentaDetalle]
GO
/****** Object:  FROM [Venta].[TblVentaDescuento]    Script Date: 11/02/2020 03:47:28 p.m. ******/
DELETE FROM [Venta].[TblVentaDescuento]
GO
/****** Object:  FROM [Venta].[TblVentaCancelacion]    Script Date: 11/02/2020 03:47:28 p.m. ******/
DELETE FROM [Venta].[TblVentaCancelacion]
GO
/****** Object:  FROM [Venta].[TblVenta]    Script Date: 11/02/2020 03:47:28 p.m. ******/
DELETE FROM [Venta].[TblVenta]
GO
/****** Object:  FROM [Venta].[TblEstatusVenta]    Script Date: 11/02/2020 03:47:28 p.m. ******/
--DELETE FROM [Venta].[TblEstatusVenta]
--GO
/****** Object:  FROM [Usuario].[TblUsuario]    Script Date: 11/02/2020 03:47:28 p.m. ******/
DELETE FROM [Usuario].[TblUsuario] WHERE [IdCuentaUsuario] <> '7237E78D-BD21-48F0-B086-0DD12038F465'
GO
/****** Object:  FROM [Usuario].[TblTurnosEmpleado]    Script Date: 11/02/2020 03:47:28 p.m. ******/
DELETE FROM [Usuario].[TblTurnosEmpleado]
GO
DBCC CHECKIDENT ('[Usuario].[TblTurnosEmpleado]', RESEED, 0);  
/****** Object:  FROM [Usuario].[TblRolXSucursal]    Script Date: 11/02/2020 03:47:28 p.m. ******/
DELETE FROM [Usuario].[TblRolXSucursal] WHERE [IdRolXSucursal] <> 'ECAF4977-A63C-EA11-A0FA-78E3B599A0D4'
--GO
/****** Object:  FROM [Usuario].[TblRol]    Script Date: 11/02/2020 03:47:28 p.m. ******/
DELETE FROM [Usuario].[TblRol] WHERE [IdRol] <> 1
DBCC CHECKIDENT ('[Usuario].[TblRol]', RESEED, 1);
--GO
/****** Object:  FROM [Usuario].[TblRetiroDepositoCaja]    Script Date: 11/02/2020 03:47:28 p.m. ******/
DELETE FROM [Usuario].[TblRetiroDepositoCaja]
DBCC CHECKIDENT ('[Usuario].[TblRetiroDepositoCaja]', RESEED, 0);
GO
/****** Object:  FROM [Usuario].[TblReglaRolXUsuario]    Script Date: 11/02/2020 03:47:28 p.m. ******/
DELETE FROM [Usuario].[TblReglaRolXUsuario] WHERE [IdRolXSucursal] <> 'ECAF4977-A63C-EA11-A0FA-78E3B599A0D4'
GO
--/****** Object:  FROM [Usuario].[TblReglaRol]    Script Date: 11/02/2020 03:47:28 p.m. ******/
DELETE FROM [Usuario].[TblReglaRol] WHERE [IdRol] <> 1
--GO
--/****** Object:  FROM [Usuario].[TblRegla]    Script Date: 11/02/2020 03:47:28 p.m. ******/
--DELETE FROM [Usuario].[TblRegla]
--GO
--/****** Object:  FROM [Usuario].[TblPuesto]    Script Date: 11/02/2020 03:47:28 p.m. ******/
--DELETE FROM [Usuario].[TblPuesto]
--GO
/****** Object:  FROM [Usuario].[TblPermisos]    Script Date: 11/02/2020 03:47:28 p.m. ******/
--DELETE FROM [Usuario].[TblPermisos]
--GO
--/****** Object:  FROM [Usuario].[TblEmpleado]    Script Date: 11/02/2020 03:47:28 p.m. ******/
DELETE FROM [Usuario].[TblEmpleado] WHERE [IdEmpleado] <> 'A75C898B-A9B7-4AB2-814F-82278B081830'
GO
/****** Object:  FROM [Proceso].[TblTraspasoDetalleLote]    Script Date: 11/02/2020 03:47:28 p.m. ******/
DELETE FROM [Proceso].[TblTraspasoDetalleLote]
GO
/****** Object:  FROM [Proceso].[TblTraspasoDetalle]    Script Date: 11/02/2020 03:47:28 p.m. ******/
DELETE FROM [Proceso].[TblTraspasoDetalle]
GO
/****** Object:  FROM [Proceso].[TblTraspaso]    Script Date: 11/02/2020 03:47:29 p.m. ******/
DELETE FROM [Proceso].[TblTraspaso]
GO
/****** Object:  FROM [Proceso].[TblTipoDestace]    Script Date: 11/02/2020 03:47:29 p.m. ******/
--DELETE FROM [Proceso].[TblTipoDestace]
--GO
/****** Object:  FROM [Proceso].[TblRepeso]    Script Date: 11/02/2020 03:47:29 p.m. ******/
DELETE FROM [Proceso].[TblRepeso]
GO
/****** Object:  FROM [Proceso].[TblProcesoProductoResultado]    Script Date: 11/02/2020 03:47:29 p.m. ******/
DELETE FROM [Proceso].[TblProcesoProductoResultado]
GO
/****** Object:  FROM [Proceso].[TblProcesoProductoInsumo]    Script Date: 11/02/2020 03:47:29 p.m. ******/
DELETE FROM [Proceso].[TblProcesoProductoInsumo]
GO
/****** Object:  FROM [Proceso].[TblProcesoProducto]    Script Date: 11/02/2020 03:47:29 p.m. ******/
DELETE FROM [Proceso].[TblProcesoProducto]
GO
/****** Object:  FROM [Proceso].[TblProcesoDetalle]    Script Date: 11/02/2020 03:47:29 p.m. ******/
DELETE FROM [Proceso].[TblProcesoDetalle]
GO
/****** Object:  FROM [Proceso].[TblProceso]    Script Date: 11/02/2020 03:47:29 p.m. ******/
DELETE FROM [Proceso].[TblProceso]
GO
/****** Object:  FROM [Proceso].[TblMermaRepeso]    Script Date: 11/02/2020 03:47:29 p.m. ******/
DELETE FROM [Proceso].[TblMermaRepeso]
GO
/****** Object:  FROM [Proceso].[TblMermaProceso]    Script Date: 11/02/2020 03:47:29 p.m. ******/
DELETE FROM [Proceso].[TblMermaProceso]
GO
/****** Object:  FROM [Proceso].[TblMerma]    Script Date: 11/02/2020 03:47:29 p.m. ******/
DELETE FROM [Proceso].[TblMerma]
GO
/****** Object:  FROM [Proceso].[TblLoteProductoOrigen]    Script Date: 11/02/2020 03:47:29 p.m. ******/
DELETE FROM [Proceso].[TblLoteProductoOrigen]
GO
/****** Object:  FROM [Proceso].[TblLoteProducto]    Script Date: 11/02/2020 03:47:29 p.m. ******/
DELETE FROM [Proceso].[TblLoteProducto]
GO
/****** Object:  FROM [Proceso].[TblLoteProcesoDetalle]    Script Date: 11/02/2020 03:47:29 p.m. ******/
DELETE FROM [Proceso].[TblLoteProcesoDetalle]
GO
/****** Object:  FROM [Proceso].[TblLoteHistorialSucursal]    Script Date: 11/02/2020 03:47:29 p.m. ******/
DELETE FROM [Proceso].[TblLoteHistorialSucursal]
GO
/****** Object:  FROM [Proceso].[TblLoteCompraDetalle]    Script Date: 11/02/2020 03:47:29 p.m. ******/
DELETE FROM [Proceso].[TblLoteCompraDetalle]
GO
/****** Object:  FROM [Proceso].[TblEstatusDestace]    Script Date: 11/02/2020 03:47:29 p.m. ******/
--DELETE FROM [Proceso].[TblEstatusDestace]
--GO
/****** Object:  FROM [Proceso].[TblEstatusCapturaRepeso]    Script Date: 11/02/2020 03:47:29 p.m. ******/
--DELETE FROM [Proceso].[TblEstatusCapturaRepeso]
--GO
/****** Object:  FROM [Proceso].[TblCatTipoRepeso]    Script Date: 11/02/2020 03:47:29 p.m. ******/
--DELETE FROM [Proceso].[TblCatTipoRepeso]
--GO
/****** Object:  FROM [Proceso].[TblCatTipoMerma]    Script Date: 11/02/2020 03:47:29 p.m. ******/
--DELETE FROM [Proceso].[TblCatTipoMerma]
--GO
/****** Object:  FROM [Proceso].[TblCatRecetaResultado]    Script Date: 11/02/2020 03:47:29 p.m. ******/
DELETE FROM [Proceso].[TblCatRecetaResultado]
GO
/****** Object:  FROM [Proceso].[TblCatRecetaInsumos]    Script Date: 11/02/2020 03:47:29 p.m. ******/
DELETE FROM [Proceso].[TblCatRecetaInsumos]
GO
/****** Object:  FROM [Proceso].[TblCatReceta]    Script Date: 11/02/2020 03:47:29 p.m. ******/
DELETE FROM [Proceso].[TblCatReceta]
GO
DBCC CHECKIDENT ('[Proceso].[TblCatReceta]', RESEED, 0);
Go
/****** Object:  FROM [Proceso].[TblCapturaRepeso]    Script Date: 11/02/2020 03:47:29 p.m. ******/
DELETE FROM [Proceso].[TblCapturaRepeso]
GO
/****** Object:  FROM [Inventario].[TblSucursalProducto]    Script Date: 11/02/2020 03:47:29 p.m. ******/
DELETE FROM [Inventario].[TblSucursalProducto]
GO
DELETE FROM [Inventario].[TblMovimientoProducto]
GO
/****** Object:  FROM [General].[TblTipoSucursal]    Script Date: 11/02/2020 03:47:29 p.m. ******/
--DELETE FROM [General].[TblTipoSucursal]
--GO
/****** Object:  FROM [General].[TblSucursalListaPrecios]    Script Date: 11/02/2020 03:47:29 p.m. ******/
DELETE FROM [General].[TblSucursalListaPrecios]
GO
/****** Object:  FROM [General].[TblSucursalHorario]    Script Date: 11/02/2020 03:47:29 p.m. ******/
DELETE FROM [General].[TblSucursalHorario]
GO

/****** Object:  FROM [General].[TblSucursal]    Script Date: 11/02/2020 03:47:29 p.m. ******/
DELETE FROM [General].[TblSucursal] WHERE [IdSucursal] <> 1
GO
DBCC CHECKIDENT ('[General].[TblSucursal]', RESEED, 1);
Go

DELETE [General].[TblPreciosCostosProductoDetalle]
GO 
DELETE FROM  [General].[TblPreciosCostosProducto]
GO 
/****** Object:  FROM [General].[TblPaises]    Script Date: 11/02/2020 03:47:30 p.m. ******/
--DELETE FROM [General].[TblPaises]
--GO
/****** Object:  FROM [General].[TblMunicipios]    Script Date: 11/02/2020 03:47:30 p.m. ******/
--DELETE FROM [General].[TblMunicipios]
--GO
/****** Object:  FROM [General].[TblGastosDetalle]    Script Date: 11/02/2020 03:47:30 p.m. ******/
DELETE FROM [General].[TblGastosDetalle]
GO
/****** Object:  FROM [General].[TblGastos]    Script Date: 11/02/2020 03:47:30 p.m. ******/
DELETE FROM [General].[TblGastos]
GO
/****** Object:  FROM [General].[TblEstatusGastos]    Script Date: 11/02/2020 03:47:30 p.m. ******/
--DELETE FROM [General].[TblEstatusGastos]
--GO
--/****** Object:  FROM [General].[TblEstatus]    Script Date: 11/02/2020 03:47:30 p.m. ******/
--DELETE FROM [General].[TblEstatus]
--GO
/****** Object:  FROM [General].[TblEstados]    Script Date: 11/02/2020 03:47:30 p.m. ******/
--DELETE FROM [General].[TblEstados]
--GO
/****** Object:  FROM [General].[TblCorteDetalle]    Script Date: 11/02/2020 03:47:30 p.m. ******/
DELETE FROM [General].[TblCorteDetalle]
GO
/****** Object:  FROM [General].[TblCambioDetalle]    Script Date: 11/02/2020 03:47:30 p.m. ******/
DELETE FROM [General].[TblCambioDetalle]
GO
/****** Object:  FROM [General].[HistorialScripts]    Script Date: 11/02/2020 03:47:30 p.m. ******/
--DELETE FROM [General].[HistorialScripts]
--GO
/****** Object:  FROM [Equipo].[TblEquipo]    Script Date: 11/02/2020 03:47:30 p.m. ******/
DELETE FROM [Equipo].[TblEquipo]
GO
DBCC CHECKIDENT ('[Equipo].[TblEquipo]', RESEED, 0);
GO
-- /****** Object:  FROM [EntradaSalida].[TblTipoEntradaSalida]    Script Date: 11/02/2020 03:47:30 p.m. ******/
-- DELETE FROM [EntradaSalida].[TblTipoEntradaSalida]
-- GO
/****** Object:  FROM [EntradaSalida].[TblEstatusEntradaSalida]    Script Date: 11/02/2020 03:47:30 p.m. ******/
--DELETE FROM [EntradaSalida].[TblEstatusEntradaSalida]
GO
/****** Object:  FROM [EntradaSalida].[TblEntradaSalidaAlmacenDetalleLote]    Script Date: 11/02/2020 03:47:30 p.m. ******/
DELETE FROM [EntradaSalida].[TblEntradaSalidaAlmacenDetalleLote]
GO
/****** Object:  FROM [EntradaSalida].[TblEntradaSalidaAlmacenDetalle]    Script Date: 11/02/2020 03:47:30 p.m. ******/
DELETE FROM [EntradaSalida].[TblEntradaSalidaAlmacenDetalle]
GO
/****** Object:  FROM [EntradaSalida].[TblEntradaSalidaAlmacen]    Script Date: 11/02/2020 03:47:30 p.m. ******/
DELETE FROM [EntradaSalida].[TblEntradaSalidaAlmacen]
GO
/****** Object:  FROM [Compra].[TblSucursalProducto]    Script Date: 11/02/2020 03:47:30 p.m. ******/
DELETE FROM [Compra].[TblSucursalProducto]
GO
/****** Object:  FROM [Compra].[TblLoteProductoEntradaCompraDetalle]    Script Date: 11/02/2020 03:47:30 p.m. ******/
DELETE FROM [Compra].[TblLoteProductoEntradaCompraDetalle]
GO
/****** Object:  FROM [Compra].[TblEstatusEntradaCompra]    Script Date: 11/02/2020 03:47:30 p.m. ******/
--DELETE FROM [Compra].[TblEstatusEntradaCompra]
--GO
--/****** Object:  FROM [Compra].[TblEstatusCompra]    Script Date: 11/02/2020 03:47:30 p.m. ******/
--DELETE FROM [Compra].[TblEstatusCompra]
--GO
/****** Object:  FROM [Compra].[TblEntradaCompraTraspaso]    Script Date: 11/02/2020 03:47:30 p.m. ******/
DELETE FROM [Compra].[TblEntradaCompraTraspaso]
GO
/****** Object:  FROM [Compra].[TblEntradaCompraProducto]    Script Date: 11/02/2020 03:47:30 p.m. ******/
DELETE FROM [Compra].[TblEntradaCompraProducto]
GO
/****** Object:  FROM [Compra].[TblEntradaCompraOrdenCompra]    Script Date: 11/02/2020 03:47:30 p.m. ******/
DELETE FROM [Compra].[TblEntradaCompraOrdenCompra]
GO
/****** Object:  FROM [Compra].[TblEntradaCompraDetalleSucursal]    Script Date: 11/02/2020 03:47:30 p.m. ******/
DELETE FROM [Compra].[TblEntradaCompraDetalleSucursal]
GO
/****** Object:  FROM [Compra].[TblEntradaCompraDetalleOrdenCompraDetalle]    Script Date: 11/02/2020 03:47:30 p.m. ******/
DELETE FROM [Compra].[TblEntradaCompraDetalleOrdenCompraDetalle]
GO
/****** Object:  FROM [Compra].[TblEntradaCompraDetalleLote]    Script Date: 11/02/2020 03:47:30 p.m. ******/
DELETE FROM [Compra].[TblEntradaCompraDetalleLote]
GO
/****** Object:  FROM [Compra].[TblEntradaCompraDetalle]    Script Date: 11/02/2020 03:47:30 p.m. ******/
DELETE FROM [Compra].[TblEntradaCompraDetalle]
GO
/****** Object:  FROM [Compra].[TblEntradaCompra]    Script Date: 11/02/2020 03:47:30 p.m. ******/
DELETE FROM [Compra].[TblEntradaCompra]
GO
/****** Object:  FROM [Compra].[TblCompraProducto]    Script Date: 11/02/2020 03:47:30 p.m. ******/
DELETE FROM [Compra].[TblCompraProducto]
GO
/****** Object:  FROM [Compra].[TblCompraDetalle]    Script Date: 11/02/2020 03:47:31 p.m. ******/
DELETE FROM [Compra].[TblCompraDetalle]
GO
/****** Object:  FROM [Compra].[TblCompraCancelacion]    Script Date: 11/02/2020 03:47:31 p.m. ******/
DELETE FROM [Compra].[TblCompraCancelacion]
GO
/****** Object:  FROM [Compra].[TblCompra]    Script Date: 11/02/2020 03:47:31 p.m. ******/
DELETE FROM [Compra].[TblCompra]
GO
/****** Object:  FROM [Catalogo].[TblUnidadMedida]    Script Date: 11/02/2020 03:47:31 p.m. ******/
--DELETE FROM [Catalogo].[TblUnidadMedida]
--GO
/****** Object:  FROM [Catalogo].[TblTurno]    Script Date: 11/02/2020 03:47:31 p.m. ******/
--DELETE FROM [Catalogo].[TblTurno]
--GO
/****** Object:  FROM [Catalogo].[TblTipoVenta]    Script Date: 11/02/2020 03:47:31 p.m. ******/
--DELETE FROM [Catalogo].[TblTipoVenta]
--GO
/****** Object:  FROM [Catalogo].[TblTipoMoneda]    Script Date: 11/02/2020 03:47:31 p.m. ******/
--DELETE FROM [Catalogo].[TblTipoMoneda]
--GO
/****** Object:  FROM [Catalogo].[TblTipoIva]    Script Date: 11/02/2020 03:47:31 p.m. ******/
--DELETE FROM [Catalogo].[TblTipoIva]
--GO
/****** Object:  FROM [Catalogo].[TblTipoEntradaCompra]    Script Date: 11/02/2020 03:47:31 p.m. ******/
--DELETE FROM [Catalogo].[TblTipoEntradaCompra]
--GO
/****** Object:  FROM [Catalogo].[TblProveedorProducto]    Script Date: 11/02/2020 03:47:31 p.m. ******/
DELETE FROM [Catalogo].[TblProveedorProducto]
GO
/****** Object:  FROM [Catalogo].[TblProveedor]    Script Date: 11/02/2020 03:47:31 p.m. ******/
DELETE FROM [Catalogo].[TblProveedor] WHERE [IdProveedor] <> '7DF4D7B0-A473-4717-BD14-29B884B61327'
GO
/****** Object:  FROM [Catalogo].[TblPromocionTipo]    Script Date: 11/02/2020 03:47:31 p.m. ******/
--DELETE FROM [Catalogo].[TblPromocionTipo]
--GO
/****** Object:  FROM [Catalogo].[TblPromocionRangoFecha]    Script Date: 11/02/2020 03:47:31 p.m. ******/
DELETE FROM [Catalogo].[TblPromocionRangoFecha]
GO
/****** Object:  FROM [Catalogo].[TblPromocionProducto]    Script Date: 11/02/2020 03:47:31 p.m. ******/
DELETE FROM [Catalogo].[TblPromocionProducto]
GO
/****** Object:  FROM [Catalogo].[TblPromocionEstatus]    Script Date: 11/02/2020 03:47:31 p.m. ******/
--DELETE FROM [Catalogo].[TblPromocionEstatus]
--GO
/****** Object:  FROM [Catalogo].[TblPromocionDiasSemana]    Script Date: 11/02/2020 03:47:31 p.m. ******/
DELETE FROM [Catalogo].[TblPromocionDiasSemana]
GO
/****** Object:  FROM [Catalogo].[TblPromocionDescuento]    Script Date: 11/02/2020 03:47:31 p.m. ******/
DELETE FROM [Catalogo].[TblPromocionDescuento]
GO
/****** Object:  FROM [Catalogo].[TblPromocion]    Script Date: 11/02/2020 03:47:31 p.m. ******/
DELETE FROM [Catalogo].[TblPromocion]
GO
/****** Object:  FROM [Catalogo].[TblProductoStock]    Script Date: 11/02/2020 03:47:31 p.m. ******/
DELETE FROM [Catalogo].[TblProductoStock]
GO
/****** Object:  FROM [Catalogo].[TblProductoRelacionado]    Script Date: 11/02/2020 03:47:31 p.m. ******/
DELETE FROM [Catalogo].[TblProductoRelacionado]
GO
/****** Object:  FROM [Catalogo].[TblProductoConfig]    Script Date: 11/02/2020 03:47:31 p.m. ******/
DELETE FROM [Catalogo].[TblProductoConfig]
GO
/****** Object:  FROM [Catalogo].[TblProducto]    Script Date: 11/02/2020 03:47:31 p.m. ******/
DELETE FROM [Catalogo].[TblProducto]
GO
DBCC CHECKIDENT ('[Catalogo].[TblProducto]', RESEED, 0);
GO
/****** Object:  FROM [Catalogo].[TblPreciosProducto]    Script Date: 11/02/2020 03:47:31 p.m. ******/
DELETE FROM [Catalogo].[TblPreciosProducto]
GO
DBCC CHECKIDENT ('[Catalogo].[TblPreciosProducto]', RESEED, 0);
GO
/****** Object:  FROM [Catalogo].[TblPerfilDeUsuario]    Script Date: 11/02/2020 03:47:31 p.m. ******/
DELETE FROM [Catalogo].[TblPerfilDeUsuario]
GO
DBCC CHECKIDENT ('[Catalogo].[TblPerfilDeUsuario]', RESEED, 0);
GO
/****** Object:  FROM [Catalogo].[TblListaPrecios]    Script Date: 11/02/2020 03:47:31 p.m. ******/
DELETE FROM [Catalogo].[TblListaPrecios]
GO
DBCC CHECKIDENT ('[Catalogo].[TblListaPrecios]', RESEED, 0);
GO
/****** Object:  FROM [Catalogo].[TblGastosExtras]    Script Date: 11/02/2020 03:47:31 p.m. ******/
DELETE FROM [Catalogo].[TblGastosExtras]
GO
DBCC CHECKIDENT ('[Catalogo].[TblGastosExtras]', RESEED, 0);
GO
/****** Object:  FROM [Catalogo].[TblFormaPago]    Script Date: 11/02/2020 03:47:31 p.m. ******/
DELETE FROM [Catalogo].[TblFormaPago]
GO
DBCC CHECKIDENT ('[Catalogo].[TblFormaPago]', RESEED, 0);
GO
/****** Object:  FROM [Catalogo].[TblDireccionesCliente]    Script Date: 11/02/2020 03:47:31 p.m. ******/
DELETE FROM [Catalogo].[TblDireccionesCliente]
GO
/****** Object:  FROM [Catalogo].[TblCliente]    Script Date: 11/02/2020 03:47:31 p.m. ******/
DELETE FROM [Catalogo].[TblCliente] WHERE [IdCliente] <> 'F44BA13F-F0AC-4FBE-80FC-39322FA9F3ED'
GO
/****** Object:  FROM [Catalogo].[TblCategoriaProducto]    Script Date: 11/02/2020 03:47:31 p.m. ******/
DELETE FROM [Catalogo].[TblCategoriaProducto]
GO
DBCC CHECKIDENT ('[Catalogo].[TblCategoriaProducto]', RESEED, 0);
GO
/****** Object:  FROM [Catalogo].[TblCategoriaGasto]    Script Date: 11/02/2020 03:47:32 p.m. ******/
DELETE FROM [Catalogo].[TblCategoriaGasto]
GO
DBCC CHECKIDENT ('[Catalogo].[TblCategoriaGasto]', RESEED, 0);
GO
/****** Object:  FROM [Abono].[TblStatusAbonos]    Script Date: 11/02/2020 03:47:32 p.m. ******/
--DELETE FROM [Abono].[TblStatusAbonos]
--GO
/****** Object:  FROM [Abono].[TblEstatusAbonoEntradaCompra]    Script Date: 11/02/2020 03:47:32 p.m. ******/
--DELETE FROM [Abono].[TblEstatusAbonoEntradaCompra]
--GO
/****** Object:  FROM [Abono].[TblAbonosFormaPago]    Script Date: 11/02/2020 03:47:32 p.m. ******/
DELETE FROM [Abono].[TblAbonosFormaPago]
GO
/****** Object:  FROM [Abono].[TblAbonosDetallesVenta]    Script Date: 11/02/2020 03:47:32 p.m. ******/
DELETE FROM [Abono].[TblAbonosDetallesVenta]
GO
/****** Object:  FROM [Abono].[TblAbonosAlaVenta]    Script Date: 11/02/2020 03:47:32 p.m. ******/
DELETE FROM [Abono].[TblAbonosAlaVenta]
GO
/****** Object:  FROM [Abono].[TblAbonoEntradaCompraFormaPago]    Script Date: 11/02/2020 03:47:32 p.m. ******/
DELETE FROM [Abono].[TblAbonoEntradaCompraFormaPago]
GO
/****** Object:  FROM [Abono].[TblAbonoEntradaCompraDetalle]    Script Date: 11/02/2020 03:47:32 p.m. ******/
DELETE FROM [Abono].[TblAbonoEntradaCompraDetalle]
GO
/****** Object:  FROM [Abono].[TblAbonoEntradaCompraCancelacion]    Script Date: 11/02/2020 03:47:32 p.m. ******/
DELETE FROM [Abono].[TblAbonoEntradaCompraCancelacion]
GO
/****** Object:  FROM [Abono].[TblAbonoEntradaCompra]    Script Date: 11/02/2020 03:47:32 p.m. ******/
DELETE FROM [Abono].[TblAbonoEntradaCompra]
GO
/****** Object:  FROM [Abono].[TblAbonoCancelacion]    Script Date: 11/02/2020 03:47:32 p.m. ******/
DELETE FROM [Abono].[TblAbonoCancelacion]
GO

EXEC sp_MSForEachTable 'ALTER TABLE ? CHECK CONSTRAINT ALL'
GO

EXEC sp_MSForEachTable 'ALTER TABLE ? ENABLE TRIGGER ALL'
GO