@echo off
title Generate Folder Document dan Evidence ISO 27001:2022
echo Membuat struktur folder ISO 27001:2022 Lengkap...
echo Mohon tunggu sebentar, ada lebih dari 200 folder yang dibuat...
echo.

:: ==========================================
:: KLAUSUL UTAMA (4 - 10)
:: ==========================================
call :MakeDir "04_Konteks_Organisasi\4.1_Memahami_Organisasi"
call :MakeDir "04_Konteks_Organisasi\4.2_Harapan_Pihak_Berkepentingan"
call :MakeDir "04_Konteks_Organisasi\4.3_Ruang_Lingkup_SMKI"
call :MakeDir "04_Konteks_Organisasi\4.4_Sistem_Manajemen_Keamanan_Informasi"

call :MakeDir "05_Kepemimpinan\5.1_Kepemimpinan_dan_Komitmen"
call :MakeDir "05_Kepemimpinan\5.2_Kebijakan"
call :MakeDir "05_Kepemimpinan\5.3_Peran_Tanggung_Jawab_Wewenang"

call :MakeDir "06_Perencanaan\6.1_Tindakan_Menangani_Risiko_dan_Peluang"
call :MakeDir "06_Perencanaan\6.2_Sasaran_Keamanan_Informasi"
call :MakeDir "06_Perencanaan\6.3_Perencanaan_Perubahan"

call :MakeDir "07_Dukungan\7.1_Sumber_Daya"
call :MakeDir "07_Dukungan\7.2_Kompetensi"
call :MakeDir "07_Dukungan\7.3_Kesadaran"
call :MakeDir "07_Dukungan\7.4_Komunikasi"
call :MakeDir "07_Dukungan\7.5_Informasi_Terdokumentasi"

call :MakeDir "08_Operasional\8.1_Perencanaan_dan_Pengendalian_Operasional"
call :MakeDir "08_Operasional\8.2_Penilaian_Risiko_Keamanan_Informasi"
call :MakeDir "08_Operasional\8.3_Penanganan_Risiko_Keamanan_Informasi"

call :MakeDir "09_Evaluasi_Kinerja\9.1_Pemantauan_Pengukuran_Analisis_Evaluasi"
call :MakeDir "09_Evaluasi_Kinerja\9.2_Audit_Internal"
call :MakeDir "09_Evaluasi_Kinerja\9.3_Tinjauan_Manajemen"

call :MakeDir "10_Peningkatan\10.1_Peningkatan_Berkelanjutan"
call :MakeDir "10_Peningkatan\10.2_Ketidaksesuaian_dan_Tindakan_Korektif"

:: ==========================================
:: ANNEX A5 - ORGANIZATIONAL CONTROLS
:: ==========================================
call :MakeDir "Annex_A\A5_Organizational\A5.1_Policies_for_information_security"
call :MakeDir "Annex_A\A5_Organizational\A5.2_InfoSec_roles_and_responsibilities"
call :MakeDir "Annex_A\A5_Organizational\A5.3_Segregation_of_duties"
call :MakeDir "Annex_A\A5_Organizational\A5.4_Management_responsibilities"
call :MakeDir "Annex_A\A5_Organizational\A5.5_Contact_with_authorities"
call :MakeDir "Annex_A\A5_Organizational\A5.6_Contact_with_special_interest_groups"
call :MakeDir "Annex_A\A5_Organizational\A5.7_Threat_intelligence"
call :MakeDir "Annex_A\A5_Organizational\A5.8_InfoSec_in_project_management"
call :MakeDir "Annex_A\A5_Organizational\A5.9_Inventory_of_information_and_assets"
call :MakeDir "Annex_A\A5_Organizational\A5.10_Acceptable_use_of_assets"
call :MakeDir "Annex_A\A5_Organizational\A5.11_Return_of_assets"
call :MakeDir "Annex_A\A5_Organizational\A5.12_Classification_of_information"
call :MakeDir "Annex_A\A5_Organizational\A5.13_Labelling_of_information"
call :MakeDir "Annex_A\A5_Organizational\A5.14_Information_transfer"
call :MakeDir "Annex_A\A5_Organizational\A5.15_Access_control"
call :MakeDir "Annex_A\A5_Organizational\A5.16_Identity_management"
call :MakeDir "Annex_A\A5_Organizational\A5.17_Authentication_information"
call :MakeDir "Annex_A\A5_Organizational\A5.18_Access_rights"
call :MakeDir "Annex_A\A5_Organizational\A5.19_InfoSec_in_supplier_relationships"
call :MakeDir "Annex_A\A5_Organizational\A5.20_Addressing_InfoSec_in_supplier_agreements"
call :MakeDir "Annex_A\A5_Organizational\A5.21_Managing_InfoSec_in_ICT_supply_chain"
call :MakeDir "Annex_A\A5_Organizational\A5.22_Monitoring_review_change_supplier_services"
call :MakeDir "Annex_A\A5_Organizational\A5.23_InfoSec_for_cloud_services"
call :MakeDir "Annex_A\A5_Organizational\A5.24_Incident_management_planning"
call :MakeDir "Annex_A\A5_Organizational\A5.25_Assessment_of_security_events"
call :MakeDir "Annex_A\A5_Organizational\A5.26_Response_to_incidents"
call :MakeDir "Annex_A\A5_Organizational\A5.27_Learning_from_incidents"
call :MakeDir "Annex_A\A5_Organizational\A5.28_Collection_of_evidence"
call :MakeDir "Annex_A\A5_Organizational\A5.29_InfoSec_during_disruption"
call :MakeDir "Annex_A\A5_Organizational\A5.30_ICT_readiness_for_business_continuity"
call :MakeDir "Annex_A\A5_Organizational\A5.31_Legal_statutory_regulatory_requirements"
call :MakeDir "Annex_A\A5_Organizational\A5.32_Intellectual_property_rights"
call :MakeDir "Annex_A\A5_Organizational\A5.33_Protection_of_records"
call :MakeDir "Annex_A\A5_Organizational\A5.34_Privacy_and_protection_of_PII"
call :MakeDir "Annex_A\A5_Organizational\A5.35_Independent_review_of_InfoSec"
call :MakeDir "Annex_A\A5_Organizational\A5.36_Compliance_with_policies_rules_standards"
call :MakeDir "Annex_A\A5_Organizational\A5.37_Documented_operating_procedures"

:: ==========================================
:: ANNEX A6 - PEOPLE CONTROLS
:: ==========================================
call :MakeDir "Annex_A\A6_People\A6.1_Screening"
call :MakeDir "Annex_A\A6_People\A6.2_Terms_and_conditions_of_employment"
call :MakeDir "Annex_A\A6_People\A6.3_InfoSec_awareness_education_training"
call :MakeDir "Annex_A\A6_People\A6.4_Disciplinary_process"
call :MakeDir "Annex_A\A6_People\A6.5_Responsibilities_after_termination"
call :MakeDir "Annex_A\A6_People\A6.6_Confidentiality_or_NDA"
call :MakeDir "Annex_A\A6_People\A6.7_Remote_working"
call :MakeDir "Annex_A\A6_People\A6.8_InfoSec_event_reporting"

:: ==========================================
:: ANNEX A7 - PHYSICAL CONTROLS
:: ==========================================
call :MakeDir "Annex_A\A7_Physical\A7.1_Physical_security_perimeters"
call :MakeDir "Annex_A\A7_Physical\A7.2_Physical_entry"
call :MakeDir "Annex_A\A7_Physical\A7.3_Securing_offices_rooms_facilities"
call :MakeDir "Annex_A\A7_Physical\A7.4_Physical_security_monitoring"
call :MakeDir "Annex_A\A7_Physical\A7.5_Protecting_against_external_threats"
call :MakeDir "Annex_A\A7_Physical\A7.6_Working_in_secure_areas"
call :MakeDir "Annex_A\A7_Physical\A7.7_Clear_desk_and_clear_screen"
call :MakeDir "Annex_A\A7_Physical\A7.8_Equipment_siting_and_protection"
call :MakeDir "Annex_A\A7_Physical\A7.9_Security_of_assets_off_premises"
call :MakeDir "Annex_A\A7_Physical\A7.10_Storage_media"
call :MakeDir "Annex_A\A7_Physical\A7.11_Supporting_utilities"
call :MakeDir "Annex_A\A7_Physical\A7.12_Cabling_security"
call :MakeDir "Annex_A\A7_Physical\A7.13_Equipment_maintenance"
call :MakeDir "Annex_A\A7_Physical\A7.14_Secure_disposal_or_reuse_of_equipment"

:: ==========================================
:: ANNEX A8 - TECHNOLOGICAL CONTROLS
:: ==========================================
call :MakeDir "Annex_A\A8_Technological\A8.1_User_endpoint_devices"
call :MakeDir "Annex_A\A8_Technological\A8.2_Privileged_access_rights"
call :MakeDir "Annex_A\A8_Technological\A8.3_Information_access_restriction"
call :MakeDir "Annex_A\A8_Technological\A8.4_Access_to_source_code"
call :MakeDir "Annex_A\A8_Technological\A8.5_Secure_authentication"
call :MakeDir "Annex_A\A8_Technological\A8.6_Capacity_management"
call :MakeDir "Annex_A\A8_Technological\A8.7_Protection_against_malware"
call :MakeDir "Annex_A\A8_Technological\A8.8_Management_of_technical_vulnerabilities"
call :MakeDir "Annex_A\A8_Technological\A8.9_Configuration_management"
call :MakeDir "Annex_A\A8_Technological\A8.10_Information_deletion"
call :MakeDir "Annex_A\A8_Technological\A8.11_Data_masking"
call :MakeDir "Annex_A\A8_Technological\A8.12_Data_leakage_prevention"
call :MakeDir "Annex_A\A8_Technological\A8.13_Information_backup"
call :MakeDir "Annex_A\A8_Technological\A8.14_Redundancy_of_processing_facilities"
call :MakeDir "Annex_A\A8_Technological\A8.15_Logging"
call :MakeDir "Annex_A\A8_Technological\A8.16_Monitoring_activities"
call :MakeDir "Annex_A\A8_Technological\A8.17_Clock_synchronization"
call :MakeDir "Annex_A\A8_Technological\A8.18_Use_of_privileged_utility_programs"
call :MakeDir "Annex_A\A8_Technological\A8.19_Installation_of_software"
call :MakeDir "Annex_A\A8_Technological\A8.20_Networks_security"
call :MakeDir "Annex_A\A8_Technological\A8.21_Security_of_network_services"
call :MakeDir "Annex_A\A8_Technological\A8.22_Segregation_of_networks"
call :MakeDir "Annex_A\A8_Technological\A8.23_Web_filtering"
call :MakeDir "Annex_A\A8_Technological\A8.24_Use_of_cryptography"
call :MakeDir "Annex_A\A8_Technological\A8.25_Secure_development_life_cycle"
call :MakeDir "Annex_A\A8_Technological\A8.26_Application_security_requirements"
call :MakeDir "Annex_A\A8_Technological\A8.27_Secure_system_architecture"
call :MakeDir "Annex_A\A8_Technological\A8.28_Secure_coding"
call :MakeDir "Annex_A\A8_Technological\A8.29_Security_testing"
call :MakeDir "Annex_A\A8_Technological\A8.30_Outsourced_development"
call :MakeDir "Annex_A\A8_Technological\A8.31_Separation_of_environments"
call :MakeDir "Annex_A\A8_Technological\A8.32_Change_management"
call :MakeDir "Annex_A\A8_Technological\A8.33_Test_information"
call :MakeDir "Annex_A\A8_Technological\A8.34_Protection_during_audit_testing"

echo.
echo Selesai! Semua struktur Klausul dan Annex A sudah rapi beserta folder Document dan Evidence.
pause
goto :eof

:: Fungsi untuk membuat folder Document & Evidence di setiap subfolder
:MakeDir
mkdir "%~1\Document"
mkdir "%~1\Evidence"
exit /b