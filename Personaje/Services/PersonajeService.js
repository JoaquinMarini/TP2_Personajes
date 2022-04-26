import sql from 'mssql'
import config from '../../BD.js'
import 'dotenv/config'

const PersonajeTabla = process.env.DB_TABLA_PERSONAJE;

export class PersonajeService {

    getPersonaje = async () => {
        console.log('This is a function on the service');

        const pool = await sql.connect(config);
        const response = await pool.request().query(`SELECT * from ${PersonajeTabla}`);
        console.log(response)

        return response.recordset;
    }

    getPersonajeById = async (id) => {
        console.log('This is a function on the service');

        const pool = await sql.connect(config);
        const response = await pool.request()
            .input('id',sql.Int, id)
            .query(`SELECT * from ${PersonajeTabla} where id = @id`);
        console.log(response)

        return response.recordset[0];
    }

    createPersonaje = async (Personaje) => {
        console.log('This is a function on the service');

        const pool = await sql.connect(config);
        const response = await pool.request()
            .input('Nombre',sql.NChar, Personaje?.nombre ?? '')
            .input('LibreGluten',sql.Bit, Personaje?.libreGluten ?? false)
            .input('Importe',sql.NChar, Personaje?.importe ?? 0)
            .input('Descripcion',sql.NChar, Personaje?.description ?? '')
            .query(`INSERT INTO ${PersonajeTabla}(Nombre, LibreGluten, Importe, Descripcion) VALUES (@Nombre, @LibreGluten, @Importe, @Descripcion)`);
        console.log(response)

        return response.recordset;
    }

    updatePersonajeById = async (id, Personaje) => {
        console.log('This is a function on the service');

        const pool = await sql.connect(config);
        const response = await pool.request()
            .input('id',sql.Int, id)
            .input('Nombre',sql.NChar, Personaje?.nombre ?? '')
            .input('LibreGluten',sql.Bit, Personaje?.libreGluten ?? false)
            .input('Importe',sql.NChar, Personaje?.importe ?? 0)
            .input('Descripcion',sql.NChar, Personaje?.description ?? '')
            .query(`UPDATE Personajes SET Nombre = @Nombre, LibreGluten = @LibreGluten, Importe = @Importe, Descripcion = @Descripcion WHERE id = @Id`);
        console.log(response)

        return response.recordset;
    }

    deletePersonajeById = async (id) => {
        console.log('This is a function on the service');

        const pool = await sql.connect(config);
        const response = await pool.request()
            .input('id',sql.Int, id)
            .query(`DELETE FROM ${PersonajeTabla} WHERE id = @id`);
        console.log(response)

        return response.recordset;
    }
}