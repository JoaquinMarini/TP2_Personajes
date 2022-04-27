import sql from 'mssql'
import config from '../../BD.js'
import 'dotenv/config'

const PersonajeTabla = process.env.DB_TABLA_PERSONAJE;

export class PersonajeService {

    //obtiene/muestra todos los personajes
    getPersonaje = async () => {
        console.log('This is a function on the service');

        const pool = await sql.connect(config);
        const response = await pool.request().query(`SELECT * from ${PersonajeTabla}`);
        console.log(response)

        return response.recordset;
    }

    //obtiene/muestra personaje
    getPersonajeById = async (id) => {
        console.log('This is a function on the service');

        const pool = await sql.connect(config);
        const response = await pool.request()
            .input('id',sql.Int, id)
            .query(`SELECT * from ${PersonajeTabla} where id = @id`);
        console.log(response)

        return response.recordset[0];
    }

    //crea personaje
    createPersonaje = async (Personaje) => {
        console.log('This is a function on the service');

        const pool = await sql.connect(config);
        const response = await pool.request()
            .input('id',sql.int, Personaje?.Id ?? '')
            .input('imagen',sql.NChar, Personaje?.imagen ?? '')
            .input('nombre',sql.NChar, Personaje?.nombre ?? '')
            .input('edad',sql.int, Personaje?.edad ?? '')
            .input('historia',sql.Varchar(50), Personaje?.historia ?? '')
            .query(`INSERT INTO ${PersonajeTabla}(Imagen, Nombre, Edad, Peso, Historia) VALUES (@Imagen, @Nombre, @Edad, @Peso, @Historia)`);
        console.log(response)

        return response.recordset;
    }

    //actualiza personaje
    updatePersonajeById = async (id, Personaje) => {
        console.log('This is a function on the service');

        const pool = await sql.connect(config);
        const response = await pool.request()
            .input('id',sql.Int, id)
            .input('Imagen',sql.Varchar(50), Imagen)
            .input('Nombre',sql.NChar, Personaje?.nombre ?? '')
            .input('Edad',sql.Int, Personaje?.Edad ?? false)
            .input('Peso',sql.Int, Personaje?.Peso ?? 0)
            .query(`UPDATE Personajes SET Imagen = @Imagen, Nombre = @Nombre, Edad = @Edad, Peso = @Peso, Historia = @Historia WHERE id = @Id`);
        console.log(response)

        return response.recordset;
    }

    //Elimino personaje
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

