#include <stdio.h>
#include "utils.h"

float max(float arr[], size_t size);
int main() {
    // Float variables
    float input_temperatur_dingin;
    float input_temperatur_sedang;
    float input_temperatur_panas;
    float input_kelembaban_rendah;
    float input_kelembaban_sedang;
    float input_kelembaban_tinggi;
    float durasi_pendek[9] = {};
    float durasi_sedang[9] = {};
    float durasi_lama[9] = {};
    
    // Char variables
    char buffer[100];
    char rule_base[3][3] = {
        {'S', 'P', 'P'},
        {'S', 'S', 'L'},
        {'P', 'S', 'S'}
    };
    // Integer variables
    int valid = 0;

    // input temperatur dingin
    while (!valid) {
        printf("Masukkan nilai temperatur dingin: ");
        if (fgets(buffer, sizeof(buffer), stdin) != NULL) {
            if (sscanf(buffer, "%f", &input_temperatur_dingin) == 1) {
                valid = 1;
            } else {
                printf("Input tidak valid. Harap masukkan angka.\n");
            }
        }
    }
    valid = 0;
    // input temperatur sedang
    while (!valid) {
        printf("Masukkan nilai temperatur sedang: ");
        if (fgets(buffer, sizeof(buffer), stdin) != NULL) {
            if (sscanf(buffer, "%f", &input_temperatur_sedang) == 1) {
                valid = 1;
            } else {
                printf("Input tidak valid. Harap masukkan angka.\n");
            }
        }
    }
    valid = 0;
    // input temperatur panas
    while (!valid) {
        printf("Masukkan nilai temperatur panas: ");
        if (fgets(buffer, sizeof(buffer), stdin) != NULL) {
            if (sscanf(buffer, "%f", &input_temperatur_panas) == 1) {
                valid = 1;
            } else {
                printf("Input tidak valid. Harap masukkan angka.\n");
            }
        }
    }
    valid = 0;
    // input kelembaban rendah
    while (!valid) {
        printf("Masukkan nilai kelembaban rendah: ");
        if (fgets(buffer, sizeof(buffer), stdin) != NULL) {
            if (sscanf(buffer, "%f", &input_kelembaban_rendah) == 1) {
                valid = 1;
            } else {
                printf("Input tidak valid. Harap masukkan angka.\n");
            }
        }
    }
    valid = 0;
    // input kelembaban sedang
    while (!valid) {
        printf("Masukkan nilai kelembaban sedang: ");
        if (fgets(buffer, sizeof(buffer), stdin) != NULL) {
            if (sscanf(buffer, "%f", &input_kelembaban_sedang) == 1) {
                valid = 1;
            } else {
                printf("Input tidak valid. Harap masukkan angka.\n");
            }
        }
    }
    valid = 0;
    // input kelembaban tinggi
    while (!valid) {
        printf("Masukkan nilai kelembaban tinggi: ");
        if (fgets(buffer, sizeof(buffer), stdin) != NULL) {
            if (sscanf(buffer, "%f", &input_kelembaban_tinggi) == 1) {
                valid = 1;
            } else {
                printf("Input tidak valid. Harap masukkan angka.\n");
            }
        }
    }
    valid = 0;
    // masukkan input temperatur dan input kelembaban menjadi array
    float input_temperatur[] = {input_temperatur_dingin, input_temperatur_sedang, input_temperatur_panas};
    float input_kelembaban[] = {input_kelembaban_rendah, input_kelembaban_sedang, input_kelembaban_tinggi};
    int index_durasi_pendek = 0;
    int index_durasi_sedang = 0;
    int index_durasi_lama = 0;
    for (int t = 0; t < sizeof(input_temperatur) / sizeof(input_temperatur[0]); t++) {
        for (int k = 0; k < sizeof(input_kelembaban) / sizeof(input_kelembaban[0]); k++) {
            // print rule base berdasarkan index input temperatur dan input kelembaban
            char rule = rule_base[t][k];
            // print rule
            printf("Rule: %c\n", rule);
            switch (rule) {
                case 'P':
                    // tambahkan nilai input_temperatur dan input_kelembaban ke array durasi_pendek
                    durasi_pendek[index_durasi_pendek] = (input_temperatur[t] < input_kelembaban[k]) ? input_temperatur[t] : input_kelembaban[k];
                    printf("Tambahkan ke array durasi pendek: %.2f\n", durasi_pendek[index_durasi_pendek]);
                    index_durasi_pendek++;
                    break;
                case 'S':
                    // tambahkan nilai input_temperatur dan input_kelembaban ke array durasi_sedang
                    durasi_sedang[index_durasi_sedang] = (input_temperatur[t] < input_kelembaban[k]) ? input_temperatur[t] : input_kelembaban[k];
                    printf("Tambahkan ke array durasi sedang: %.2f\n", durasi_sedang[index_durasi_sedang]);
                    index_durasi_sedang++;
                    break;
                case 'L':
                    // tambahkan nilai input_temperatur dan input_kelembaban ke array durasi_lama
                    durasi_lama[index_durasi_lama] = (input_temperatur[t] < input_kelembaban[k]) ? input_temperatur[t] : input_kelembaban[k];
                    printf("Tambahkan ke array durasi lama: %.2f\n", durasi_lama[index_durasi_lama]);
                    index_durasi_lama++;
                    break;
                
                default:
                    break;
            }
        }
    }

    // cetak durasi pendek
    printf("Durasi pendek: \n");
    for (int i = 0; i < sizeof(durasi_pendek) / sizeof(durasi_pendek[0]); i++)
    {
        printf("%.2f \n", durasi_pendek[i]);
    }
    printf("\n");
    // cetak durasi sedang
    printf("Durasi sedang: \n");
    for (int i = 0; i < sizeof(durasi_sedang) / sizeof(durasi_sedang[0]); i++)
    {
        printf("%.2f \n", durasi_sedang[i]);
    }
    printf("\n");
    // cetak durasi lama
    printf("Durasi lama: \n");
    for (int i = 0; i < sizeof(durasi_lama) / sizeof(durasi_lama[0]); i++)
    {
        printf("%.2f \n", durasi_lama[i]);
    }
    printf("\n");

    // cetak output inferensi
    // ambil nilai max dari array durasi_pendek, durasi_sedang, dan durasi_lama
    float max_durasi_pendek = max(durasi_pendek, sizeof(durasi_pendek));
    float max_durasi_sedang = max(durasi_sedang, sizeof(durasi_sedang));
    float max_durasi_lama = max(durasi_lama, sizeof(durasi_lama));
    printf("Durasi pendek: %.2f\n", max_durasi_pendek);
    printf("Durasi sedang: %.2f\n", max_durasi_sedang);
    printf("Durasi lama: %.2f\n", max_durasi_lama);
    
    
    return 0;
}

float max(float arr[], size_t size) {
    float max_val = arr[0];
    for (size_t i = 1; i < size / sizeof(arr[0]); i++) {
        if (arr[i] > max_val) {
            max_val = arr[i];
        }
    }
    return max_val;
}