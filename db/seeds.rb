puts "🌱 Seeding spices..."

# Seed your database here
User.create(
     "full_name":"John Justice",
     "email":"john@gmail.com",
    "password_hash":"1234",
     "created_at":30/10/2004,
    "updated_at":1/01/1994
)
Task.create(
     "title":"John Justice",
     "description":"john@gmail.com",
    
     "createdAt":22/06/2001
    
)
puts "✅ Done seeding!"
