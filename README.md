# ABAPConf 2025 – TRM Dependency Example Utils

This utility library is part of the **ABAPConf 2025 TRM Demo**. It is designed to be used as a shared component that other ABAP packages can depend on. This enables demonstration of **TRM’s dependency resolution capabilities** during deployment.

## 💡 Purpose

Provides a simple function to calculate `Price + VAT`. Intended to be reused by other packages like the [`abapconf2025_app`](https://github.com/RegestaItalia/abapconf2025_app).

## 🧮 Functionality

- **Core Logic:** Adds a predefined VAT percentage (e.g., 22%) to a given price.
- **Exported Function Module / Class Method:** Can be easily reused across RAP services or traditional ABAP programs.

## 🧩 Usage Example

Used by the [ABAPConf 2025 – TRM Dependency Example App](https://github.com/RegestaItalia/abapconf2025_app) to calculate order totals.

## 🚀 How to Deploy

If used standalone:
1. Import the repository using TRM or abapGit.
2. Activate all objects.

If used as a dependency:
- TRM will automatically install this utility when any app declares it as a required package.

## 👥 Authors

Maintained by [Regesta](https://www.regestaitalia.it) for ABAPConf 2025.

## 📝 License

[MIT License](LICENSE)
