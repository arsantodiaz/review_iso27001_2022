# REVIEW KRITIS: RoPA IT - DEVILS ADVOCATE AUDITOR PERSPECTIVE
## UU PDP Compliance Audit

**Tanggal Review:** 9 April 2026  
**Diaudit:** ROPA_IT.xlsx (Divisi Teknologi Informasi)  
**Status:** TEMUAN MAJOR - Wajib Revisi

---

## TEMUAN MAYOR (HIGH RISK)

### 1. **CACAT FUNDAMENTAL: Dasar Pemrosesan TIDAK SSESUAI UU PDP**
- **Masalah:** Seluruh row menggunakan "Persetujuan" (Consent) sebagai dasar pemrosesan
- **Audit Finding:** Ini FATAL karena:
  - Row 11 (IT Data Integration): "Penarikan data reporting keperluan dari departemen/divisi lain" ini adalah **kewajiban internal operasional**, seharusnya dasar: **"Pemenuhan Kewajiban Perjanjian"** (contract - employee relationship) atau **"Kepentingan Sah Lainnya"**
  - Row 12 (Testing Data): Menggunakan data production untuk testing → ini **"Kepentingan Sah"** (Legitimate Interest) yang memerlukan **LIA (Legitimate Interest Assessment)**, bukan consent
  - Row 13 (Penghapusan data): Ini adalah kewajiban/obligasi, bukan consent → **"Pemenuhan Kewajiban Hukum"** (sesuai retention policy dan UU PDP)
- **Dampak Audit:** ❌ **TIDAK LULUS - Posisi hukum lemah** jika ada regulator check atau insiden data

---

### 2. **SUBJEK DATA PRIBADI TIDAK SPESIFIK = VAGUENESS FAILURE**
- **Masalah:** Semua row hanya tulis "Employees"
- **Audit Concern:**
  - Employees itu siapa? Pegawai tetap? Kontrak? Outsource? Temporer?
  - Aplikasi ini juga bisa memproses data Customers, Vendors, Partners
  - Row 12 mentioning "Transactional Data" dan "Medical Data" → ini artinya mungkin juga proses data non-employee
- **Requirement UU PDP:** Harus **spesifik identifikasi subjek data** (Karyawan Tetap PT X, Karyawan Kontrak PT X, Vendor Partner, dll)
- **Audit Verdict:** ⚠️ **CACAT KUALITAS** - Menunjukkan RoPA dibuat tanpa pemahaman proses bisnis yang mendalam

---

### 3. **JENIS DATA PRIBADI = UNDER-DISCLOSURE / INCOMPLETE**
- **Row 11:** Tulis "Personal Data, Contact Data" → TERLALU UMUM
  - Dalam konteks "penarikan data reporting", data apa saja yang ditarik? 
  - Apakah termasuk medical, financial, biometric?
  - Harus LIST spesifik atau minimal kategorisasi jelas
  
- **Row 12:** Tulis "Personal Data, Contact Data, Transactional Data, Medical Data"
  - ✓ Ini lebih baik, tapi masih VAGUE
  - **Medical Data** = SENSITIVE DATA (Pasal 4 UU PDP) → wajib kontrol lebih ketat
  - Tapi kontrol yang ditulis hanya "Data pada lingkungan pengujian dilakukan masking" → **INSUFFICIENT**
  
- **Row 13:** Sama dengan Row 11 → Under-disclosed

**Audit Finding:** ❌ **HIGH RISK** - Jika ada data sensitif yang tidak teridentifikasi jelas, auditor/regulator akan temukan sebagai **non-compliance**

---

### 4. **TIDAK ADA ID ROPA / ID INKONSISTEN**
- **Masalah:** Format template tidak mencakup **ID RoPA unik** untuk setiap aktivitas
- **Per Handbook UU PDP:** Setiap RoPA entry HARUS punya ID unik (misal: IT-DATAINT-01, IT-INFRA-01)
- **Audit Issue:** 
  - Sulit untuk reference & tracking
  - Kalau ada insiden, audit, atau update → tidak bisa clearly identify mana record yang berubah
  - Indikasi **lack of accountability & governance**
- **Status:** ❌ **FATAL** - Membuat RoPA tidak auditable

---

### 5. **TRANSFER LINTAS NEGARA = MISSING CRITICAL FIELD**
- **Masalah:** Kolom "Country that received the personal data" ditulis "N/a"
  - Untuk ALL 3 rows → **HIGHLY SUSPICIOUS**
  - Di era cloud, mana mungkin data TIDAK ada cross-border transfer?
- **Pertanyaan Auditor:**
  - Database dimana hosting? Indonesia only? Cloud AWS/Azure/Google?
  - Backup disimpan dimana?
  - Disaster recovery melibatkan server luar negeri?
- **Audit Verdict:** ❌ **RED FLAG** - Indikasi data tidak diaudit dengan teliti OR proses tidak transparent
- **Requirement:** HARUS jelaskan lokasi data storage, terutama jika ada cloud/third-party involvement

---

### 6. **KOLOM "DATA PROCESSOR" TAPI TIDAK ADA CRITICAL FIELDS**
- **Row 11:** Tulis "Data Processor" untuk Business Team / Operational Team
  - ❓ **LOGIKA SALAH:** Jika mereka penerima data dari IT, mereka adalah DATA CONTROLLER (menentukan tujuan), bukan processor
  - Atau malah IT adalah Processor? Tapi IT juga set tujuan? → Ini bisa **JOINT CONTROLLER**
  
- **Row 12:** Sama → Data Processor untuk Business Team
  - Tapi siapa yang set tujuan testing? IT atau Business?
  - Ada **lack of clarity** tentang roles & responsibilities
  
- **Row 13:** Data Processor
  - ❓ Siapa yang order penghapusan? Siapa menentukan retention policy? Siapa execute?
  - **Role tidak jelas = accountability tidak jelas**

**Audit Severity:** ❌ **HIGH** - Controller/Processor roles MUST be clearly defined per UU PDP Pasal 20-21

---

### 7. **KOLOM "CONTRACTUAL AGREEMENT" = INSUFFICIENT DOCUMENTATION**
- **Masalah:** Tulis "Surat pernyataan kerahasiaan data" untuk semua
  - ❓ Surat pernyataan kerahasiaan (NDA/Confidentiality Statement) ≠ **Data Processing Agreement (DPA)**
  - DPA harus mencakup:
    - Sub-processor authorization terms
    - Data subject rights fulfillment mechanisms
    - Security obligations
    - Deletion/return of data obligations
    - International transfer safeguards (jika ada)
  - NDA hanya cover "rahasia" tapi tidak comprehensively cover PDP legal obligations
  
- **Per UU PDP Pasal 33:** Harus ada **Perjanjian Pemrosesan Data** yang mengikat Pengendali & Prosesor
- **Audit Verdict:** ⚠️ **MAJOR FINDING** - Dokumentasi tidak comply dengan requirement

---

### 8. **TECHNICAL & ORGANISATIONAL MEASURES = TOO VAGUE & INCOMPLETE**
- **Row 11:** "Pengiriman data dilakukan proteksi dengan enkripsi, dan key hanya dikirimkan ke personil yang meminta"
  - ❓ Encryption jenis apa? AES-256? SSL/TLS?
  - ❓ Key management bagaimana? Siapa manage? How rotated?
  - ❓ "Personil yang meminta" itu berapa orang? Ada authorization matrix?
  - ❓ Audit trail ada?
  - **Audit Concern:** Terlalu generic, tidak bisa verify compliance
  
- **Row 12:** "Data pada lingkungan pengujian dilakukan masking"
  - ❓ Masking technique apa? Full masking? Partial?
  - ❓ Masking validation dilakukan? Dimana dokumentasinya?
  - ❓ Test data lifecycle bagaimana?
  - **Issue:** Jika ada insiden kebocoran test data → posisi hukum lemah (tidak bisa prove due diligence)
  
- **Row 13:** Tidak ada kontrol teknis yang jelas
  - ❓ Penghapusan bagaimana? Secure delete? Shredding? Wiping? Cryptographic erasure?
  - ❓ Verification penghapusan? Berita acara disebutkan tapi detailnya mana?

**Audit Finding:** ❌ **COMPLIANCE RISK** - Tidak bisa demonstrate proper safeguards

---

### 9. **LACK OF LEGITIMATE INTEREST ASSESSMENT (LIA)**
- **Row 12:** "Pencadangan dan Pemulihan data/informasi untuk keperluan testing"
  - Ini clearly adalah **Kepentingan Sah** (Legitimate Interest) → butuh LIA
  - Tapi tidak ada reference ke LIA document
  - Sama dengan Row 11 sebenarnya juga butuh LIA (if tidak bisa justify sebagai contract)

**Per Handbook UU PDP & Pasal 6 Ayat 2(g):** Jika basis "Kepentingan Sah" → WAJIB dokumen LIA

**Audit Verdict:** ❌ **TIDAK LULUS** - Missing critical compliance documentation

---

### 10. **TIDAK ADA DATA SUBJECT RIGHTS FULFILLMENT MECHANISM**
- **Row 11:** "Right to access"
  - ❓ Bagaimana subjek data bisa akses data mereka?
  - ❓ Ada portal / form? Response time?
  - ❓ Siapa tanggung jawab?
  
- **Row 12:** "Right to access / update / delete"
  - Ini menyangkut data testing yang juga punya sensitive data
  - ❓ Tapi bagaimana mekanismanya? Di test environment bisa langsung delete? Tapi production?
  - **Audit Concern:** Mungkin hak tidak bisa efektif dijalankan → breach Pasal 16 UU PDP
  
- **Row 13:** "Right to delete"
  - ✓ Logika benar untuk penghapusan
  - Tapi mekanisme? Proof? Accountability?

**Finding:** ⚠️ **MEDIUM-HIGH** - Rights tidak bisa fulfill = non-compliance

---

### 11. **TIDAK ADA DPIA SCREENING INDICATOR**
- **Masalah:** Tidak ada kolom yang menunjukkan apakah DPIA wajib atau tidak
- **Row 12 harus DPIA karena:**
  - ✓ Menggunakan data pribadi spesifik (Medical Data) → YES
  - ✓ Penggunaan teknologi (testing environment, data masking) → YES
  - ✓ Pemrosesan skala besar? (jika semua employee data digunakan) → POSSIBLY YES
  - **Kesimpulan:** 🔴 **WAJIB DPIA** tapi tidak teridentifikasi dalam RoPA

**Audit Verdict:** ❌ **CRITICAL MISS** - Indikasi tidak ada risk assessment yang proper

---

### 12. **TIDAK ADA TANGGAL REVIEW / UPDATE**
- **Masalah:** Tidak ada kolom untuk tracking kapan RoPA terakhir di-review/update
- **Per UU PDP:** RoPA adalah "living document" harus di-maintain & updated
- **Audit Question:** RoPA ini terakhir update kapan? Valid sampai kapan?
- **Finding:** ⚠️ **GOVERNANCE ISSUE** - Tidak bisa demonstrate continuous monitoring

---

## KESIMPULAN AUDIT

| Kategori | Rating | Detail |
|----------|--------|--------|
| **Legalitas Dasar** | 🔴 FAIL | Dasar pemrosesan tidak tepat, perlu revisi semua entry |
| **Identifikasi Data** | 🔴 FAIL | Subjek & jenis data terlalu vague |
| **Transfer Lintas Negara** | 🔴 FAIL | Marked N/a tapi tidak credible |
| **Controller/Processor Roles** | 🟠 HIGH RISK | Tidak jelas, potentially joint-controller undefined |
| **Documentation** | 🟠 HIGH RISK | NDA ≠ DPA, missing LIA |
| **Technical Measures** | 🟠 HIGH RISK | Generic, tidak verifiable |
| **Data Subject Rights** | 🟠 HIGH RISK | Mekanisme tidak jelas |
| **Risk Assessment** | 🔴 FAIL | Tidak ada DPIA screening, Row 12 wajib DPIA |
| **Overall Compliance** | 🔴 **NOT COMPLIANT** | Wajib revisi MAJOR |

---

## REKOMENDASI PERBAIKAN

### Immediate Actions:
1. **Revisi dasar pemrosesan** untuk setiap row ← PRIORITY 1
2. **Identifikasi jenis data spesifik** untuk setiap processing activity ← PRIORITY 1
3. **Klarifikasi roles** (Controller/Processor/Joint) ← PRIORITY 1
4. **Buat/Update DPA** dengan Business Team untuk Row 11 & 12 ← PRIORITY 2
5. **Buat LIA** untuk Row 11 & 12 (jika tidak bisa justify sebagai contract basis) ← PRIORITY 2
6. **Lakukan DPIA** untuk Row 12 (sensitif data + teknologi) ← PRIORITY 1
7. **Tambah ID ROPA unik** untuk setiap entry ← PRIORITY 2
8. **Klarifikasi transfer lintas negara** (data storage location) ← PRIORITY 2
9. **Dokumentasikan technical measures** dengan detail spesifik ← PRIORITY 2
10. **Buat mechanism untuk fulfil data subject rights** ← PRIORITY 2

### Format Improvement:
- Tambah kolom: ID RoPA, Transfer Lintas Negara (explicit), DPIA Required (Y/N), Last Review Date
- Pisahkan "Dasar Pemrosesan" menjadi multiple options (tidak bisa semua "Persetujuan")
- Tambah Data Classification untuk menunjukkan sensitive vs non-sensitive
- Reference ke dokumen pendukung (LIA, DPA, DPIA) harus explicit

---

## RISK STATEMENT

**Jika RoPA ini tidak diperbaiki dan terjadi insiden data atau audit oleh regulator:**
- Organisasi tidak bisa membuktikan compliance dengan UU PDP Pasal 5-8 (lawful basis)
- Organisasi tidak bisa demonstrate accountability sebagaimana diminta Pasal 5 ayat (2)
- Positioning hukum sangat lemah untuk defend terhadap sanksi atau klaim
- Reputasi risk tinggi jika media/publik mengetahui data processing tidak documented properly

**Severity: CRITICAL** ⚠️

---

*Review oleh: Auditor UU PDP (Devils Advocate Mode)*  
*Objective: Ensure Zero-Tolerance approach to compliance*
