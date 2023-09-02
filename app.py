from app.controller.send_wa import *

choice = input(
    "Pilih tindakan (1 untuk pesan, 2 untuk gambar, 3 untuk tautan): ")

if choice == "1":
    bulk_send_message()
elif choice == "2":
    bulk_send_image()
elif choice == "3":
    bulk_send_link()
else:
    print("Pilihan tidak valid. Silakan pilih 1, 2, atau 3.")
