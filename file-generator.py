import random
import string


def random_string(length):
    return "".join(random.choices(string.ascii_lowercase, k=length))


def random_price():
    return round(random.uniform(1, 1000), 2)


cities = [
    "Santiago",
    "Valparaíso",
    "Concepción",
    "La Serena",
    "Antofagasta",
    "Viña del Mar",
    "Arica",
    "Iquique",
    "Punta Arenas",
    "Puerto Montt",
]


def generate_record():
    product = random_string(random.randint(5, 15))
    price = random_price()
    city = random.choice(cities)
    return f"{product} {price:.2f} {city}\n"


def main():
    target_size = 1 * 1024 * 1024 * 1024  # 1 GB in bytes
    filename = "product_data.txt"

    with open(filename, "w") as f:
        f.write("producto precio ciudad\n")  # Header
        current_size = len("producto precio ciudad\n")

        while current_size < target_size:
            record = generate_record()
            f.write(record)
            current_size += len(record.encode("utf-8"))

            if current_size % (100 * 1024 * 1024) == 0:  # Print progress every 100 MB
                print(f"Generated {current_size / (1024 * 1024):.2f} MB")

    print(f"File '{filename}' has been generated with a size of approximately 1 GB.")


if __name__ == "__main__":
    main()
