# WorkOnLaw challenge

# Objetivos

- El endpoint recibe como parámetro del request el correo del abogado que se necesita consultar

- El cálculo de la experiencia se realiza en base a las fechas de inicio y término de cada trabajo
  La respuesta esperada es un json que contenga el correo y experiencia del abogado requerido. Abajo un ejemplo
  {
  "email": "example@email.com",
  "work_experience_years": 1.6
  }

- Si un trabajo no tiene fecha de término, se entiende que el abogado aún se encuentra trabajando en ese lugar
  Los años de experiencia deben venir en formato decimal. Queda a tu elección el método de redondeo a utilizar
- Se debe utilizar Ruby On Rails
- Como entregable se espera que nos compartas una URL de un repo para descargar el código

No obligatorio, pero suma varios puntos extra :

- Uso de pruebas automatizadas
  Extra Ball 2 (Optional):

- Si aplicas la siguiente regla en el cálculo de la experiencia: En caso de que el abogado haya trabajado en 2 lugares al mismo tiempo, sólo cuenta la experiencia de uno de estos trabajos. El criterio aplica a nivel de días, por lo tanto se debe considerar que hay días que podrían coincidir entre ambos empleos y otros no.

# Description of the Project

For the development of the project, the following tools were used:

- Rails v 6.1.4.4
- Ruby v 2.7.2

### **Endpoints of API**

| Method | Endpoint   |                    Functionality |
| ------ | ---------- | -------------------------------: |
| GET    | candidates | Search for candidates experience |

## How to start the project from your Local environment

- Open your terminal and cd where you want to store the project
- Run the following command - `git clone https://github.com/Wusinho/WorkOnLaw.git`
- Cd into the created directory
- Run $ `bundle install`
- On terminal type $ `rails db:migrate`
- On terminal type $ `rails server`

## Tests

![image](./app/assets/images/rspec.png)

## Extra Ball 2

- I18n was implemented to the subscription (`./config/locales/en.yml`)

![image](./app/assets/images/I18n.png)

## Author

👤 **Heber Lazo**

- Github: [@Wusinho](https://github.com/Wusinho)
- LinkedIn: [Heber Lazo](https://www.linkedin.com/in/heber-lazo-benza-523266133/)

## 🤝 Contributing

Contributions, issues, and feature requests are welcome!

## Show your support

Give a star if you :star: like this project!

## 📝 License

This project is [MIT](LICENSE) licensed.
