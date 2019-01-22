-- Implementação da Trigger
CREATE OR REPLACE FUNCTION calcula_salario() RETURNS trigger AS $calcula_salario$
	BEGIN
        IF NEW.salario_cozinheiro > (NEW.carga_horaria_cozinheiro * 80) + 500 OR NEW.salario_cozinheiro < NEW.carga_horaria_cozinheiro * 80 - 500 THEN
            UPDATE Cozinheiro SET salario_cozinheiro = ( carga_horaria_cozinheiro * 80 ) WHERE Cozinheiro.CPF = NEW.CPF;
        END IF;
		RETURN NEW;
	END;
$calcula_salario$ LANGUAGE plpgsql;

CREATE TRIGGER calcula_salario AFTER INSERT ON Cozinheiro
	FOR EACH ROW EXECUTE PROCEDURE calcula_salario();
