from app.controller.send_wa import *

choice = input(
    "Pilih tindakan pengiriman (1 untuk pesan, 2 untuk gambar, 3 untuk tautan, 4 untuk video): ")

if choice == "1":
    bulk_send_message()
elif choice == "2":
    bulk_send_image()
elif choice == "3":
    bulk_send_link()
elif choice == "4":
    bulk_send_video()
else:
    print("Pilihan tidak valid. Silakan pilih 1, 2, atau 3.")
