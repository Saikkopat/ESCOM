class Vector:
	def __init__(self, x, y):
		self.x = x
		self.y = y

	def __add__(self, otroVector):
		return Vector(self.x + otroVector.x, self.y + otroVector.y)

	def __sub__(self, otroVector):
		return Vector(self.x - otroVector.x, self.y - otroVector.y)

	def __str__(self):
		return f"({self.x}, {self.y})"

	def __del__(self):
		print(f"Se ha destruido el vector {self}")
pass