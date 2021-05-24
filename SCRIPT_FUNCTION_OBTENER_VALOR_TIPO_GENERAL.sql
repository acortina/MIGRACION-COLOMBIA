CREATE OR REPLACE FUNCTION f_obtenerValorTipoGeneral (p_idTipoGeneral IN VARCHAR)
  RETURN VARCHAR
 IS
  v_nombre VARCHAR(200) :='';
BEGIN 
    SELECT t.valor INTO v_nombre FROM tipoGeneral t WHERE t.idTipoGeneral = p_idTipoGeneral;
RETURN (v_nombre);
END f_obtenerValorTipoGeneral;