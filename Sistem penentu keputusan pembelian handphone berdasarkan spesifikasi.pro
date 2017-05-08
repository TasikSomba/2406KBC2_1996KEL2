domains
kriteria = kriteria(harga,kamera,ram,baterai)
angka = integer
nama= string
harga= integer
kamera= integer
baterai= integer
ram= integer
list = string*

predicates
nondeterm start
nondeterm run(angka)
nondeterm kriteria_produk(nama,kriteria)
nondeterm pilih(char)
cetak_list(list)
nama_produk(list)
pilihan(harga,kamera,ram,baterai)

clauses
start:-	write("**********************************************************************************************************************************************************************************************************"),nl,
	write("\t\t\t PROGRAM PENDUKUNG KEPUTUSAN PEMBELIAN HP BERDASARKAN SPESIFIKASI"), nl,
	write("**********************************************************************************************************************************************************************************************************"),nl,
	write("ingin melihat produk yang ada terlebih dahulu? <y/n>"),
	readchar(ANS),
	pilih(ANS).

pilih('y'):-run(1).
pilih('Y'):-run(1).
pilih('n'):-run(2).
pilih('N'):-run(2).

run(1):-nl,nl,write("Daftar HP yang ada di program kami"),nl,
	write("=================================="),
	nl,nama_produk(List),
	cetak_list(List),
	write("=================================="),nl,
	write("tekan sembarang untuk lanjut..."),nl,
	readchar(_),
	run(2).


run(2):-nl,
pilihan(Harga,Kamera,Ram,Baterai),
kriteria_produk(A,kriteria(Harga,Kamera,Ram,Baterai)),
write("HP yang cocok untuk anda adalah ",A),nl,
write("terimakasih telah menggunakan program kami ^^"),nl,
nl.

cetak_list([]).

cetak_list([H|T]):-
write(H),nl,
cetak_list(T).

pilihan(Harga,Kamera,Ram,Baterai):-write("Kisaran Harga"),nl,
				write("=================================="),nl,
				write("1. Rp.1.000.000 - Rp.2.000.000 "),nl,
				write("2. Rp.2.000.000 - Rp.3.000.000 "),nl,
				write("3. Rp.3.000.000 - Rp.4.000.000 "),nl,
				write("4. Rp.4.000.000 - Rp.5.000.000 "),nl,
				write("5. Rp.5.000.000 - Rp.6.000.000 "),nl,
				write("6. Rp.6.000.000 - Rp.7.000.000 "),nl,
				write("7. Rp.7.000.000 - Rp.9.000.000 "),nl,
				write("8. Rp.9.000.000 - Rp.11.000.000 "),nl,
				write("=================================="),nl,
				write("*silahkan pilih nomor : "),nl,
				readint(Harga),
				write("=================================="),nl,
				write("ukuran kamera"),nl,
				write("1. 1MP - 3MP"),nl,
				write("2. 3MP - 4MP"),nl,
				write("3. 5MP - 7MP"),nl,
				write("4. 7MP - 9MP"),nl,
				write("5. 9MP - 11MP"),nl,
				write("6. 11MP - 13MP"),nl,
				write("7. 13MP - 14MP"),nl,
				write("8. 14MP - 16MP"),nl,
				write("=================================="),nl,
				write("*silahkan pilih nomor : "),nl,
				readint(Kamera),
				write("=================================="),nl,
				write("ukuran RAM"),nl,
				write("1. 1GB - 2GB"),nl,
				write("2. 2GB - 3GB"),nl,
				write("3. 3GB - 4GB"),nl,
				write("=================================="),nl,
				write("*silahkan pilih nomor : "),nl,
				readint(Ram),
				write("=================================="),nl,
				write("ukuran Baterai"),nl,
				write("1. 1000 - 2000"),nl,
				write("2. 2000 - 3000"),nl,
				write("3. 3000 - 4200"),nl,
				write("=================================="),nl,
				write("*silahkan pilih nomor : "),nl,
				readint(Baterai).		


nama_produk([
"iphone 5s",
"iphone 6",
"iphone 7",
"samsung S5",
"samsung S6",
"samsung S7",
"lenovo A600",
"lenovo K2",
"lenovo P2",
"xiaomi redmi note",
"xiaomi mi4",
"xiaomi mi5",
"vivo V",
"vivo Y2",
"vivo Y5",
"nokia 5500",
"nokia N",
"nokia N6"]).

kriteria_produk("iphone 5s", kriteria(1,1,1,1) ).
kriteria_produk("iphone 6", kriteria(1,2,3,3) ).
kriteria_produk("iphone 7", kriteria(2,4,1,2) ).
kriteria_produk("samsung S5", kriteria(4,4,1,2) ).
kriteria_produk("samsung S6", kriteria(4,4,1,3) ).
kriteria_produk("samsung S7", kriteria(8,7,2,3) ).
kriteria_produk("lenovo A600", kriteria(6,2,3,3) ).
kriteria_produk("lenovo K2", kriteria(4,5,2,1) ).
kriteria_produk("lenovo P2", kriteria(1,2,3,3) ).
kriteria_produk("xiaomi redmi note 3", kriteria(1,2,3,1) ).
kriteria_produk("xiaomi mi4", kriteria(1,2,3,3) ).
kriteria_produk("xiaomi mi5", kriteria(1,2,3,3) ).
kriteria_produk("vivo V3", kriteria(1,2,3,3) ).
kriteria_produk("vivo Y2", kriteria(1,2,3,3) ).
kriteria_produk("vivo Y5", kriteria(1,2,3,3) ).
kriteria_produk("nokia 5500", kriteria(1,2,3,3) ).
kriteria_produk("nokia N3", kriteria(1,2,3,3) ).
kriteria_produk("nokia N6", kriteria(1,2,3,3) ).

goal
start;nl,nl,write("Maaf tidak dapat memberikan saran yang cocok untuk anda"),nl.
