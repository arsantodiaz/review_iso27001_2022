# DOKUMENTASI YANG KURANG (Kebijakan + Prosedur)
## PT Equity Life Indonesia - Compliance ISO 27001:2022

**Status Kebijakan:** SK-ITS-101 sudah ada dan comprehensive ✓
**Status Prosedur:** BANYAK YANG KURANG ❌

---

## A. PROSEDUR YANG HARUS DITAMBAHKAN (Per Klausul di SK-ITS-101)

### **Bagian 3: Kontrol Organisasi**

#### 3.1 Klasifikasi Informasi
- **Kebijakan:** Ada (SK-ITS-101, Section 3.1) ✓
- **Prosedur Kurang:**
  - [ ] PO-ITS-201: Prosedur Klasifikasi Data (detail penentuan class, tools, watermarking)
  - [ ] PO-ITS-202: Prosedur Labeling & Marking Informasi (bagaimana label diterapkan)
  - [ ] Template: Data Classification Register (daftar sistem & data levelnya)

#### 3.2 Manajemen Pemindahan Informasi (Data Transfer)
- **Kebijakan:** Ada ✓
- **Prosedur Kurang:**
  - [ ] PO-ITS-203: Prosedur Pengiriman Email Aman (encryption, DLP rules)
  - [ ] PO-ITS-204: Prosedur Removable Storage (USB encryption, approval)
  - [ ] PO-ITS-205: Prosedur Transfer Data Eksternal (pihak ketiga, NDA)
  - [ ] Checklist: Email Security Configuration
  - [ ] Checklist: DLP Policy Configuration

#### 3.3 Asset Management
- **Kebijakan:** Ada ✓
- **Prosedur Kurang:**
  - [ ] PO-ITS-206: Prosedur Inventori Aset IT (tracking, asset tag)
  - [ ] PO-ITS-207: Prosedur Akuisisi Aset (approval, testing)
  - [ ] PO-ITS-208: Prosedur Maintenance Aset (patching, update schedule)
  - [ ] PO-ITS-209: Prosedur Decommissioning Aset (data wiping, disposal)
  - [ ] Template: Asset Master Register (Excel/DB dengan lifecycle)
  - [ ] Checklist: Hardware Lifecycle Management

#### 3.4 Identity Management
- **Kebijakan:** Ada ✓
- **Prosedur Kurang:**
  - [ ] PO-ITS-210: Prosedur Provisioning User ID (form, approval, timing)
  - [ ] PO-ITS-211: Prosedur De-provisioning User ID (saat resign/mutasi)
  - [ ] Template: User Access Request Form (termasuk role & approver)
  - [ ] Checklist: User ID Naming Standard

#### 3.5 Authentication Management
- **Kebijakan:** Ada ✓
- **Prosedur Kurang:**
  - [ ] PO-ITS-212: Prosedur Password Management (complexity, reset, history)
  - [ ] PO-ITS-213: Prosedur Multi-Factor Authentication (MFA setup & enforcement)
  - [ ] PO-ITS-214: Prosedur Emergency Access (break glass procedure)
  - [ ] Checklist: Password Policy Implementation
  - [ ] Checklist: MFA Enforcement Status

#### 3.6 Access Control
- **Kebijakan:** Ada ✓
- **Prosedur Kurang:**
  - [ ] PO-ITS-215: Prosedur Access Control Implementation (role-based, attribute-based)
  - [ ] PO-ITS-216: Prosedur Privileged Access Management (PAM) - admin akses
  - [ ] PO-ITS-217: Prosedur Access Review & Certification (quarterly/tahunan)
  - [ ] PO-ITS-218: Prosedur Access Removal & Modification
  - [ ] Template: Access Control Matrix (sistem vs role vs akses)
  - [ ] Template: Privileged User List (yang mana aja yang punya admin)
  - [ ] Checklist: Access Review Quarterly

#### 3.7 Threat Intelligence Management
- **Kebijakan:** Ada ✓
- **Prosedur Kurang:**
  - [ ] PO-ITS-219: Prosedur Monitoring Ancaman (tools, alert, escalation)
  - [ ] PO-ITS-220: Prosedur Vulnerability Management (scan, prioritization, remediation)
  - [ ] Template: Threat Monitoring Dashboard (metrics)
  - [ ] Checklist: Vulnerability Scan & Remediation

#### 3.8 Project Security Integration
- **Kebijakan:** Ada ✓
- **Prosedur Kurang:**
  - [ ] PO-ITS-221: Prosedur Security dalam Project Initiation (RACI, security req)
  - [ ] PO-ITS-222: Prosedur Security in Project Development (code review, testing)
  - [ ] PO-ITS-223: Prosedur Security in Project Testing & UAT
  - [ ] PO-ITS-224: Prosedur Security in Project Deployment
  - [ ] Template: Project Security Checklist
  - [ ] Checklist: SDLC Security Gate Reviews

#### 3.9 Supplier/Vendor Management
- **Kebijakan:** Ada ✓
- **Prosedur Kurang:**
  - [ ] PO-ITS-225: Prosedur Vendor Assessment & Selection (security eval)
  - [ ] PO-ITS-226: Prosedur Vendor SLA & Contract Management
  - [ ] PO-ITS-227: Prosedur Vendor Monitoring & Audit
  - [ ] PO-ITS-228: Prosedur Vendor Incident Management & Response
  - [ ] Template: Vendor Security Assessment Form
  - [ ] Template: Vendor SLA Template
  - [ ] Checklist: Vendor On-boarding Security

#### 3.10 Cloud Services Security
- **Kebijakan:** Ada ✓
- **Prosedur Kurang:**
  - [ ] PO-ITS-229: Prosedur Cloud Service Evaluation & Selection
  - [ ] PO-ITS-230: Prosedur Cloud Data Classification & Protection
  - [ ] PO-ITS-231: Prosedur Cloud Access Control & Identity
  - [ ] PO-ITS-232: Prosedur Cloud Monitoring & Compliance
  - [ ] Template: Cloud Service Security Assessment
  - [ ] Checklist: Cloud Provider Compliance Verification

#### 3.11 Incident Management
- **Kebijakan:** Ada ✓
- **Prosedur Kurang:**
  - [ ] PO-ITS-233: Prosedur Incident Detection & Reporting (channels, 24/7)
  - [ ] PO-ITS-234: Prosedur Incident Classification & Severity (P1-P4)
  - [ ] PO-ITS-235: Prosedur Incident Response & Escalation
  - [ ] PO-ITS-236: Prosedur Incident Investigation & Forensics
  - [ ] PO-ITS-237: Prosedur Post-Incident Review & Lessons Learned
  - [ ] PO-ITS-238: Prosedur Breach Notification (per UU PDP)
  - [ ] Template: Incident Report Form
  - [ ] Template: Incident Response Playbook (per tipe incident)
  - [ ] Template: Breach Notification Template
  - [ ] Checklist: Incident Response Readiness

#### 3.12 Business Continuity & Disaster Recovery
- **Kebijakan:** Ada ✓
- **Prosedur Kurang:**
  - [ ] PO-ITS-239: Prosedur Business Impact Analysis (BIA)
  - [ ] PO-ITS-240: Prosedur Disaster Recovery Plan (DRP) Development
  - [ ] PO-ITS-241: Prosedur DR Testing & Validation
  - [ ] PO-ITS-242: Prosedur Backup & Recovery
  - [ ] PO-ITS-243: Prosedur Business Continuity Plan (BCP) Maintenance
  - [ ] Document: Business Continuity Plan (full document)
  - [ ] Document: Disaster Recovery Plan (full document)
  - [ ] Template: BCP Testing Report
  - [ ] Checklist: Backup & Recovery Verification

#### 3.13 Intellectual Property Rights
- **Kebijakan:** Ada ✓
- **Prosedur Kurang:**
  - [ ] PO-ITS-244: Prosedur Lisensi Software Management
  - [ ] PO-ITS-245: Prosedur Software Audit & Compliance
  - [ ] Template: Software License Register (per aplikasi)
  - [ ] Checklist: License Audit Results

#### 3.14 Personal Data Protection
- **Kebijakan:** Ada ✓
- **Prosedur Kurang:**
  - [ ] PO-ITS-246: Prosedur PII Handling & Protection (per UU PDP 27/2022)
  - [ ] PO-ITS-247: Prosedur Data Retention & Disposal
  - [ ] PO-ITS-248: Prosedur Data Subject Rights (akses, koreksi, hapus)
  - [ ] PO-ITS-249: Prosedur Privacy Impact Assessment (PIA)
  - [ ] Document: Data Retention & Disposal Policy (detail per data type)
  - [ ] Template: Data Subject Request Form
  - [ ] Checklist: PII Protection Audit

#### 3.15 Independent Review
- **Kebijakan:** Ada ✓
- **Prosedur Kurang:**
  - [ ] PO-ITS-250: Prosedur Internal Audit Keamanan
  - [ ] PO-ITS-251: Prosedur Audit Finding Management
  - [ ] Template: Internal Audit Plan (tahunan)
  - [ ] Checklist: Audit Finding Tracking

#### 3.16 Policy & Standard Compliance
- **Kebijakan:** Ada ✓
- **Prosedur Kurang:**
  - [ ] PO-ITS-252: Prosedur Policy Compliance Monitoring
  - [ ] PO-ITS-253: Prosedur Non-Compliance Management & Remediation
  - [ ] Template: Compliance Report

#### 3.17 Operational Control
- **Kebijakan:** Ada ✓
- **Prosedur Kurang:**
  - [ ] PO-ITS-254: Prosedur Change Management (CAB, approval)
  - [ ] PO-ITS-255: Prosedur Configuration Management
  - [ ] PO-ITS-256: Prosedur Patch Management (frequency, testing)
  - [ ] PO-ITS-257: Prosedur System Maintenance Planning
  - [ ] Template: Change Request Form (dengan approval chain)
  - [ ] Checklist: Change Management Review

---

### **Bagian 4: Kontrol Personil (Human Resource Security)**

#### 4.1 Recruitment Screening
- **Kebijakan:** Ada ✓
- **Prosedur Kurang:**
  - [ ] PO-HR-301: Prosedur Background Check Karyawan IT
  - [ ] PO-HR-302: Prosedur Verification Referensi

#### 4.2 Security Awareness Training
- **Kebijakan:** Ada ✓
- **Prosedur Kurang:**
  - [ ] PO-HR-303: Prosedur Induction Training Keamanan (untuk semua karyawan baru)
  - [ ] PO-HR-304: Prosedur Awareness Training Tahunan
  - [ ] PO-HR-305: Prosedur Training untuk Role-Specific (admin, developer)
  - [ ] Template: Training Material (slide presentation)
  - [ ] Checklist: Training Attendance & Completion
  - [ ] Quiz/Assessment: Security Awareness

#### 4.3 Employee Discipline
- **Kebijakan:** Ada ✓
- **Prosedur Kurang:**
  - [ ] PO-HR-306: Prosedur Penanganan Pelanggaran Keamanan
  - [ ] Template: Investigation Report untuk security violations

#### 4.4 Change of Responsibility
- **Kebijakan:** Ada ✓
- **Prosedur Kurang:**
  - [ ] PO-HR-307: Prosedur Off-boarding (access removal, exit interview)
  - [ ] PO-HR-308: Prosedur Mutation/Transfer (role change, access update)
  - [ ] Checklist: Off-boarding Checklist (sistem mana aja yang remove access)

#### 4.5 Remote Working
- **Kebijakan:** Ada ✓
- **Prosedur Kurang:**
  - [ ] PO-HR-309: Prosedur Remote Work Approval & Setup
  - [ ] PO-HR-310: Prosedur VPN Access & Monitoring
  - [ ] PO-HR-311: Prosedur Remote Equipment Security (FDE, antivirus)
  - [ ] Template: Remote Work Agreement
  - [ ] Checklist: Remote Worker Equipment Audit

#### 4.6 Security Event Reporting
- **Kebijakan:** Ada ✓
- **Prosedur Kurang:**
  - [ ] PO-HR-312: Prosedur Pelaporan Insiden (channels, tidak perlu takut, protection dari retaliation)
  - [ ] Template: Incident Reporting Form
  - [ ] Checklist: Whistleblower Protection Policy

---

### **Bagian 5: Kontrol Fasilitas Fisik (Physical Security)**

#### 5.1 Physical Perimeter Security
- **Kebijakan:** Ada ✓
- **Prosedur Kurang:**
  - [ ] PO-FAS-401: Prosedur Access Control Fasilitas Fisik (badge, visitor)
  - [ ] PO-FAS-402: Prosedur Visitor Management
  - [ ] Template: Visitor Log & Badge Request

#### 5.2 Physical Monitoring
- **Kebijakan:** Ada ✓
- **Prosedur Kurang:**
  - [ ] PO-FAS-403: Prosedur CCTV Monitoring & Retention
  - [ ] PO-FAS-404: Prosedur Alarm System Management
  - [ ] Checklist: Physical Security Monitoring

#### 5.3 Secure Working Area
- **Kebijakan:** Ada ✓
- **Prosedur Kurang:**
  - [ ] PO-FAS-405: Prosedur Secure Zone Access (server room, data center)
  - [ ] Checklist: Secure Area Access List

#### 5.4 Clear Desk & Clear Screen
- **Kebijakan:** Ada ✓
- **Prosedur Kurang:**
  - [ ] PO-FAS-406: Prosedur Clear Desk & Clear Screen Enforcement
  - [ ] Checklist: Clear Desk Audit

#### 5.5 Facilities & Infrastructure
- **Kebijakan:** Ada ✓
- **Prosedur Kurang:**
  - [ ] PO-FAS-407: Prosedur Environmental Monitoring (temperature, humidity)
  - [ ] PO-FAS-408: Prosedur Power Management & UPS
  - [ ] Checklist: Facility Environmental Monitoring

#### 5.6 Equipment Security Outside
- **Kebijakan:** Ada ✓
- **Prosedur Kurang:**
  - [ ] PO-FAS-409: Prosedur Equipment Transport & Protection
  - [ ] Checklist: Equipment Outside Organization

#### 5.7 External Storage
- **Kebijakan:** Ada ✓
- **Prosedur Kurang:**
  - [ ] PO-FAS-410: Prosedur External Data Storage (tape, backup)
  - [ ] PO-FAS-411: Prosedur Off-Site Backup Management
  - [ ] Checklist: External Storage Inventory

#### 5.8 Supporting Utilities
- **Kebijakan:** Ada ✓
- **Prosedur Kurang:**
  - [ ] PO-FAS-412: Prosedur Power Supply Management
  - [ ] PO-FAS-413: Prosedur Water & Gas Safety

#### 5.9 Cable Security
- **Kebijakan:** Ada ✓
- **Prosedur Kurang:**
  - [ ] PO-FAS-414: Prosedur Network Cable Management & Protection
  - [ ] Checklist: Cable Infrastructure Audit

#### 5.10 Equipment Disposal
- **Kebijakan:** Ada ✓
- **Prosedur Kurang:**
  - [ ] PO-FAS-415: Prosedur Equipment Sanitization & Disposal
  - [ ] Checklist: Equipment Disposal & Data Wiping Certification

---

## B. DOKUMENTASI TEKNIS YANG KURANG

### **Information Technology Domain**

#### Cryptography & Encryption
- [ ] PO-ITS-INF-001: Encryption Standard Document (algorithm, key length, key management)
- [ ] PO-ITS-INF-002: TLS/SSL Certificate Management Procedure
- [ ] PO-ITS-INF-003: Full Disk Encryption Standard
- [ ] Template: Certificate Inventory Register
- [ ] Checklist: Encryption Implementation Audit

#### Database Security
- [ ] PO-ITS-INF-004: Database Hardening Standard (per DBMS - Oracle, MySQL, SQL Server, PostgreSQL)
- [ ] PO-ITS-INF-005: Database Access Control & Authentication
- [ ] PO-ITS-INF-006: Database Backup & Recovery Testing Procedure
- [ ] PO-ITS-INF-007: Database Activity Monitoring (DAM) Setup
- [ ] Checklist: Database Configuration Audit
- [ ] Checklist: Database Backup & Recovery Test Results

#### Network Security
- [ ] PO-ITS-INF-008: Network Architecture & Segmentation Document
- [ ] PO-ITS-INF-009: Firewall Rules & Maintenance Procedure
- [ ] PO-ITS-INF-010: Network Access Control (NAC) Standard
- [ ] PO-ITS-INF-011: VPN & Remote Access Security Standard
- [ ] PO-ITS-INF-012: Wireless (WiFi) Security Standard
- [ ] PO-ITS-INF-013: Network Monitoring & IDS/IPS Configuration
- [ ] Template: Firewall Rules Register (yang allowed/denied)
- [ ] Checklist: Network Configuration Audit

#### Application Security
- [ ] PO-ITS-INF-014: Secure Development Lifecycle (SDLC) Standard
- [ ] PO-ITS-INF-015: Code Review & Static Analysis (SAST) Standard
- [ ] PO-ITS-INF-016: Dynamic Testing (DAST) & Penetration Testing
- [ ] PO-ITS-INF-017: API Security Standard
- [ ] PO-ITS-INF-018: Web Application Security Standard (OWASP)
- [ ] PO-ITS-INF-019: Mobile Application Security Standard
- [ ] Checklist: Application Security Testing Results

#### Systems & Endpoint Security
- [ ] PO-ITS-INF-020: Server Hardening Standard (per OS - Windows, Linux)
- [ ] PO-ITS-INF-021: Endpoint Detection & Response (EDR) Implementation
- [ ] PO-ITS-INF-022: Antivirus & Anti-malware Standard
- [ ] PO-ITS-INF-023: Patch Management Procedure (frequency, testing, rollback)
- [ ] PO-ITS-INF-024: Vulnerability Assessment & Management
- [ ] Checklist: System Configuration Audit
- [ ] Checklist: Patch & Update Status

#### Logging & Monitoring
- [ ] PO-ITS-INF-025: Log Management Standard (what to log, how long, retention)
- [ ] PO-ITS-INF-026: SIEM Configuration & Tuning
- [ ] PO-ITS-INF-027: Security Monitoring Dashboard Setup
- [ ] PO-ITS-INF-028: Alert & Escalation Procedure
- [ ] Template: Monitoring & Alerting Rules Register
- [ ] Checklist: Log Management Audit

#### Backup & Disaster Recovery
- [ ] PO-ITS-INF-029: Backup Strategy & Schedule (frequency, retention, RPO)
- [ ] PO-ITS-INF-030: Backup Testing & Validation Procedure
- [ ] PO-ITS-INF-031: Disaster Recovery Testing (DRT) Procedure
- [ ] Template: Backup & Recovery Test Report
- [ ] Checklist: Backup Status Monitoring

---

## C. ORGANIZATIONAL DOCUMENTS YANG KURANG

#### IT Governance & Strategy
- [ ] Document: IT Strategy & Roadmap (3-5 tahun)
- [ ] Document: IT Risk Register & Management Plan
- [ ] Document: IT Service Catalog & SLA Framework
- [ ] Document: IT Security Governance Framework
- [ ] Document: ISMS Policy Directive (parent policy di atas SK-ITS-101)

#### Organizational Structure & Roles
- [ ] Document: Information Security Organization Chart
- [ ] Document: RACI Matrix untuk keputusan keamanan
- [ ] Template: Role Description untuk setiap security role

#### Training & Awareness
- [ ] Presentation Deck: Security Awareness Training (annual)
- [ ] Presentation Deck: Role-Specific Training (admin, developer, user)
- [ ] Presentation Deck: Incident Response Training
- [ ] E-learning Module: Security Basics (jika menggunakan LMS)

#### Third-party & Compliance
- [ ] Document: Audit Schedule & Program (tahunan)
- [ ] Document: Audit Finding Management Process
- [ ] Document: Compliance Gap Assessment (vs ISO 27001:2022 & regulasi OJK/Kominfo)
- [ ] Template: Third-party Assessment Form
- [ ] Template: Service Level Agreement (SLA) Standard

#### Evidence & Proof of Implementation
- [ ] Register: Policy Acknowledgment (karyawan tanda tangan sudah baca)
- [ ] Register: Training Attendance & Assessment Scores
- [ ] Register: Audit Findings & Remediation Status
- [ ] Register: Security Incidents & Resolution
- [ ] Register: Vulnerability & Patch Management
- [ ] Register: Change Management & Approvals
- [ ] Register: Access Review & Certification

---

## D. RINGKASAN PRIORITAS IMPLEMENTASI

### **URGENT (Bulan 1-2)** - Compliance Wajib
1. **PO-ITS-203:** Email Security Procedure
2. **PO-ITS-210:** User Provisioning Procedure
3. **PO-ITS-215:** Access Control Implementation
4. **PO-ITS-233:** Incident Response Procedure
5. **PO-ITS-246:** PII Handling (UU PDP)
6. **PO-HR-303:** Induction & Awareness Training
7. **PO-ITS-INF-008:** Network Architecture Document
8. **Template: Access Control Matrix**
9. **Register: Policy Acknowledgment**

### **HIGH (Bulan 2-3)** - Business Critical
1. **PO-ITS-206:** Asset Inventory Procedure
2. **PO-ITS-254:** Change Management
3. **PO-ITS-239:** Business Impact Analysis
4. **PO-FAS-401:** Physical Access Control
5. **PO-ITS-INF-020:** Server Hardening
6. **PO-ITS-INF-025:** Log Management
7. **PO-ITS-216:** PAM Procedure
8. **Document: BCP & DRP**

### **MEDIUM (Bulan 3-4)** - Extended Controls
1. **PO-ITS-225:** Vendor Assessment
2. **PO-ITS-250:** Internal Audit
3. **PO-ITS-INF-014:** SDLC Standard
4. **PO-ITS-INF-013:** Network Monitoring
5. **Presentation: Security Awareness Training**

### **LOW (Bulan 4+)** - Enhancements
1. Advanced procedures untuk niche controls
2. Detailed technical standards per DBMS/platform
3. Comprehensive penetration testing framework
4. Advanced threat intelligence integration

---

## E. ESTIMATED EFFORT

| Kategori | Jumlah Doc | Effort (hari kerja) | Owner |
|----------|-----------|-------------------|-------|
| Prosedur (PO-xxxx) | ~70 | 80-100 | IT Governance |
| Checklist & Template | ~40 | 40-50 | IT Governance |
| Teknis (Standar) | ~15 | 50-60 | IT Technical Team |
| Organsisasi & Strategi | ~8 | 20-30 | IT Leadership |
| Training & Awareness | ~5 | 30-40 | HR + IT Security |
| **TOTAL** | **~140** | **220-280** | **12-18 minggu** |

---

## F. REKOMENDASI NEXT STEPS

1. **Buat Document Management System** - tempat semua prosedur & template tersimpan terorganisir
2. **Assign Ownership** - setiap prosedur harus ada owner untuk maintenance
3. **Phased Implementation** - jangan coba sekaligus, prioritas urgent dulu
4. **Training untuk PIC** - setiap prosedur harus dipahami sebelum diterapkan
5. **Regular Review** - annually update sesuai perubahan regulasi & threat landscape
6. **Audit Trail** - selalu catat siapa approve dokumen, kapan, dan why

---

**Generated:** Januari 2025
**Status:** Hasil analisis vs SK-ITS-101 R03 + SOA ISO 27001:2022
