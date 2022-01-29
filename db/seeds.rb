# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# Edition
name = "Feb-Dec 2020"
start_date_edition = Date.new(2021, 2, 1)
end_date_edition = Date.new(2021, 12, 31)
Edition.create(name: name, start_date: start_date_edition, end_date: end_date_edition)

name = "Feb-Jun 2021"
start_date_edition = Date.new(2021, 2, 1)
end_date_edition = Date.new(2021, 06, 13)
Edition.create(name: name, start_date: start_date_edition, end_date: end_date_edition)



# Phase
Phase.create(name:"Registro", start_date: Date.new(2021, 2, 1), end_date: Date.new(2021, 3, 1), edition_id: 1)
Phase.create(name:"Edición de datos / Retroalimentación", start_date: Date.new(2021, 3, 2), end_date: Date.new(2021, 4, 1), edition_id: 1)
Phase.create(name:"Aprobación de proyectos", start_date: Date.new(2021, 4, 2), end_date: Date.new(2021, 5, 1), edition_id: 1)
Phase.create(name:"Evaluación de proyectos", start_date: Date.new(2021, 5, 2), end_date: Date.new(2021, 6, 1), edition_id: 1)
Phase.create(name:"Selección de proyectos", start_date: Date.new(2021, 5, 2), end_date: Date.new(2021, 6, 1), edition_id: 1)
Phase.create(name:"Crear / Editar muestra", start_date: Date.new(2021, 5, 2), end_date: Date.new(2021, 6, 1), edition_id: 1)
Phase.create(name:"Asignación de proyectos a evaluadores", start_date: Date.new(2021, 5, 2), end_date: Date.new(2021, 6, 1), edition_id: 1)
Phase.create(name:"Evaluación  de proyectos", start_date: Date.new(2021, 5, 2), end_date: Date.new(2021, 6, 1), edition_id: 1)
# Timelimit

# Institution
Institution.create(name: "Monterrey", city: "Monterrey")
Institution.create(name: "Saltillo", city: "Saltillo")
Institution.create(name: "Laguna", city: "Torreón")
Institution.create(name: "Tampico", city: "Tampico")
Institution.create(name: "Cumbres", city: "Monterrey")
Institution.create(name: "Garza Sada", city: "Monterrey")
Institution.create(name: "Santa Catarina", city: "Monterrey")
Institution.create(name: "Garza Lagüera", city: "Monterrey")
Institution.create(name: "Valle Alto", city: "Monterrey")

# Departments
Department.create(name: "Bioingeniería")
Department.create(name: "Ciencias")
Department.create(name: "Computación")
Department.create(name: "Industrial")
Department.create(name: "Mecánica y Materiales Avanzados")
Department.create(name: "Mecatronica y Electrónica")
Department.create(name: "Tecnologías Sostenibles y Civil")
Department.create(name: "Otro")





# Areas
ProjectArea.create(name: "Agrobiotecnología")
ProjectArea.create(name: "Automatización de Proceso")
ProjectArea.create(name: "Bionegocios")
ProjectArea.create(name: "Diseño Industrial")
ProjectArea.create(name: "Electrónica-Hardware")
ProjectArea.create(name: "Ingeniería Civil")
ProjectArea.create(name: "Ingeniería de Alimentos")
ProjectArea.create(name: "Ingeniería Industrial")
ProjectArea.create(name: "Ingeniería Mecánica")
ProjectArea.create(name: "Ingeniería Química")
ProjectArea.create(name: "Modelo Arquitectónico")
ProjectArea.create(name: "Modelo de Negocio")
ProjectArea.create(name: "Nanotecnología")
ProjectArea.create(name: "Proceso de Producción")
ProjectArea.create(name: "Química-Bioquímica")
ProjectArea.create(name: "Sistemas Embebidos")
ProjectArea.create(name: "Software")

#Base Categories:
ProjectCategory.create(name: "Desarrollo de Prototipo Físico")
ProjectCategory.create(name: "Desarrollo de Prototipo de Software")
ProjectCategory.create(name: "Investigación y Desarrollo de Propuestas de Mejora")
ProjectCategory.create(name: "Productos o Servicios para Emprendimiento de Base Tecnológica")



#Users
userProf = User.new(
    email: "profe@tec.com", 
    password: "123123", 
    first_name: "Luis", 
    last_name: "Gonzalez", 
    is_professor: 1
)
userProf.skip_confirmation!
userProf.save
prof = Professor.new(
    department: "Ciencias",
    user_id: userProf.id
)
prof.save

userAdmin = User.new(
    email: "admin@tec.com",
    password: "123123",
    first_name: "Juan",
    last_name: "Hinojosa",
    is_admin: 1
)
userAdmin.skip_confirmation!
userAdmin.save
admin = Administrator.new(
    user_id: userAdmin.id
)
admin.save

userStudent = User.new(
    email: "student@tec.com",
    password: "123123",
    first_name: "Fernanda",
    last_name: "Sánchez",
    is_student: 1
)
userStudent.skip_confirmation!
userStudent.save
student = Student.new(
    user_id: userStudent.id,
    major: "ITC",
    student_code: "A01570306"
)
student.save




# Users Previous DB
# userable = Administrator.create()
# User.create(
#     email: "juan@tec.mx",
#     password: "123123",
#     first_name: "Juan",
#     last_name: "Hinojosa",
#     edition_id: 1,
#     institution_id: 1
# )

# userable = Professor.create(
#     department: "ITC"
# )
# User.create(
#     email: "luis@tec.mx", 
#     password: "123123",
#     first_name: "Luis",
#     last_name: "Gonzalez",
#     edition_id: 1,
#     institution_id: 1,
# )

# userable = Student.create(
#     major: "ITC",
#     student_code: "A01234567"
# )
# User.create(
#     email: "pepe@tec.mx", 
#     password: "123123",
#     first_name: "Pepe",
#     last_name: "Garza",
#     userable_id: userable.id,
#     userable_type: "Student",
#     edition_id: 1,
#     institution_id: 1,
# )
