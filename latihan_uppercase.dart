/*Buatlah sebuah fungsi Dart yang menerima sebuah string sebagai argumen dan
mengembalikan string yang diubah menjadi huruf kapital. Gunakan fungsi
tersebut untuk mengubah sebuah string input dan mencetak hasilnya. */

void main() {
  String toUpperCase(String input) {
    return input.toUpperCase();
  }

  String input = "Halo Nama Saya Andi Nata";
  String output = toUpperCase(input);
  print(output); // Output: HELLO WORLD
}
