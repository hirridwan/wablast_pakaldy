from app.controller.ruangwa import RuangWa
from app.config.database import *
import sys
import os
import time
import datetime
import json

from dotenv import load_dotenv
load_dotenv()

sys.path.append(os.getenv('APP_PATH'))

connection = create_connection()


def bulk_send_message():
    try:
        cursor = connection.cursor()
        query = "select * from send_message where terkirim=0"
        cursor.execute(query)

        cursor2 = connection.cursor()

        rows = cursor.fetchall()
        ruangwa = RuangWa()

        counter = 0
        jml_nomor = cursor.rowcount
        length_no_hp = 12

        for row in rows:
            jml_spasi = 2
            result = ruangwa.send_wa(row[1], row[2])
            result_string = json.dumps(result)
            counter += 1
            tanggal = datetime.datetime.now().strftime("%Y-%m-%d %H:%M:%S")
            jml_nomor -= 1
            if (result['result'] == 'true'):
                status = 1
                message = f" Terkirim ke {row[1]}"
            else:
                status = 2
                message = f" Gagal terkirim ke {row[1]}"
            try:
                updateStatement = f"UPDATE send_message set terkirim=1, waktu='{tanggal}', callback='{result_string}' where id={row[0]}"
                cursor.execute(updateStatement)
                connection.commit()
                print(message)
                if (counter == 5):
                    print(
                        '=============================================================================')
                    print(f'{jml_nomor} Nomor Lagi')
                    counter = 0
                    time.sleep(60)
            except Exception as e:
                print(f'Error Update database : {e}')
                if (counter == 5):
                    print(
                        '=============================================================================')
                    print(f'{jml_nomor} Nomor Lagi')
                    time.sleep(60)
                    counter = 0
    except Exception as e:
        print(f'Error: {e}')

# bulk_send_wa()


def bulk_send_image():
    try:
        cursor = connection.cursor()
        query = "select * from send_image where terkirim=0"
        cursor.execute(query)

        cursor2 = connection.cursor()

        rows = cursor.fetchall()
        ruangwa = RuangWa()

        counter = 0
        jml_nomor = cursor.rowcount
        length_no_hp = 12

        for row in rows:
            jml_spasi = 2
            result = ruangwa.send_image(row[1], row[2], row[3])
            result_string = json.dumps(result)
            counter += 1
            tanggal = datetime.datetime.now().strftime("%Y-%m-%d %H:%M:%S")
            jml_nomor -= 1
            if (result['result'] == 'true'):
                status = 1
                message = f" Terkirim ke {row[1]}"
            else:
                status = 2
                message = f" Gagal terkirim ke {row[1]}"
            try:
                updateStatement = f"UPDATE send_image set terkirim=1, waktu='{tanggal}', callback='{result_string}' where id={row[0]}"
                cursor.execute(updateStatement)
                connection.commit()
                print(message)
                if (counter == 5):
                    print(
                        '=============================================================================')
                    print(f'{jml_nomor} Nomor Lagi')
                    counter = 0
                    time.sleep(60)
            except Exception as e:
                print(f'Error Update database : {e}')
                if (counter == 5):
                    print(
                        '=============================================================================')
                    print(f'{jml_nomor} Nomor Lagi')
                    time.sleep(60)
                    counter = 0
    except Exception as e:
        print(f'Error: {e}')

# bulk_send_image()


def bulk_send_link():
    try:
        cursor = connection.cursor()
        query = "select * from send_link where terkirim=0"
        cursor.execute(query)

        cursor2 = connection.cursor()

        rows = cursor.fetchall()
        ruangwa = RuangWa()

        counter = 0
        jml_nomor = cursor.rowcount
        length_no_hp = 12

        for row in rows:
            jml_spasi = 2
            result = ruangwa.send_link(row[1], row[2])
            result_string = json.dumps(result)
            counter += 1
            tanggal = datetime.datetime.now().strftime("%Y-%m-%d %H:%M:%S")
            jml_nomor -= 1
            if (result['result'] == 'true'):
                status = 1
                message = f" Terkirim ke {row[1]}"
            else:
                status = 2
                message = f" Gagal terkirim ke {row[1]}"
            try:
                updateStatement = f"UPDATE send_link set terkirim=1, waktu='{tanggal}', callback='{result_string}' where id={row[0]}"
                cursor.execute(updateStatement)
                connection.commit()
                print(message)
                if (counter == 5):
                    print(
                        '=============================================================================')
                    print(f'{jml_nomor} Nomor Lagi')
                    counter = 0
                    time.sleep(60)
            except Exception as e:
                print(f'Error Update database : {e}')
                if (counter == 5):
                    print(
                        '=============================================================================')
                    print(f'{jml_nomor} Nomor Lagi')
                    time.sleep(60)
                    counter = 0
    except Exception as e:
        print(f'Error: {e}')

# bulk_send_link()

# bulk_send_video()


def bulk_send_video():
    try:
        cursor = connection.cursor()
        query = "select * from send_video where terkirim=0"
        cursor.execute(query)

        cursor2 = connection.cursor()

        rows = cursor.fetchall()
        ruangwa = RuangWa()

        counter = 0
        jml_nomor = cursor.rowcount
        length_no_hp = 12

        for row in rows:
            jml_spasi = 2
            result = ruangwa.send_video(row[1], row[2], row[3])
            result_string = json.dumps(result)
            counter += 1
            tanggal = datetime.datetime.now().strftime("%Y-%m-%d %H:%M:%S")
            jml_nomor -= 1
            if (result['result'] == 'true'):
                status = 1
                message = f" Terkirim ke {row[1]}"
            else:
                status = 2
                message = f" Gagal terkirim ke {row[1]}"
            try:
                updateStatement = f"UPDATE send_video set terkirim=1, waktu='{tanggal}', callback='{result_string}' where id={row[0]}"
                cursor.execute(updateStatement)
                connection.commit()
                print(message)
                if (counter == 5):
                    print(
                        '=============================================================================')
                    print(f'{jml_nomor} Nomor Lagi')
                    counter = 0
                    time.sleep(60)
            except Exception as e:
                print(f'Error Update database : {e}')
                if (counter == 5):
                    print(
                        '=============================================================================')
                    print(f'{jml_nomor} Nomor Lagi')
                    time.sleep(60)
                    counter = 0
    except Exception as e:
        print(f'Error: {e}')

# bulk_send_video()


def bulk_check_wa():
    try:
        cursor = connection.cursor()
        query = "select * from nasabah_hp where checked is null"
        cursor.execute(query)

        cursor2 = connection.cursor()

        rows = cursor.fetchall()
        ruangwa = RuangWa()

        counter = 0
        jml_nomor = cursor.rowcount
        length_no_hp = 12

        for row in rows:
            jml_spasi = 2
            result = ruangwa.cek_wa(row[7])
            counter += 1
            jml_nomor -= 1
            if (result['onwhatsapp'] == 'true'):
                status = 1
                message = " Terdaftar"
            else:
                status = 2
                message = " Tidak Terdaftar"
            try:
                updateStatement = f"UPDATE nasabah_hp set checked=1, status={status},keterangan='{result['message']}' where id={row[0]}"
                cursor.execute(updateStatement)
                connection.commit()
                jml_spasi += 37-len(row[3])
                if (len(row[7]) < length_no_hp):
                    jml_spasi += (length_no_hp-len(row[7]))
                elif (len(row[7]) > length_no_hp):
                    jml_spasi += (length_no_hp-len(row[7]))

                print(
                    f'Nomor HP {row[7]} a.n {row[3]} {" "*jml_spasi} | {message}')
                if (counter == 30):
                    print(
                        '=============================================================================')
                    print(f'{jml_nomor} Nomor Lagi')
                    counter = 0
                    time.sleep(60)
            except Exception as e:
                print(f'Error Update database : {e}')
                if (counter == 30):
                    print(
                        '=============================================================================')
                    print(f'{jml_nomor} Nomor Lagi')
                    time.sleep(60)
                    counter = 0
    except Exception as e:
        print(f'Error: {e}')

# bulk_check_wa()
