-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Client :  127.0.0.1
-- Généré le :  Mer 28 Juin 2017 à 18:13
-- Version du serveur :  10.1.21-MariaDB
-- Version de PHP :  7.1.2

--
-- v6
--
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  bigband
--

-- --------------------------------------------------------

--
-- Structure de la table actu
--
-- Création :  Sam 24 Juin 2017 à 14:42
--

CREATE TABLE actu (
  AC_Id int(11) NOT NULL,
  AC_Date date DEFAULT NULL,
  AC_Com1 varchar(50) COLLATE utf8_unicode_ci DEFAULT '',
  AC_Com2 varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  AC_Num varchar(8) COLLATE utf8_unicode_ci DEFAULT '',
  AC_Puce text COLLATE utf8_unicode_ci NOT NULL,
  AC_Lieu text COLLATE utf8_unicode_ci,
  AC_Code_Postal text COLLATE utf8_unicode_ci,
  AC_Notes text COLLATE utf8_unicode_ci,
  AC_Visibilite text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table agenda
--
-- Création :  Sam 24 Juin 2017 à 14:49
--

CREATE TABLE agenda (
  AG_Idagenda int(11) UNSIGNED NOT NULL,
  AG_Etiquette_De_La_Fiche text COLLATE utf8_unicode_ci,
  AG_Id_Fiche_Concernee int(11) DEFAULT NULL,
  AG_Date_De_Rappel date DEFAULT NULL,
  AG_Note text COLLATE utf8_unicode_ci,
  AG_Id_Rappel int(11) DEFAULT NULL,
  AG_Eso_Esta_Hecho text CHARACTER SET utf8
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table artistes
--
-- Création :  Sam 24 Juin 2017 à 15:03
--

CREATE TABLE artistes (
  AR_Idartiste int(11) UNSIGNED NOT NULL,
  AR_Etiquette_Artiste text COLLATE utf8_unicode_ci,
  AR_Etiquette_Artiste_Inversee text COLLATE utf8_unicode_ci,
  AR_Emploi_Occupe text COLLATE utf8_unicode_ci,
  AR_Civilite text COLLATE utf8_unicode_ci,
  AR_Nom text COLLATE utf8_unicode_ci,
  AR_Prenom text COLLATE utf8_unicode_ci,
  AR_Numero text COLLATE utf8_unicode_ci,
  AR_Batiment text COLLATE utf8_unicode_ci,
  AR_Voie text COLLATE utf8_unicode_ci,
  AR_Adresse_Ligne_1 text COLLATE utf8_unicode_ci,
  AR_Adresse_Ligne_2 text COLLATE utf8_unicode_ci,
  AR_Code_Postal text COLLATE utf8_unicode_ci,
  AR_Ville text COLLATE utf8_unicode_ci,
  AR_Telephone_1 text COLLATE utf8_unicode_ci,
  AR_Telephone_2 text COLLATE utf8_unicode_ci,
  AR_Adresse_Mail text COLLATE utf8_unicode_ci,
  AR_N_De_Securite_Sociale text COLLATE utf8_unicode_ci,
  AR_N_Du_Guso text COLLATE utf8_unicode_ci,
  AR_Numero_Conges_Spectacle text COLLATE utf8_unicode_ci,
  AR_Date_De_Naissance date DEFAULT NULL,
  AR_Anniversaire text COLLATE utf8_unicode_ci,
  AR_Lieu_De_Naissance text COLLATE utf8_unicode_ci,
  AR_Nationalite text COLLATE utf8_unicode_ci,
  AR_Etiquette_Dpae text COLLATE utf8_unicode_ci,
  AR_Etiquette_Feuille_De_Mandat text COLLATE utf8_unicode_ci,
  AR_Etiquette_Feuille_De_Presence text COLLATE utf8_unicode_ci,
  AR_Createur text COLLATE utf8_unicode_ci,
  AR_Date_De_Creation datetime DEFAULT NULL,
  AR_Modificateur text COLLATE utf8_unicode_ci,
  AR_Date_De_Modification datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table bloc_notes
--
-- Création :  Sam 24 Juin 2017 à 15:06
--

CREATE TABLE bloc_notes (
  BN_Id_Bloc_Notes int(10) NOT NULL,
  BN_Bloc_Notes text COLLATE utf8_unicode_ci,
  BN_Etat_Bloc_Notes_Arrivee text CHARACTER SET utf8,
  BN_Bloc_Notes_UserID int(10) NOT NULL,
  BN_Bloc_Notes_Date datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table bulletins_de_salaire
--
-- Création :  Sam 24 Juin 2017 à 15:21
--

CREATE TABLE bulletins_de_salaire (
  BS_Idbulletindepaie int(11) NOT NULL,
  BS_Idcontrat int(11) DEFAULT NULL,
  BS_Type_Employeur text COLLATE utf8_unicode_ci,
  BS_Etiquette_Employeur text COLLATE utf8_unicode_ci,
  BS_Date_De_La_Prestation datetime DEFAULT NULL,
  BS_Lieu_De_La_Prestation text COLLATE utf8_unicode_ci,
  BS_Nom_Et_Prenom_Du_Salarie text COLLATE utf8_unicode_ci,
  BS_Adresse_Du_Salarie text COLLATE utf8_unicode_ci,
  BS_Emploi_Du_Salarie text COLLATE utf8_unicode_ci,
  BS_Numero_De_Securite_Sociale_Du_Salarie text COLLATE utf8_unicode_ci,
  BS_Numero_Guso_Du_Salarie text COLLATE utf8_unicode_ci,
  BS_Numero_Conges_Spectacle_Du_Salarie text COLLATE utf8_unicode_ci,
  BS_Date_Et_Lieu_De_Naissance_Du_Salarie text COLLATE utf8_unicode_ci,
  BS_Abattement_Montant decimal(10,4) DEFAULT NULL,
  BS_Abattement_Descriptif text COLLATE utf8_unicode_ci,
  BS_Bulletin_Avec_Forfait_Urssaf text COLLATE utf8_unicode_ci,
  BS_Option_Indemnisation_Conges_Payes text COLLATE utf8_unicode_ci,
  BS_Salaire_Brut decimal(10,2) DEFAULT NULL,
  BS_Indemnite_Pour_Conges_Payes decimal(10,2) DEFAULT NULL,
  BS_Assiette_Brut_Abattu decimal(10,2) DEFAULT NULL,
  BS_Frais_Professionnels decimal(10,2) DEFAULT NULL,
  BS_Assiette_Plafonnee decimal(10,2) DEFAULT NULL,
  BS_Assiette_Csg_Crds decimal(10,2) DEFAULT NULL,
  BS_Etiquette_Assiette_Csg_Crds text CHARACTER SET utf8,
  BS_Assiette_Cmb_Tva decimal(10,2) DEFAULT NULL,
  BS_Assiette_Prevoyance decimal(10,2) DEFAULT NULL,
  BS_Cotisations_Salariales decimal(10,2) DEFAULT NULL,
  BS_Cotisations_Patronales decimal(10,2) DEFAULT NULL,
  BS_Total_Des_Cotisations decimal(10,2) DEFAULT NULL,
  BS_Budget_Global decimal(10,2) DEFAULT NULL,
  BS_Salaire_Net decimal(10,2) DEFAULT NULL,
  BS_Salaire_Net_Imposable decimal(10,6) DEFAULT NULL,
  BS_Taux_Maladie_Salariale decimal(10,5) DEFAULT NULL,
  BS_Cotisation_Maladie_Salariale decimal(10,2) DEFAULT NULL,
  BS_Taux_Vieillesse_Plafonnee_Salariale decimal(10,5) DEFAULT NULL,
  BS_Cotisation_Vieillesse_Plafonnee_Salariale decimal(10,2) DEFAULT NULL,
  BS_Taux_Vieillesse_Deplafonnee_Salariale decimal(10,5) DEFAULT NULL,
  BS_Cotisation_Vieillesse_Deplafonnee_Salariale decimal(10,2) DEFAULT NULL,
  BS_Taux_Csg_Deductible_Salariale decimal(10,5) DEFAULT NULL,
  BS_Cotisation_Csg_Deductible_Salariale decimal(10,2) DEFAULT NULL,
  BS_Taux_Csg_Non_Deductible_Salariale decimal(10,5) DEFAULT NULL,
  BS_Cotisation_Csg_Non_Deductible_Salariale decimal(10,2) DEFAULT NULL,
  BS_Taux_Crds_Salariale decimal(10,5) DEFAULT NULL,
  BS_Cotisation_Crds_Salariale decimal(10,2) DEFAULT NULL,
  BS_Taux_Maladie_Patronale decimal(10,5) DEFAULT NULL,
  BS_Cotisation_Maladie_Patronale decimal(10,2) DEFAULT NULL,
  BS_Taux_Vieillesse_Plafonnee_Patronale decimal(10,5) DEFAULT NULL,
  BS_Cotisation_Vieillesse_Plafonnee_Patronale decimal(10,2) DEFAULT NULL,
  BS_Taux_Vieillesse_Deplafonnee_Patronale decimal(10,5) DEFAULT NULL,
  BS_Cotisation_Vieillesse_Deplafonnee_Patronale decimal(10,2) DEFAULT NULL,
  BS_Taux_Accident_Du_Travail_Patronale decimal(10,5) DEFAULT NULL,
  BS_Cotisation_Accident_Du_Travail_Patronale decimal(10,2) DEFAULT NULL,
  BS_Taux_Allocation_Familiale_Patronale decimal(10,5) DEFAULT NULL,
  BS_Cotisation_Allocation_Familiale_Patronale decimal(10,2) DEFAULT NULL,
  BS_Taux_Aide_Au_Logement_Patronale decimal(10,5) DEFAULT NULL,
  BS_Cotisation_Aide_Au_Logement_Patronale decimal(10,2) DEFAULT NULL,
  BS_Total_Maladie decimal(10,2) DEFAULT NULL,
  BS_Total_Vieillesse_Plafonnee decimal(10,2) DEFAULT NULL,
  BS_Total_Vieillesse_Deplafonnee decimal(10,2) DEFAULT NULL,
  BS_Total_Accident_Du_Travail decimal(10,2) DEFAULT NULL,
  BS_Total_Allocation_Familiale decimal(10,2) DEFAULT NULL,
  BS_Total_Aide_Au_Logement decimal(10,2) DEFAULT NULL,
  BS_Total_Csg_Deductible decimal(10,2) DEFAULT NULL,
  BS_Total_Csg_Non_Deductible decimal(10,2) DEFAULT NULL,
  BS_Total_Crds decimal(10,2) DEFAULT NULL,
  BS_Vignette_Urssaf_Salariale decimal(10,2) DEFAULT NULL,
  BS_Vignette_Urssaf_Patronale decimal(10,2) DEFAULT NULL,
  BS_Total_Urssaf_Salariale decimal(10,2) DEFAULT NULL,
  BS_Total_Urssaf_Patronale decimal(10,2) DEFAULT NULL,
  BS_Total_Urssaf decimal(10,2) DEFAULT NULL,
  BS_Taux_Assurance_Chomage_Salariale decimal(10,5) DEFAULT NULL,
  BS_Cotisation_Salariale_Assurance_Chomage decimal(10,2) DEFAULT NULL,
  BS_Taux_Assurance_Chomage_Patronale decimal(10,5) DEFAULT NULL,
  BS_Cotisation_Patronale_Assurance_Chomage decimal(10,2) DEFAULT NULL,
  BS_Taux_Assurance_Chomage_Maj_Cdd_U decimal(10,5) DEFAULT NULL,
  BS_Cotisation_Patronale_Assurance_Chomage_Maj_Cdd_U decimal(10,2) DEFAULT NULL,
  BS_Taux_Ags_Patronale decimal(10,5) DEFAULT NULL,
  BS_Cotisation_Ags_Patronale decimal(10,2) DEFAULT NULL,
  BS_Total_Assurance_Chomage decimal(10,2) DEFAULT NULL,
  BS_Total_Assurance_Chomage_Maj_Cdd_U decimal(10,2) DEFAULT NULL,
  BS_Total_Ags decimal(10,2) DEFAULT NULL,
  BS_Total_Assedic_Salariale decimal(10,2) DEFAULT NULL,
  BS_Total_Assedic_Patronale decimal(10,2) DEFAULT NULL,
  BS_Total_Assedic decimal(10,2) DEFAULT NULL,
  BS_Taux_Irps_Arrco_T1_Salariale decimal(10,5) DEFAULT NULL,
  BS_Cotisation_Irps_Arrco_T1_Salariale decimal(10,2) DEFAULT NULL,
  BS_Taux_Irps_Arrco_T2_Salariale decimal(10,5) DEFAULT NULL,
  BS_Cotisation_Irps_Arrco_T2_Salariale decimal(10,2) DEFAULT NULL,
  BS_Taux_Agff_T1_Salariale decimal(10,5) DEFAULT NULL,
  BS_Cotisation_Agff_T1_Salariale decimal(10,2) DEFAULT NULL,
  BS_Taux_Agff_T2_Salariale decimal(10,5) DEFAULT NULL,
  BS_Cotisation_Agff_T2_Salariale decimal(10,2) DEFAULT NULL,
  BS_Total_Audiens_Salariale decimal(10,2) DEFAULT NULL,
  BS_Taux_Irps_Arrco_T1_Patronale decimal(10,5) DEFAULT NULL,
  BS_Cotisation_Irps_Arrco_T1_Patronale decimal(10,2) DEFAULT NULL,
  BS_Taux_Irps_Arrco_T2_Patronale decimal(10,5) DEFAULT NULL,
  BS_Cotisation_Irps_Arrco_T2_Patronale decimal(10,2) DEFAULT NULL,
  BS_Taux_Agff_T1_Patronale decimal(10,5) DEFAULT NULL,
  BS_Cotisation_Agff_T1_Patronale decimal(10,2) DEFAULT NULL,
  BS_Taux_Agff_T2_Patronale decimal(10,5) DEFAULT NULL,
  BS_Cotisation_Agff_T2_Patronale decimal(10,2) DEFAULT NULL,
  BS_Taux_Prevoyance_Patronale decimal(10,5) DEFAULT NULL,
  BS_Cotisation_Prevoyance_Patronale decimal(10,2) DEFAULT NULL,
  BS_Total_Audiens_Patronale decimal(10,2) DEFAULT NULL,
  BS_Total_Irps_Arrco_T1 decimal(10,2) DEFAULT NULL,
  BS_Total_Irps_Arrco_T2 decimal(10,2) DEFAULT NULL,
  BS_Total_Agff_T1 decimal(10,2) DEFAULT NULL,
  BS_Total_Agff_T2 decimal(10,2) DEFAULT NULL,
  BS_Total_Prevoyance decimal(10,2) DEFAULT NULL,
  BS_Total_Audiens decimal(10,2) DEFAULT NULL,
  BS_Taux_Formation_Continue decimal(10,5) DEFAULT NULL,
  BS_Cotisation_Formation_Continue_Patronale decimal(10,2) DEFAULT NULL,
  BS_Total_Formation_Continue decimal(10,2) DEFAULT NULL,
  BS_Total_Afdas_Patronale decimal(10,2) DEFAULT NULL,
  BS_Total_Afdas decimal(10,2) DEFAULT NULL,
  BS_Taux_Conges_Spectacles_Patronale decimal(10,5) DEFAULT NULL,
  BS_Cotisation_Conges_Spectacles_Patronale decimal(10,2) DEFAULT NULL,
  BS_Total_Conges_Spectacles decimal(10,2) DEFAULT NULL,
  BS_Taux_Medecine_Du_Travail_Patronale decimal(10,5) DEFAULT NULL,
  BS_Cotisation_Medecine_Du_Travail_Patronale decimal(10,2) DEFAULT NULL,
  BS_Total_Medecine_Du_Travail decimal(10,2) DEFAULT NULL,
  BS_Taux_Tva_Medecine_Du_Travail_Patronale decimal(10,5) DEFAULT NULL,
  BS_Cotisation_Tva_Medecine_Du_Travail_Patronale decimal(10,2) DEFAULT NULL,
  BS_Total_Tva_Medecine_Du_Travail_Patronale decimal(10,2) DEFAULT NULL,
  BS_Total_Cmb_Patronale decimal(10,2) DEFAULT NULL,
  BS_Total_Cmb decimal(10,2) DEFAULT NULL,
  BS_Nom_Du_Fichier_Bulletin_De_Salaire_Pdf text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table clients
--
-- Création :  Sam 24 Juin 2017 à 15:33
--

CREATE TABLE clients (
  CL_Idclient int(10) UNSIGNED NOT NULL,
  CL_Etiquetteemployeur text COLLATE utf8_unicode_ci,
  CL_Raison_Sociale text COLLATE utf8_unicode_ci,
  CL_Statut_Juridique text COLLATE utf8_unicode_ci,
  CL_Titulaire_Licence_Entrepreneur_De_Spectacles text COLLATE utf8_unicode_ci,
  CL_Code_Postal text COLLATE utf8_unicode_ci,
  CL_Ville text COLLATE utf8_unicode_ci,
  CL_Departement text COLLATE utf8_unicode_ci,
  CL_Createur text COLLATE utf8_unicode_ci NOT NULL,
  CL_Date_De_Creation datetime NOT NULL,
  CL_Modificateur text COLLATE utf8_unicode_ci NOT NULL,
  CL_Date_De_Modification datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  CL_Habitude_De_Date text COLLATE utf8_unicode_ci,
  CL_Date_De_Prise_De_Decision text COLLATE utf8_unicode_ci,
  CL_Date_Du_Prochain_Suivi datetime DEFAULT NULL,
  CL_Note_De_Prochain_Suivi text COLLATE utf8_unicode_ci,
  CL_Type_Bareme text COLLATE utf8_unicode_ci,
  CL_Indicateur_De_Suivi text COLLATE utf8_unicode_ci,
  CL_Sortir_Des_Resultats_De_Recherche text COLLATE utf8_unicode_ci,
  CL_Statut_Du_Client text COLLATE utf8_unicode_ci,
  CL_Id_Message_Correspondant int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table contacts_utiles
--
-- Création :  Sam 24 Juin 2017 à 15:36
--

CREATE TABLE contacts_utiles (
  CU_Idcontactutiles int(10) UNSIGNED NOT NULL,
  CU_Etiquette_Contact text COLLATE utf8_unicode_ci,
  CU_Etiquette_Contact_Inversee text COLLATE utf8_unicode_ci,
  CU_Categorie text COLLATE utf8_unicode_ci,
  CU_Raison_Sociale text COLLATE utf8_unicode_ci,
  CU_Civilite text COLLATE utf8_unicode_ci,
  CU_Nom text COLLATE utf8_unicode_ci,
  CU_Prenom text COLLATE utf8_unicode_ci,
  CU_Adresse_Ligne_1 text COLLATE utf8_unicode_ci,
  CU_Adresse_Ligne_2 text COLLATE utf8_unicode_ci,
  CU_Code_Postal text COLLATE utf8_unicode_ci,
  CU_Ville text COLLATE utf8_unicode_ci,
  CU_Telephone_1 text COLLATE utf8_unicode_ci,
  CU_Telephone_2 text COLLATE utf8_unicode_ci,
  CU_Adresse_Mail text COLLATE utf8_unicode_ci,
  CU_Commentaire text COLLATE utf8_unicode_ci,
  CU_Createur text COLLATE utf8_unicode_ci,
  CU_Date_De_Creation datetime DEFAULT NULL,
  CU_Modificateur text COLLATE utf8_unicode_ci,
  CU_Date_De_Modification datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table contact_client
--
-- Création :  Sam 24 Juin 2017 à 15:46
--

CREATE TABLE contact_client (
  CC_Idcontactclient int(10) UNSIGNED NOT NULL,
  CC_Id_Client int(11) DEFAULT NULL COMMENT 'Va stocker le numero de l''entreprise a laquelle est lié le contact',
  CC_Numero_De_Contact int(11) DEFAULT NULL,
  CC_Civilite text COLLATE utf8_unicode_ci,
  CC_Civilite_Transformee text COLLATE utf8_unicode_ci,
  CC_Nom text COLLATE utf8_unicode_ci,
  CC_Prenom text COLLATE utf8_unicode_ci,
  CC_Etiquette_Client text COLLATE utf8_unicode_ci,
  CC_Adresse_Ligne_1 text COLLATE utf8_unicode_ci,
  CC_Adresse_Ligne_2 text COLLATE utf8_unicode_ci,
  CC_Code_Postal text COLLATE utf8_unicode_ci,
  CC_Ville text COLLATE utf8_unicode_ci,
  CC_Fonction text COLLATE utf8_unicode_ci,
  CC_Telephone_Fixe text COLLATE utf8_unicode_ci,
  CC_Telephone_Mobile text COLLATE utf8_unicode_ci,
  CC_Telephone_Fax text COLLATE utf8_unicode_ci,
  CC_Adresse_Mail text COLLATE utf8_unicode_ci,
  CC_Commentaire text COLLATE utf8_unicode_ci,
  CC_Etiquette_Contact_Client text COLLATE utf8_unicode_ci,
  CC_Etiquette_Complete_Contact_Client text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table contrats
--
-- Création :  Sam 24 Juin 2017 à 15:57
--

CREATE TABLE contrats (
  CT_Id_Contrat int(10) UNSIGNED NOT NULL,
  CT_Id_Client int(11) DEFAULT NULL,
  CT_Id_Devis int(11) DEFAULT NULL,
  CT_Id_Contact_Client int(11) DEFAULT NULL,
  CT_Id_Operateur int(11) DEFAULT NULL,
  CT_Raison_Sociale text COLLATE utf8_unicode_ci,
  CT_Qualite text COLLATE utf8_unicode_ci,
  CT_Civilite_Client text COLLATE utf8_unicode_ci,
  CT_Prenom_Client text COLLATE utf8_unicode_ci,
  CT_Nom_Client text COLLATE utf8_unicode_ci,
  CT_Adresse_Ligne_1_Client text COLLATE utf8_unicode_ci,
  CT_Adresse_Ligne_2_Client text COLLATE utf8_unicode_ci,
  CT_Code_Postal_Client text COLLATE utf8_unicode_ci,
  CT_Ville_Client text COLLATE utf8_unicode_ci,
  CT_Etiquette_Client text COLLATE utf8_unicode_ci,
  CT_Telephone_Fixe_Client text COLLATE utf8_unicode_ci,
  CT_Telephone_Portable_Client text COLLATE utf8_unicode_ci,
  CT_Adresse_Mail_Client text COLLATE utf8_unicode_ci,
  CT_Civilite_Mandataire text COLLATE utf8_unicode_ci,
  CT_Prenom_Mandataire text COLLATE utf8_unicode_ci,
  CT_Nom_Mandataire text COLLATE utf8_unicode_ci,
  CT_Adresse_Ligne_1_Mandataire text COLLATE utf8_unicode_ci,
  CT_Adresse_Ligne_2_Mandataire text COLLATE utf8_unicode_ci,
  CT_Code_Postal_Mandataire text COLLATE utf8_unicode_ci,
  CT_Ville_Mandataire text COLLATE utf8_unicode_ci,
  CT_Telephone_Fixe_Mandataire text COLLATE utf8_unicode_ci,
  CT_Telephone_Portable_Mandataire text COLLATE utf8_unicode_ci,
  CT_Adresse_Mail_Mandataire text COLLATE utf8_unicode_ci,
  CT_Etiquette_Mandataire text COLLATE utf8_unicode_ci,
  CT_Date_De_La_Representation date DEFAULT NULL,
  CT_Adresse_De_La_Representation_Ligne_1 text COLLATE utf8_unicode_ci,
  CT_Adresse_De_La_Representation_Ligne_2 text COLLATE utf8_unicode_ci,
  CT_Code_Postal_Lieu_De_Representation text COLLATE utf8_unicode_ci,
  CT_Ville_De_Representation text COLLATE utf8_unicode_ci,
  CT_Heure_De_Debut_De_Prestation text COLLATE utf8_unicode_ci,
  CT_Heure_De_Fin_De_Prestation text COLLATE utf8_unicode_ci,
  CT_Etiquette_Des_Horaires text COLLATE utf8_unicode_ci,
  CT_Duree_De_La_Representation text COLLATE utf8_unicode_ci,
  CT_Date_Darrivee text COLLATE utf8_unicode_ci,
  CT_Heure_Darrivee text COLLATE utf8_unicode_ci,
  CT_Montant_Total_Du_Contrat decimal(10,2) DEFAULT NULL,
  CT_Total_Salaires_Nets decimal(10,2) DEFAULT NULL,
  CT_Total_Des_Salaires_Bruts decimal(10,2) DEFAULT NULL,
  CT_Total_Des_Retenues_Salariales_Estimees decimal(10,2) DEFAULT NULL,
  CT_Total_Des_Cotisations_Patronales_Estimees decimal(10,2) DEFAULT NULL,
  CT_Total_Cotisations_Guso decimal(10,2) DEFAULT NULL,
  CT_Total_Des_Frais decimal(10,2) DEFAULT NULL,
  CT_Montant_A_Verser_A_Lorchestre_Estime decimal(10,2) DEFAULT NULL,
  CT_Montant_Total_Du_Contrat_En_Lettres text COLLATE utf8_unicode_ci,
  CT_Etiquette_1Er_Cheque text COLLATE utf8_unicode_ci,
  CT_Etiquette_2E_Cheque text COLLATE utf8_unicode_ci,
  CT_Etiquette_3E_Cheque text COLLATE utf8_unicode_ci,
  CT_Descriptif_3E_Cheque text COLLATE utf8_unicode_ci,
  CT_Formule text COLLATE utf8_unicode_ci,
  CT_Nb_Delements int(11) DEFAULT NULL,
  CT_Nb_De_Cuivres int(11) DEFAULT NULL,
  CT_Nb_De_Danseuses int(11) DEFAULT NULL,
  CT_Chanteur_Supp int(11) DEFAULT NULL,
  CT_Chanteuse_Supp int(11) DEFAULT NULL,
  CT_Etiquette_Du_1Er_Element text COLLATE utf8_unicode_ci,
  CT_Etiquette_Du_2E_Element text COLLATE utf8_unicode_ci,
  CT_Etiquette_Du_3E_Element text COLLATE utf8_unicode_ci,
  CT_Etiquette_Du_4E_Element text COLLATE utf8_unicode_ci,
  CT_Etiquette_Du_5E_Element text COLLATE utf8_unicode_ci,
  CT_Etiquette_Du_6E_Element text COLLATE utf8_unicode_ci,
  CT_Etiquette_Du_7E_Element text COLLATE utf8_unicode_ci,
  CT_Etiquette_Du_8E_Element text COLLATE utf8_unicode_ci,
  CT_Etiquette_Du_9E_Element text COLLATE utf8_unicode_ci,
  CT_Etiquette_Du_10E_Element text COLLATE utf8_unicode_ci,
  CT_Etiquette_Du_11E_Element text COLLATE utf8_unicode_ci,
  CT_Etiquette_Du_12E_Element text COLLATE utf8_unicode_ci,
  CT_Etiquette_Du_13E_Element text COLLATE utf8_unicode_ci,
  CT_Etiquette_Du_14E_Element text COLLATE utf8_unicode_ci,
  CT_Etiquette_Du_15E_Element text COLLATE utf8_unicode_ci,
  CT_Numero_De_Securite_Sociale_Du_1Er_Element text COLLATE utf8_unicode_ci,
  CT_Numero_De_Securite_Sociale_Du_2E_Element text COLLATE utf8_unicode_ci,
  CT_Numero_De_Securite_Sociale_Du_3E_Element text COLLATE utf8_unicode_ci,
  CT_Numero_De_Securite_Sociale_Du_4E_Element text COLLATE utf8_unicode_ci,
  CT_Numero_De_Securite_Sociale_Du_5E_Element text COLLATE utf8_unicode_ci,
  CT_Numero_De_Securite_Sociale_Du_6E_Element text COLLATE utf8_unicode_ci,
  CT_Numero_De_Securite_Sociale_Du_7E_Element text COLLATE utf8_unicode_ci,
  CT_Numero_De_Securite_Sociale_Du_8E_Element text COLLATE utf8_unicode_ci,
  CT_Numero_De_Securite_Sociale_Du_9E_Element text COLLATE utf8_unicode_ci,
  CT_Numero_De_Securite_Sociale_Du_10E_Element text COLLATE utf8_unicode_ci,
  CT_Numero_De_Securite_Sociale_Du_11E_Element text COLLATE utf8_unicode_ci,
  CT_Numero_De_Securite_Sociale_Du_12E_Element text COLLATE utf8_unicode_ci,
  CT_Numero_De_Securite_Sociale_Du_13E_Element text COLLATE utf8_unicode_ci,
  CT_Numero_De_Securite_Sociale_Du_14E_Element text COLLATE utf8_unicode_ci,
  CT_Numero_De_Securite_Sociale_Du_15E_Element text COLLATE utf8_unicode_ci,
  CT_Emploi_Du_1Er_Element text COLLATE utf8_unicode_ci,
  CT_Emploi_Du_2E_Element text COLLATE utf8_unicode_ci,
  CT_Emploi_Du_3E_Element text COLLATE utf8_unicode_ci,
  CT_Emploi_Du_4E_Element text COLLATE utf8_unicode_ci,
  CT_Emploi_Du_5E_Element text COLLATE utf8_unicode_ci,
  CT_Emploi_Du_6E_Element text COLLATE utf8_unicode_ci,
  CT_Emploi_Du_7E_Element text COLLATE utf8_unicode_ci,
  CT_Emploi_Du_8E_Element text COLLATE utf8_unicode_ci,
  CT_Emploi_Du_9E_Element text COLLATE utf8_unicode_ci,
  CT_Emploi_Du_10E_Element text COLLATE utf8_unicode_ci,
  CT_Emploi_Du_11E_Element text COLLATE utf8_unicode_ci,
  CT_Emploi_Du_12E_Element text COLLATE utf8_unicode_ci,
  CT_Emploi_Du_13E_Element text COLLATE utf8_unicode_ci,
  CT_Emploi_Du_14E_Element text COLLATE utf8_unicode_ci,
  CT_Emploi_Du_15E_Element text COLLATE utf8_unicode_ci,
  CT_Salaire_Net_Du_1Er_Element decimal(10,2) DEFAULT NULL,
  CT_Salaire_Net_Du_2E_Element decimal(10,2) DEFAULT NULL,
  CT_Salaire_Net_Du_3E_Element decimal(10,2) DEFAULT NULL,
  CT_Salaire_Net_Du_4E_Element decimal(10,2) DEFAULT NULL,
  CT_Frais_Professionnels_De_Pat decimal(10,2) DEFAULT NULL,
  CT_Total_A_Verser_A_Pat decimal(10,2) DEFAULT NULL,
  CT_A_Reverser_Sur_Le_Compte_Commun decimal(10,2) DEFAULT NULL,
  CT_Salaire_Net_Du_5E_Element decimal(10,2) DEFAULT NULL,
  CT_Frais_Professionnels_De_Fabrice decimal(10,2) DEFAULT NULL,
  CT_Total_A_Verser_A_Fabrice decimal(10,2) DEFAULT NULL,
  CT_Salaire_Net_Du_6E_Element decimal(10,2) DEFAULT NULL,
  CT_Frais_Professionnels_Doliv decimal(10,2) DEFAULT NULL,
  CT_Total_A_Verser_A_Oliv decimal(10,2) DEFAULT NULL,
  CT_Salaire_Net_Du_7E_Element decimal(10,2) DEFAULT NULL,
  CT_Salaire_Net_Du_8E_Element decimal(10,2) DEFAULT NULL,
  CT_Salaire_Net_Du_9E_Element decimal(10,2) DEFAULT NULL,
  CT_Salaire_Net_Du_10E_Element decimal(10,2) DEFAULT NULL,
  CT_Salaire_Net_Du_11E_Element decimal(10,2) DEFAULT NULL,
  CT_Salaire_Net_Du_12E_Element decimal(10,2) DEFAULT NULL,
  CT_Salaire_Net_Du_13E_Element decimal(10,2) DEFAULT NULL,
  CT_Salaire_Net_Du_14E_Element decimal(10,2) DEFAULT NULL,
  CT_Salaire_Net_Du_15E_Element decimal(10,2) DEFAULT NULL,
  CT_Salaire_Brut_Du_1Er decimal(10,2) DEFAULT NULL,
  CT_Salaire_Brut_Du_2E decimal(10,2) DEFAULT NULL,
  CT_Salaire_Brut_Du_3E decimal(10,2) DEFAULT NULL,
  CT_Salaire_Brut_Du_4E decimal(10,2) DEFAULT NULL,
  CT_Salaire_Brut_Du_5E decimal(10,2) DEFAULT NULL,
  CT_Salaire_Brut_Du_6E decimal(10,2) DEFAULT NULL,
  CT_Salaire_Brut_Du_7E decimal(10,2) DEFAULT NULL,
  CT_Salaire_Brut_Du_8E decimal(10,2) DEFAULT NULL,
  CT_Salaire_Brut_Du_9E decimal(10,2) DEFAULT NULL,
  CT_Salaire_Brut_Du_10E decimal(10,2) DEFAULT NULL,
  CT_Salaire_Brut_Du_11E decimal(10,2) DEFAULT NULL,
  CT_Salaire_Brut_Du_12E decimal(10,2) DEFAULT NULL,
  CT_Salaire_Brut_Du_13E decimal(10,2) DEFAULT NULL,
  CT_Salaire_Brut_Du_14E decimal(10,2) DEFAULT NULL,
  CT_Salaire_Brut_Du_15E decimal(10,2) DEFAULT NULL,
  CT_Frais_Des_Danseuses decimal(10,2) DEFAULT NULL,
  CT_Lieu_Du_Contrat text COLLATE utf8_unicode_ci,
  CT_Date_Du_Contrat date DEFAULT NULL,
  CT_Createur text COLLATE utf8_unicode_ci,
  CT_Date_De_Creation date DEFAULT NULL,
  CT_Modificateur text COLLATE utf8_unicode_ci,
  CT_Date_De_Modification date DEFAULT NULL,
  CT_Nom_Du_Fichier text COLLATE utf8_unicode_ci,
  CT_Annexe_Au_Contrat text COLLATE utf8_unicode_ci,
  CT_Nb_Daffiches_Souhaitees int(11) DEFAULT NULL,
  CT_Statut_Du_Contrat text COLLATE utf8_unicode_ci,
  CT_Etait_Deja_Affilie_Au_Guso text COLLATE utf8_unicode_ci,
  CT_Dpae_Etiquette_Declarant text COLLATE utf8_unicode_ci,
  CT_Dpae_Etiquette_Mandataire text COLLATE utf8_unicode_ci,
  CT_Dpae_Date_Dembauche text COLLATE utf8_unicode_ci,
  CT_Dpae_Heure_Dembauche text COLLATE utf8_unicode_ci,
  CT_Dpae_1Er_Salarie text COLLATE utf8_unicode_ci,
  CT_Dpae_2E_Salarie text COLLATE utf8_unicode_ci,
  CT_Dpae_3E_Salarie text COLLATE utf8_unicode_ci,
  CT_Dpae_4E_Salarie text COLLATE utf8_unicode_ci,
  CT_Dpae_5E_Salarie text COLLATE utf8_unicode_ci,
  CT_Dpae_6E_Salarie text COLLATE utf8_unicode_ci,
  CT_Dpae_7E_Salarie text COLLATE utf8_unicode_ci,
  CT_Dpae_8E_Salarie text COLLATE utf8_unicode_ci,
  CT_Dpae_9E_Salarie text COLLATE utf8_unicode_ci,
  CT_Dpae_10E_Salarie text COLLATE utf8_unicode_ci,
  CT_Dpae_11E_Salarie text COLLATE utf8_unicode_ci,
  CT_Dpae_12E_Salarie text COLLATE utf8_unicode_ci,
  CT_Dpae_13E_Salarie text COLLATE utf8_unicode_ci,
  CT_Dpae_14E_Salarie text COLLATE utf8_unicode_ci,
  CT_Dpae_15E_Salarie text COLLATE utf8_unicode_ci,
  CT_Statut_Dpae text COLLATE utf8_unicode_ci,
  CT_Nom_De_Fichier_Dpae text COLLATE utf8_unicode_ci,
  CT_Bulletins_De_Salaires_Deja_Crees text COLLATE utf8_unicode_ci,
  CT_Id_Bulletin_De_Salaire_1Er_Salarie int(11) DEFAULT NULL,
  CT_Id_Bulletin_De_Salaire_2E_Salarie int(11) DEFAULT NULL,
  CT_Id_Bulletin_De_Salaire_3E_Salarie int(11) DEFAULT NULL,
  CT_Id_Bulletin_De_Salaire_4E_Salarie int(11) DEFAULT NULL,
  CT_Id_Bulletin_De_Salaire_5E_Salarie int(11) DEFAULT NULL,
  CT_Id_Bulletin_De_Salaire_6E_Salarie int(11) DEFAULT NULL,
  CT_Id_Bulletin_De_Salaire_7E_Salarie int(11) DEFAULT NULL,
  CT_Id_Bulletin_De_Salaire_8E_Salarie int(11) DEFAULT NULL,
  CT_Id_Bulletin_De_Salaire_9E_Salarie int(11) DEFAULT NULL,
  CT_Id_Bulletin_De_Salaire_10E_Salarie int(11) DEFAULT NULL,
  CT_Id_Bulletin_De_Salaire_11E_Salarie int(11) DEFAULT NULL,
  CT_Id_Bulletin_De_Salaire_12E_Salarie int(11) DEFAULT NULL,
  CT_Id_Bulletin_De_Salaire_13E_Salarie int(11) DEFAULT NULL,
  CT_Id_Bulletin_De_Salaire_14E_Salarie int(11) DEFAULT NULL,
  CT_Id_Bulletin_De_Salaire_15E_Salarie int(11) DEFAULT NULL,
  CT_Total_Des_Retenues_Salariales_Finales decimal(10,2) DEFAULT NULL,
  CT_Total_Des_Cotisations_Patronales_Finales decimal(10,2) DEFAULT NULL,
  CT_Cheque_De_Cotisations_A_Etablir decimal(10,2) DEFAULT NULL,
  CT_Cheque_A_Lordre_Dodyssee_A_Etablir decimal(10,2) DEFAULT NULL,
  CT_Montant_Total_Du_Contrat_Final_Le_Jour_De_La_Prestation decimal(10,2) DEFAULT NULL,
  CT_Montant_Total_Initial decimal(10,2) DEFAULT NULL,
  CT_Variation_De_Charges decimal(10,2) DEFAULT NULL,
  CT_Etiquette_De_Variation_De_Charges text COLLATE utf8_unicode_ci,
  CT_Etiquette_Date_Du_Courrier_Fin_De_Prestation text COLLATE utf8_unicode_ci,
  CT_Etiquette_Objet_Lettre_Fin_De_Prestation text COLLATE utf8_unicode_ci,
  CT_Etiquette_Introduction_Lettre_Fin_De_Prestation text COLLATE utf8_unicode_ci,
  CT_Nom_De_La_Sauvegarde_Du_La_Lettre_De_Fin_De_Prestation text COLLATE utf8_unicode_ci,
  CT_Mandataire_Feuille_De_Mandat text COLLATE utf8_unicode_ci,
  CT_Employeur_Feuille_De_Mandat text COLLATE utf8_unicode_ci,
  CT_1Er_Element_Feuille_De_Mandat text COLLATE utf8_unicode_ci,
  CT_2E_Element_Feuille_De_Mandat text COLLATE utf8_unicode_ci,
  CT_3E_Element_Feuille_De_Mandat text COLLATE utf8_unicode_ci,
  CT_4E_Element_Feuille_De_Mandat text COLLATE utf8_unicode_ci,
  CT_5E_Element_Feuille_De_Mandat text COLLATE utf8_unicode_ci,
  CT_6E_Element_Feuille_De_Mandat text COLLATE utf8_unicode_ci,
  CT_7E_Element_Feuille_De_Mandat text COLLATE utf8_unicode_ci,
  CT_8E_Element_Feuille_De_Mandat text COLLATE utf8_unicode_ci,
  CT_9E_Element_Feuille_De_Mandat text COLLATE utf8_unicode_ci,
  CT_10E_Element_Feuille_De_Mandat text COLLATE utf8_unicode_ci,
  CT_11E_Element_Feuille_De_Mandat text COLLATE utf8_unicode_ci,
  CT_12E_Element_Feuille_De_Mandat text COLLATE utf8_unicode_ci,
  CT_13E_Element_Feuille_De_Mandat text COLLATE utf8_unicode_ci,
  CT_14E_Element_Feuille_De_Mandat text COLLATE utf8_unicode_ci,
  CT_15E_Element_Feuille_De_Mandat text COLLATE utf8_unicode_ci,
  CT_Chef_1Er_Mandat text COLLATE utf8_unicode_ci,
  CT_Emploi_Du_1Er_Chef_Mandat text COLLATE utf8_unicode_ci,
  CT_Salaire_Brut_Du_1Er_Chef_Mandat decimal(10,2) DEFAULT NULL,
  CT_Chef_2E_Mandat text COLLATE utf8_unicode_ci,
  CT_Emploi_Du_2E_Chef_Mandat text COLLATE utf8_unicode_ci,
  CT_Salaire_Brut_Du_2E_Chef_Mandat decimal(10,2) DEFAULT NULL,
  CT_1Er_Element_Final_Feuille_De_Mandat text COLLATE utf8_unicode_ci,
  CT_2E_Element_Final_Feuille_De_Mandat text COLLATE utf8_unicode_ci,
  CT_3E_Element_Final_Feuille_De_Mandat text COLLATE utf8_unicode_ci,
  CT_4E_Element_Final_Feuille_De_Mandat text COLLATE utf8_unicode_ci,
  CT_5E_Element_Final_Feuille_De_Mandat text COLLATE utf8_unicode_ci,
  CT_6E_Element_Final_Feuille_De_Mandat text COLLATE utf8_unicode_ci,
  CT_7E_Element_Final_Feuille_De_Mandat text COLLATE utf8_unicode_ci,
  CT_8E_Element_Final_Feuille_De_Mandat text COLLATE utf8_unicode_ci,
  CT_9E_Element_Final_Feuille_De_Mandat text COLLATE utf8_unicode_ci,
  CT_10E_Element_Final_Feuille_De_Mandat text COLLATE utf8_unicode_ci,
  CT_11E_Element_Final_Feuille_De_Mandat text COLLATE utf8_unicode_ci,
  CT_12E_Element_Final_Feuille_De_Mandat text COLLATE utf8_unicode_ci,
  CT_13E_Element_Final_Feuille_De_Mandat text COLLATE utf8_unicode_ci,
  CT_14E_Element_Final_Feuille_De_Mandat text COLLATE utf8_unicode_ci,
  CT_15E_Element_Final_Feuille_De_Mandat text COLLATE utf8_unicode_ci,
  CT_Emploi_Du_1Er_Element_Final_Feuille_De_Mandat text COLLATE utf8_unicode_ci,
  CT_Emploi_Du_2E_Element_Final_Feuille_De_Mandat text COLLATE utf8_unicode_ci,
  CT_Emploi_Du_3E_Element_Final_Feuille_De_Mandat text COLLATE utf8_unicode_ci,
  CT_Emploi_Du_4E_Element_Final_Feuille_De_Mandat text COLLATE utf8_unicode_ci,
  CT_Emploi_Du_5E_Element_Final_Feuille_De_Mandat text COLLATE utf8_unicode_ci,
  CT_Emploi_Du_6E_Element_Final_Feuille_De_Mandat text COLLATE utf8_unicode_ci,
  CT_Emploi_Du_7E_Element_Final_Feuille_De_Mandat text COLLATE utf8_unicode_ci,
  CT_Emploi_Du_8E_Element_Final_Feuille_De_Mandat text COLLATE utf8_unicode_ci,
  CT_Emploi_Du_9E_Element_Final_Feuille_De_Mandat text COLLATE utf8_unicode_ci,
  CT_Emploi_Du_10E_Element_Final_Feuille_De_Mandat text COLLATE utf8_unicode_ci,
  CT_Emploi_Du_11E_Element_Final_Feuille_De_Mandat text COLLATE utf8_unicode_ci,
  CT_Emploi_Du_12E_Element_Final_Feuille_De_Mandat text COLLATE utf8_unicode_ci,
  CT_Emploi_Du_13E_Element_Final_Feuille_De_Mandat text COLLATE utf8_unicode_ci,
  CT_Emploi_Du_14E_Element_Final_Feuille_De_Mandat text COLLATE utf8_unicode_ci,
  CT_Emploi_Du_15E_Element_Final_Feuille_De_Mandat text COLLATE utf8_unicode_ci,
  CT_Salaire_Brut_Du_1Er_Final_Feuille_De_Mandat decimal(10,0) DEFAULT NULL,
  CT_Salaire_Brut_Du_2E_Final_Feuille_De_Mandat decimal(10,0) DEFAULT NULL,
  CT_Salaire_Brut_Du_3E_Final_Feuille_De_Mandat decimal(10,0) DEFAULT NULL,
  CT_Salaire_Brut_Du_4E_Final_Feuille_De_Mandat decimal(10,0) DEFAULT NULL,
  CT_Salaire_Brut_Du_5E_Final_Feuille_De_Mandat decimal(10,0) DEFAULT NULL,
  CT_Salaire_Brut_Du_6E_Final_Feuille_De_Mandat decimal(10,0) DEFAULT NULL,
  CT_Salaire_Brut_Du_7E_Final_Feuille_De_Mandat decimal(10,2) DEFAULT NULL,
  CT_Salaire_Brut_Du_8E_Final_Feuille_De_Mandat decimal(10,2) DEFAULT NULL,
  CT_Salaire_Brut_Du_9E_Final_Feuille_De_Mandat decimal(10,2) DEFAULT NULL,
  CT_Salaire_Brut_Du_10E_Final_Feuille_De_Mandat decimal(10,2) DEFAULT NULL,
  CT_Salaire_Brut_Du_11E_Final_Feuille_De_Mandat decimal(10,2) DEFAULT NULL,
  CT_Salaire_Brut_Du_12E_Final_Feuille_De_Mandat decimal(10,2) DEFAULT NULL,
  CT_Salaire_Brut_Du_13E_Final_Feuille_De_Mandat decimal(10,2) DEFAULT NULL,
  CT_Salaire_Brut_Du_14E_Final_Feuille_De_Mandat decimal(10,2) DEFAULT NULL,
  CT_Salaire_Brut_Du_15E_Final_Feuille_De_Mandat decimal(10,2) DEFAULT NULL,
  CT_Urssaf_Du_1Er text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  CT_Urssaf_Du_2E text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  CT_Urssaf_Du_3E text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  CT_Urssaf_Du_4E text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  CT_Urssaf_Du_5E text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  CT_Urssaf_Du_6E text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  CT_Urssaf_Du_7E text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  CT_Urssaf_Du_8E text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  CT_Urssaf_Du_9E text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  CT_Urssaf_Du_10E text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  CT_Urssaf_Du_11E text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  CT_Urssaf_Du_12E text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  CT_Urssaf_Du_13E text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  CT_Urssaf_Du_14E text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  CT_Urssaf_Du_15E text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  CT_Nom_De_Fichier_Pdf_Feuille_De_Mandat text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table contrats_2
--
-- Création :  Sam 24 Juin 2017 à 16:07
--

CREATE TABLE contrats_2 (
  CD_Idcontrat2 int(10) UNSIGNED NOT NULL,
  CD_Id_Contrat_2 int(11) NOT NULL,
  CD_Element_1_A_0 text COLLATE utf8_unicode_ci,
  CD_Element_2_A_0 text COLLATE utf8_unicode_ci,
  CD_Element_3_A_0 text COLLATE utf8_unicode_ci,
  CD_Element_4_A_0 text COLLATE utf8_unicode_ci,
  CD_Element_5_A_0 text COLLATE utf8_unicode_ci,
  CD_Element_6_A_0 text COLLATE utf8_unicode_ci,
  CD_Element_7_A_0 text COLLATE utf8_unicode_ci,
  CD_Element_8_A_0 text COLLATE utf8_unicode_ci,
  CD_Element_9_A_0 text COLLATE utf8_unicode_ci,
  CD_Element_10_A_0 text COLLATE utf8_unicode_ci,
  CD_Element_11_A_0 text COLLATE utf8_unicode_ci,
  CD_Element_12_A_0 text COLLATE utf8_unicode_ci,
  CD_Element_13_A_0 text COLLATE utf8_unicode_ci,
  CD_Element_14_A_0 text COLLATE utf8_unicode_ci,
  CD_Element_15_A_0 text COLLATE utf8_unicode_ci,
  CD_Net_Initial_Du_1Er_Element decimal(10,2) DEFAULT NULL,
  CD_Net_Initial_Du_2E_Element decimal(10,2) DEFAULT NULL,
  CD_Net_Initial_Du_3E_Element decimal(10,2) DEFAULT NULL,
  CD_Net_Initial_Du_4E_Element decimal(10,2) DEFAULT NULL,
  CD_Net_Initial_Du_5E_Element decimal(10,2) DEFAULT NULL,
  CD_Net_Initial_Du_6E_Element decimal(10,2) DEFAULT NULL,
  CD_Net_Initial_Du_7E_Element decimal(10,2) DEFAULT NULL,
  CD_Net_Initial_Du_8E_Element decimal(10,2) DEFAULT NULL,
  CD_Net_Initial_Du_9E_Element decimal(10,2) DEFAULT NULL,
  CD_Net_Initial_Du_10E_Element decimal(10,2) DEFAULT NULL,
  CD_Net_Initial_Du_11E_Element decimal(10,2) DEFAULT NULL,
  CD_Net_Initial_Du_12E_Element decimal(10,2) DEFAULT NULL,
  CD_Net_Initial_Du_13E_Element decimal(10,2) DEFAULT NULL,
  CD_Net_Initial_Du_14E_Element decimal(10,2) DEFAULT NULL,
  CD_Net_Initial_Du_15E_Element decimal(10,2) DEFAULT NULL,
  CD_Complement_Du_1Er_Element decimal(10,2) DEFAULT NULL,
  CD_Complement_Du_2E_Element decimal(10,2) DEFAULT NULL,
  CD_Complement_Du_3E_Element decimal(10,2) DEFAULT NULL,
  CD_Complement_Du_4E_Element decimal(10,2) DEFAULT NULL,
  CD_Complement_Du_5E_Element decimal(10,2) DEFAULT NULL,
  CD_Complement_Du_6E_Element decimal(10,2) DEFAULT NULL,
  CD_Complement_Du_7E_Element decimal(10,2) DEFAULT NULL,
  CD_Complement_Du_8E_Element decimal(10,2) DEFAULT NULL,
  CD_Complement_Du_9E_Element decimal(10,2) DEFAULT NULL,
  CD_Complement_Du_10E_Element decimal(10,2) DEFAULT NULL,
  CD_Complement_Du_11E_Element decimal(10,2) DEFAULT NULL,
  CD_Complement_Du_12E_Element decimal(10,2) DEFAULT NULL,
  CD_Complement_Du_13E_Element decimal(10,2) DEFAULT NULL,
  CD_Complement_Du_14E_Element decimal(10,2) DEFAULT NULL,
  CD_Complement_Du_15E_Element decimal(10,2) DEFAULT NULL,
  CD_Frais_Professionnels_De_Bruno decimal(10,2) DEFAULT NULL,
  CD_Total_A_Verser_A_Bruno decimal(10,2) DEFAULT NULL,
  CD_Patareverser decimal(10,2) DEFAULT NULL,
  CD_Fabriceareverser decimal(10,2) DEFAULT NULL,
  CD_Olivareverser decimal(10,2) DEFAULT NULL,
  CD_Notes_Sur_Le_Contrat text COLLATE utf8_unicode_ci,
  CD_Date_De_Debut_De_Prestation date DEFAULT NULL,
  CD_Date_De_Fin_De_Prestation date DEFAULT NULL,
  CD_Dates_De_Travail text COLLATE utf8_unicode_ci,
  CD_Element_1_Paye text COLLATE utf8_unicode_ci,
  CD_Element_2_Paye text COLLATE utf8_unicode_ci,
  CD_Element_3_Paye text COLLATE utf8_unicode_ci,
  CD_Element_4_Paye text COLLATE utf8_unicode_ci,
  CD_Element_5_Paye text COLLATE utf8_unicode_ci,
  CD_Element_6_Paye text COLLATE utf8_unicode_ci,
  CD_Element_7_Paye text COLLATE utf8_unicode_ci,
  CD_Element_8_Paye text COLLATE utf8_unicode_ci,
  CD_Element_9_Paye text COLLATE utf8_unicode_ci,
  CD_Element_10_Paye text COLLATE utf8_unicode_ci,
  CD_Element_11_Paye text COLLATE utf8_unicode_ci,
  CD_Element_12_Paye text COLLATE utf8_unicode_ci,
  CD_Element_13_Paye text COLLATE utf8_unicode_ci,
  CD_Element_14_Paye text COLLATE utf8_unicode_ci,
  CD_Element_15_Paye text COLLATE utf8_unicode_ci,
  CD_Objet_De_La_Prestation text COLLATE utf8_unicode_ci,
  CD_Dpae_1Er_Salarie text COLLATE utf8_unicode_ci,
  CD_Dpae_2E_Salarie text COLLATE utf8_unicode_ci,
  CD_Dpae_3E_Salarie text COLLATE utf8_unicode_ci,
  CD_Dpae_4E_Salarie text COLLATE utf8_unicode_ci,
  CD_Dpae_5E_Salarie text COLLATE utf8_unicode_ci,
  CD_Dpae_6E_Salarie text COLLATE utf8_unicode_ci,
  CD_Dpae_7E_Salarie text COLLATE utf8_unicode_ci,
  CD_Dpae_8E_Salarie text COLLATE utf8_unicode_ci,
  CD_Dpae_9E_Salarie text COLLATE utf8_unicode_ci,
  CD_Dpae_10E_Salarie text COLLATE utf8_unicode_ci,
  CD_Dpae_11E_Salarie text COLLATE utf8_unicode_ci,
  CD_Dpae_12E_Salarie text COLLATE utf8_unicode_ci,
  CD_Dpae_13E_Salarie text COLLATE utf8_unicode_ci,
  CD_Dpae_14E_Salarie text COLLATE utf8_unicode_ci,
  CD_Dpae_15E_Salarie text COLLATE utf8_unicode_ci,
  CD_Etiquette_4E_Cheque text COLLATE utf8_unicode_ci,
  CD_Descriptif_4E_Cheque text COLLATE utf8_unicode_ci,
  CD_Frais_Supplementaires_Sans_Charges decimal(10,2) DEFAULT NULL,
  CD_Contrat_Calcule_En_Particulier_Avec_Cs text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table crdb
--
-- Création :  Sam 24 Juin 2017 à 16:08
--

CREATE TABLE crdb (
  CR_Id_Crdb int(10) UNSIGNED NOT NULL,
  CR_Devis_Acceptes_Non_Transformes_En_Contrat int(11) DEFAULT NULL,
  CR_Devis_En_Attente_Depuis_Plus_Dun_Mois int(11) DEFAULT NULL,
  CR_Nb_Danciens_Clients int(11) DEFAULT NULL,
  CR_Nb_De_Clients_Potentiels int(11) DEFAULT NULL,
  CR_Nb_De_Clients_Actifs int(11) DEFAULT NULL,
  CR_Nb_De_Clients_Dont_Le_Suivi_Est_A_Faire int(11) DEFAULT NULL,
  CR_Nb_De_Clients_Dont_Le_Suivi_Est_En_Cours int(11) DEFAULT NULL,
  CR_Nb_De_Contrat_Envoyes int(11) DEFAULT NULL,
  CR_Nb_De_Contrat_Envoyes_Delai_De_Renvoi_Depasse int(11) DEFAULT NULL,
  CR_Nb_De_Contrat_Futurs_Recus int(11) DEFAULT NULL,
  CR_Nb_De_Contrats_A_Faire int(11) DEFAULT NULL,
  CR_Nb_De_Contrats_Futurs int(11) DEFAULT NULL,
  CR_Nb_De_Devis_Dispo_Non_Assuree int(11) DEFAULT NULL,
  CR_Nb_De_Devis_En_Attente int(11) DEFAULT NULL,
  CR_Nb_De_Dpae_A_Envoyer int(11) DEFAULT NULL,
  CR_Nb_De_Fiches_Clients int(11) DEFAULT NULL,
  CR_Nb_De_Messages int(11) DEFAULT NULL,
  CR_Nb_De_Messages_Archives int(11) DEFAULT NULL,
  CR_Verification_Anniversaire datetime DEFAULT NULL,
  CR_Recherche_Clients tinyint(1) DEFAULT NULL,
  CR_Navigation_Clients text COLLATE utf8_unicode_ci,
  CR_Recherche_Devis tinyint(4) DEFAULT NULL,
  CR_Navigation_Devis text COLLATE utf8_unicode_ci,
  CR_Recherche_Contrat tinyint(4) DEFAULT NULL,
  CR_Navigation_Contrat text COLLATE utf8_unicode_ci,
  CR_Navigation_User int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table declarations_guso
--
-- Création :  Sam 24 Juin 2017 à 16:10
--

CREATE TABLE declarations_guso (
  DG_Id_Declaration_Guso int(10) UNSIGNED NOT NULL,
  DG_Id_Contrat int(11) DEFAULT NULL,
  DG_Numero_De_Lelement int(11) DEFAULT NULL,
  DG_Identite_Du_Salarie text COLLATE utf8_unicode_ci,
  DG_Nom_Du_Salarie text COLLATE utf8_unicode_ci,
  DG_Prenom_Du_Salarie text COLLATE utf8_unicode_ci,
  DG_Date_De_La_Prestation text COLLATE utf8_unicode_ci,
  DG_Lieu_De_La_Prestation text COLLATE utf8_unicode_ci,
  DG_N_De_Secu_Du_Salarie text COLLATE utf8_unicode_ci,
  DG_Date_De_Naissance_Du_Salarie date DEFAULT NULL,
  DG_N_Guso_Du_Salarie text COLLATE utf8_unicode_ci,
  DG_Adresse_Du_Salarie text COLLATE utf8_unicode_ci,
  DG_Numero_De_Ladresse text COLLATE utf8_unicode_ci,
  DG_Batiment_De_Ladresse text COLLATE utf8_unicode_ci,
  DG_Voie_De_Ladresse text COLLATE utf8_unicode_ci,
  DG_Ligne_1_De_Ladresse text COLLATE utf8_unicode_ci,
  DG_Ligne_2_De_Ladresse text COLLATE utf8_unicode_ci,
  DG_Code_Postal_De_Ladresse_Du_Salarie text COLLATE utf8_unicode_ci,
  DG_Ville_De_Ladresse_Du_Salarie text COLLATE utf8_unicode_ci,
  DG_Emploi_Occupe text COLLATE utf8_unicode_ci,
  DG_Objet_Du_Contrat_De_Travail text COLLATE utf8_unicode_ci,
  DG_Lieu_Du_Spectacle text COLLATE utf8_unicode_ci,
  DG_Periode_Demploi text COLLATE utf8_unicode_ci,
  DG_Date_Demploi date DEFAULT NULL,
  DG_Jour_De_La_Date_Demploi text COLLATE utf8_unicode_ci,
  DG_Mois_De_La_Date_Demploi text COLLATE utf8_unicode_ci,
  DG_Annee_De_La_Date_Demploi text COLLATE utf8_unicode_ci,
  DG_Jour_De_La_Fin_Demploi text COLLATE utf8_unicode_ci,
  DG_Mois_De_La_Fin_Demploi text COLLATE utf8_unicode_ci,
  DG_Annee_De_La_Fin_Demploi text COLLATE utf8_unicode_ci,
  DG_Nb_De_Jours int(11) DEFAULT NULL,
  DG_Artiste text COLLATE utf8_unicode_ci,
  DG_Technicien text COLLATE utf8_unicode_ci,
  DG_Date_Et_Heure_Dembauche text COLLATE utf8_unicode_ci,
  DG_Jour_De_La_Date_Dembauche text COLLATE utf8_unicode_ci,
  DG_Mois_De_La_Date_Dembauche text COLLATE utf8_unicode_ci,
  DG_Annee_De_La_Date_Dembauche text COLLATE utf8_unicode_ci,
  DG_Heure_Dembauche text COLLATE utf8_unicode_ci,
  DG_Minute_Dembauche text COLLATE utf8_unicode_ci,
  DG_Salaire_Brut decimal(10,2) DEFAULT NULL,
  DG_Centaines_Salaire_Brut text COLLATE utf8_unicode_ci,
  DG_Centimes_Salaire_Brut text COLLATE utf8_unicode_ci,
  DG_Indemnite_Compensatrice_De_Conges_Payes text COLLATE utf8_unicode_ci,
  DG_Montant_De_Lindemnite_De_Conges_Payes decimal(10,2) DEFAULT NULL,
  DG_Centaines_Indemnite_Contes_Payes text COLLATE utf8_unicode_ci,
  DG_Centimes_Indemnite_Contes_Payes text COLLATE utf8_unicode_ci,
  DG_Frais_Professionnels decimal(10,2) DEFAULT NULL,
  DG_Centaines_Frais_Professionnels text COLLATE utf8_unicode_ci,
  DG_Centimes_Frais_Professionnels text COLLATE utf8_unicode_ci,
  DG_Deduction_Pour_Frais_Pro text COLLATE utf8_unicode_ci,
  DG_Forfait_Urssaf text CHARACTER SET latin1 COLLATE latin1_general_ci,
  DG_Cotisations_A_Verser decimal(10,2) DEFAULT NULL,
  DG_Centaines_Cotisations text COLLATE utf8_unicode_ci,
  DG_Centimes_Cotisations text COLLATE utf8_unicode_ci,
  DG_Salaire_Net decimal(10,2) DEFAULT NULL,
  DG_Centaines_Salaire_Net text COLLATE utf8_unicode_ci,
  DG_Centimes_Salaire_Net text COLLATE utf8_unicode_ci,
  DG_Total_A_Verser decimal(10,2) DEFAULT NULL,
  DG_Date_De_Versement_Des_Salaires text COLLATE utf8_unicode_ci,
  DG_Nb_Dheures int(11) DEFAULT NULL,
  DG_Nb_De_Cachets int(11) DEFAULT NULL,
  DG_Regime_Alsace_Moselle text COLLATE utf8_unicode_ci,
  DG_Deduction text COLLATE utf8_unicode_ci,
  DG_Motif_De_Fin_De_Contrat_De_Travail text COLLATE utf8_unicode_ci,
  DG_Mandataire text COLLATE utf8_unicode_ci,
  DG_Nom_De_Lemployeur text COLLATE utf8_unicode_ci,
  DG_Prenom_De_Lemployeur text COLLATE utf8_unicode_ci,
  DG_Qualite_De_Lemployeur text COLLATE utf8_unicode_ci,
  DG_Nom_Du_Fichier_Pdf text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table declaration_pole_emploi
--
-- Création :  Sam 24 Juin 2017 à 16:12
--

CREATE TABLE declaration_pole_emploi (
  DP_Id_Declaration_Pole_Emploi int(10) UNSIGNED NOT NULL,
  DP_Jour int(11) DEFAULT NULL,
  DP_Mois int(11) DEFAULT NULL,
  DP_Annee int(11) DEFAULT NULL,
  DP_Id_Artiste int(11) DEFAULT NULL,
  DP_Artiste text COLLATE utf8_unicode_ci,
  DP_Id_Bulletin_De_Salaire int(11) DEFAULT NULL,
  DP_Id_Contrat int(11) DEFAULT NULL,
  DP_Declaration text COLLATE utf8_unicode_ci,
  DP_Adresse_Mail text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table demande_devis
--
-- Création :  Sam 24 Juin 2017 à 16:15
--

CREATE TABLE demande_devis (
  DD_Iddemandededevis int(10) NOT NULL,
  DD_Date_De_La_Demande date DEFAULT NULL,
  DD_Raison_Sociale text COLLATE utf8_unicode_ci,
  DD_Statut_Juridique text COLLATE utf8_unicode_ci,
  DD_Titre text COLLATE utf8_unicode_ci,
  DD_Nom text COLLATE utf8_unicode_ci,
  DD_Prenom text COLLATE utf8_unicode_ci,
  DD_Adresse_1 text COLLATE utf8_unicode_ci,
  DD_Adresse_2 text COLLATE utf8_unicode_ci,
  DD_Code_Postal text COLLATE utf8_unicode_ci,
  DD_Ville text COLLATE utf8_unicode_ci,
  DD_Telephone text COLLATE utf8_unicode_ci,
  DD_Adresse_Mail text COLLATE utf8_unicode_ci,
  DD_Date_Evenement date DEFAULT NULL,
  DD_Code_Postal_Evenement text COLLATE utf8_unicode_ci,
  DD_Ville_Evenement text COLLATE utf8_unicode_ci,
  DD_Formule_Souhaitee text COLLATE utf8_unicode_ci,
  DD_Commentaires text COLLATE utf8_unicode_ci,
  DD_Kilometrage_Allerretour decimal(10,2) DEFAULT NULL,
  DD_Duree_Dun_Trajet text COLLATE utf8_unicode_ci,
  DD_Couts_Des_Deplacements text COLLATE utf8_unicode_ci,
  DD_Navigateur_Internet text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table detail_devis
--
-- Création :  Sam 24 Juin 2017 à 16:22
--

CREATE TABLE detail_devis (
  DE_Iddetaildudevis int(10) UNSIGNED NOT NULL,
  DE_Id_Devis int(10) DEFAULT NULL,
  DE_Id_Operateur int(10) DEFAULT NULL,
  DE_Id_Client int(10) DEFAULT NULL,
  DE_Id_Contactclient int(10) DEFAULT NULL,
  DE_Simulation_Aux_Anciennes_Conditions text COLLATE utf8_unicode_ci,
  DE_Statut_Du_Devis text COLLATE utf8_unicode_ci,
  DE_Bareme_Type text COLLATE utf8_unicode_ci,
  DE_Codepostalprestation text COLLATE utf8_unicode_ci,
  DE_Frais_Fixes decimal(10,2) DEFAULT NULL,
  DE_Kms_De_Parthenay text COLLATE utf8_unicode_ci,
  DE_Kmsparthenayar int(10) DEFAULT NULL,
  DE_Kms_De_Parthenay_2E_Vehicule_Ar int(10) DEFAULT NULL,
  DE_Kms_Du_Mans text COLLATE utf8_unicode_ci,
  DE_Kmslemansar int(10) DEFAULT NULL,
  DE_Option_Frais_Pat text COLLATE utf8_unicode_ci,
  DE_Kms_Pat_Ar int(10) DEFAULT NULL,
  DE_Frais_De_Deplacement_Pat decimal(10,2) DEFAULT NULL,
  DE_Frais_De_Deplacements_Odyssee decimal(10,2) DEFAULT NULL,
  DE_Type_De_Vehicule text COLLATE utf8_unicode_ci,
  DE_Nb_De_Jours_De_Location int(10) DEFAULT NULL,
  DE_Frais_De_Location_2E_Vehicule decimal(10,2) DEFAULT NULL,
  DE_Frais_De_Deplacement_2E_Vehicule decimal(10,2) DEFAULT NULL,
  DE_Frais_De_Deplacements_Danseuses decimal(10,2) DEFAULT NULL,
  DE_Part_Dinvestissement decimal(10,2) DEFAULT NULL,
  DE_Frais_De_Fonctionnement decimal(10,2) DEFAULT NULL,
  DE_Frais_Supplementaires decimal(10,2) DEFAULT NULL,
  DE_Deduction decimal(10,2) DEFAULT NULL,
  DE_A_Reverser decimal(10,2) DEFAULT NULL,
  DE_Operateur text COLLATE utf8_unicode_ci,
  DE_Adresseoperateurligne1 text COLLATE utf8_unicode_ci,
  DE_Adresseoperateurligne2 text COLLATE utf8_unicode_ci,
  DE_Codepostaloperateur text COLLATE utf8_unicode_ci,
  DE_Villeoperateur text COLLATE utf8_unicode_ci,
  DE_Formule text COLLATE utf8_unicode_ci,
  DE_Difference decimal(10,2) DEFAULT NULL,
  DE_Cuivres tinyint(1) DEFAULT NULL,
  DE_Nb_De_Cuivres int(10) DEFAULT NULL,
  DE_Danseuses tinyint(1) DEFAULT NULL,
  DE_Nb_De_Danseuses int(10) DEFAULT NULL,
  DE_Chanteur_Supp int(10) DEFAULT NULL,
  DE_Chanteuse_Supp int(10) DEFAULT NULL,
  DE_Nb_Delements int(10) DEFAULT NULL,
  DE_Option_Danseuses_Supp tinyint(4) DEFAULT NULL,
  DE_Option_Cuivre_Supp tinyint(4) DEFAULT NULL,
  DE_Proposition_Formule_Live tinyint(4) DEFAULT NULL,
  DE_Poste_Du_1Er text COLLATE utf8_unicode_ci,
  DE_Poste_Du_2E text COLLATE utf8_unicode_ci,
  DE_Poste_Du_3E text COLLATE utf8_unicode_ci,
  DE_Poste_Du_4E text COLLATE utf8_unicode_ci,
  DE_Poste_Du_5E text COLLATE utf8_unicode_ci,
  DE_Poste_Du_6E text COLLATE utf8_unicode_ci,
  DE_Poste_Du_7E text COLLATE utf8_unicode_ci,
  DE_7E_Declare_En text COLLATE utf8_unicode_ci,
  DE_Poste_Du_8E text COLLATE utf8_unicode_ci,
  DE_Poste_Du_9E text COLLATE utf8_unicode_ci,
  DE_Poste_Du_10E text COLLATE utf8_unicode_ci,
  DE_Poste_Du_11E text COLLATE utf8_unicode_ci,
  DE_Poste_Du_12E text COLLATE utf8_unicode_ci,
  DE_Poste_Du_13E text COLLATE utf8_unicode_ci,
  DE_Poste_Du_14E text COLLATE utf8_unicode_ci,
  DE_Poste_Du_15E text COLLATE utf8_unicode_ci,
  DE_Declaration_A_0_Pour_Le_1Er_Element text COLLATE utf8_unicode_ci,
  DE_Declaration_A_0_Pour_Le_2E_Element text COLLATE utf8_unicode_ci,
  DE_Declaration_A_0_Pour_Le_3E_Element text COLLATE utf8_unicode_ci,
  DE_Declaration_A_0_Pour_Le_4E_Element text COLLATE utf8_unicode_ci,
  DE_Declaration_A_0_Pour_Le_5E_Element text COLLATE utf8_unicode_ci,
  DE_Declaration_A_0_Pour_Le_6E_Element text COLLATE utf8_unicode_ci,
  DE_Declaration_A_0_Pour_Le_7E_Element text COLLATE utf8_unicode_ci,
  DE_Declaration_A_0_Pour_Le_8E_Element text COLLATE utf8_unicode_ci,
  DE_Declaration_A_0_Pour_Le_9E_Element text COLLATE utf8_unicode_ci,
  DE_Declaration_A_0_Pour_Le_10E_Element text COLLATE utf8_unicode_ci,
  DE_Declaration_A_0_Pour_Le_11E_Element text COLLATE utf8_unicode_ci,
  DE_Declaration_A_0_Pour_Le_12E_Element text COLLATE utf8_unicode_ci,
  DE_Declaration_A_0_Pour_Le_13E_Element text COLLATE utf8_unicode_ci,
  DE_Declaration_A_0_Pour_Le_14E_Element text COLLATE utf8_unicode_ci,
  DE_Declaration_A_0_Pour_Le_15E_Element text COLLATE utf8_unicode_ci,
  DE_Declaration_Du_1Er_A_0_Deja_Calculee text COLLATE utf8_unicode_ci,
  DE_Declaration_Du_2E_A_0_Deja_Calculee text COLLATE utf8_unicode_ci,
  DE_Declaration_Du_3E_A_0_Deja_Calculee text COLLATE utf8_unicode_ci,
  DE_Declaration_Du_4E_A_0_Deja_Calculee text COLLATE utf8_unicode_ci,
  DE_Declaration_Du_5E_A_0_Deja_Calculee text COLLATE utf8_unicode_ci,
  DE_Declaration_Du_6E_A_0_Deja_Calculee text COLLATE utf8_unicode_ci,
  DE_Declaration_Du_7E_A_0_Deja_Calculee text COLLATE utf8_unicode_ci,
  DE_Declaration_Du_8E_A_0_Deja_Calculee text COLLATE utf8_unicode_ci,
  DE_Declaration_Du_9E_A_0_Deja_Calculee text COLLATE utf8_unicode_ci,
  DE_Declaration_Du_10E_A_0_Deja_Calculee text COLLATE utf8_unicode_ci,
  DE_Declaration_Du_11E_A_0_Deja_Calculee text COLLATE utf8_unicode_ci,
  DE_Declaration_Du_12E_A_0_Deja_Calculee text COLLATE utf8_unicode_ci,
  DE_Declaration_Du_13E_A_0_Deja_Calculee text COLLATE utf8_unicode_ci,
  DE_Declaration_Du_14E_A_0_Deja_Calculee text COLLATE utf8_unicode_ci,
  DE_Declaration_Du_15E_A_0_Deja_Calculee text COLLATE utf8_unicode_ci,
  DE_Salaire_Net_Du_1Er decimal(10,2) DEFAULT NULL,
  DE_Salaire_Net_Du_2E decimal(10,2) DEFAULT NULL,
  DE_Salaire_Net_Du_3E decimal(10,2) DEFAULT NULL,
  DE_Salaire_Net_Du_4E decimal(10,2) DEFAULT NULL,
  DE_Frais_Professionnels_Du_4E decimal(10,2) DEFAULT NULL,
  DE_Reste_Au_Final_Pat decimal(10,2) DEFAULT NULL,
  DE_Salaire_Net_Du_5E decimal(10,2) DEFAULT NULL,
  DE_Frais_Professionnels_Du_5E decimal(10,2) DEFAULT NULL,
  DE_Reste_Au_Final_Fabrice decimal(10,2) DEFAULT NULL,
  DE_Salaire_Net_Du_6E decimal(10,2) DEFAULT NULL,
  DE_Frais_Professionnels_Du_6E decimal(10,2) DEFAULT NULL,
  DE_Reste_Au_Final_Oliv decimal(10,2) DEFAULT NULL,
  DE_Salaire_Net_Du_7E decimal(10,2) DEFAULT NULL,
  DE_Salaire_Net_Du_8E decimal(10,2) DEFAULT NULL,
  DE_Salaire_Net_Du_9E decimal(10,2) DEFAULT NULL,
  DE_Salaire_Net_Du_10E decimal(10,2) DEFAULT NULL,
  DE_Salaire_Net_Du_11E decimal(10,2) DEFAULT NULL,
  DE_Salaire_Net_Du_12E decimal(10,2) DEFAULT NULL,
  DE_Salaire_Net_Du_13E decimal(10,2) DEFAULT NULL,
  DE_Salaire_Net_Du_14E decimal(10,2) DEFAULT NULL,
  DE_Salaire_Net_Du_15E decimal(10,2) DEFAULT NULL,
  DE_Salaire_Brut_Du_1Er decimal(10,2) DEFAULT NULL,
  DE_Salaire_Brut_Du_2E decimal(10,2) DEFAULT NULL,
  DE_Salaire_Brut_Du_3E decimal(10,2) DEFAULT NULL,
  DE_Salaire_Brut_Du_4E decimal(10,2) DEFAULT NULL,
  DE_Salaire_Brut_Du_5E decimal(10,2) DEFAULT NULL,
  DE_Salaire_Brut_Du_6E decimal(10,2) DEFAULT NULL,
  DE_Salaire_Brut_Du_7E decimal(10,2) DEFAULT NULL,
  DE_Salaire_Brut_Du_8E decimal(10,2) DEFAULT NULL,
  DE_Salaire_Brut_Du_9E decimal(10,2) DEFAULT NULL,
  DE_Salaire_Brut_Du_10E decimal(10,2) DEFAULT NULL,
  DE_Salaire_Brut_Du_11E decimal(10,2) DEFAULT NULL,
  DE_Salaire_Brut_Du_12E decimal(10,2) DEFAULT NULL,
  DE_Salaire_Brut_Du_13E decimal(10,2) DEFAULT NULL,
  DE_Salaire_Brut_Du_14E decimal(10,2) DEFAULT NULL,
  DE_Salaire_Brut_Du_15E decimal(10,2) DEFAULT NULL,
  DE_Budget_Global_Du_1Er decimal(10,2) DEFAULT NULL,
  DE_Budget_Global_Du_2E decimal(10,2) DEFAULT NULL,
  DE_Budget_Global_Du_3E decimal(10,2) DEFAULT NULL,
  DE_Budget_Global_Du_4E decimal(10,2) DEFAULT NULL,
  DE_Budget_Global_Du_5E decimal(10,2) DEFAULT NULL,
  DE_Budget_Global_Du_6E decimal(10,2) DEFAULT NULL,
  DE_Budget_Global_Du_7E decimal(10,2) DEFAULT NULL,
  DE_Budget_Global_Du_8E decimal(10,2) DEFAULT NULL,
  DE_Budget_Global_Du_9E decimal(10,2) DEFAULT NULL,
  DE_Budget_Global_Du_10E decimal(10,2) DEFAULT NULL,
  DE_Budget_Global_Du_11E decimal(10,2) DEFAULT NULL,
  DE_Budget_Global_Du_12E decimal(10,2) DEFAULT NULL,
  DE_Budget_Global_Du_13E decimal(10,2) DEFAULT NULL,
  DE_Budget_Global_Du_14E decimal(10,2) DEFAULT NULL,
  DE_Budget_Global_Du_15E decimal(10,2) DEFAULT NULL,
  DE_Salaire_Net_Cuivre_Supp decimal(10,2) DEFAULT NULL,
  DE_Budget_Global_Cuivre_Supp decimal(10,2) DEFAULT NULL,
  DE_Salaire_Net_Danseuse_Supp decimal(10,2) DEFAULT NULL,
  DE_Budget_Global_Danseuse_Supp decimal(10,2) DEFAULT NULL,
  DE_Kms_Du_Mans_Danseuse_Supp text COLLATE utf8_unicode_ci,
  DE_Kms_Du_Mans_Danseuse_Supp_Ar int(10) DEFAULT NULL,
  DE_Frais_Danseuses_Supp decimal(10,2) DEFAULT NULL,
  DE_Budget_Total_Danseuses_Supp decimal(10,2) DEFAULT NULL,
  DE_Cotisation_Guso_Du_1Er decimal(10,2) DEFAULT NULL,
  DE_Cotisation_Guso_Du_2E decimal(10,2) DEFAULT NULL,
  DE_Cotisation_Guso_Du_3E decimal(10,2) DEFAULT NULL,
  DE_Cotisation_Guso_Du_4E decimal(10,2) DEFAULT NULL,
  DE_Cotisation_Guso_Du_5E decimal(10,2) DEFAULT NULL,
  DE_Cotisation_Guso_Du_6E decimal(10,2) DEFAULT NULL,
  DE_Cotisation_Guso_Du_7E decimal(10,2) DEFAULT NULL,
  DE_Cotisation_Guso_Du_8E decimal(10,2) DEFAULT NULL,
  DE_Cotisation_Guso_Du_9E decimal(10,2) DEFAULT NULL,
  DE_Cotisation_Guso_Du_10E decimal(10,2) DEFAULT NULL,
  DE_Cotisation_Guso_Du_11E decimal(10,2) DEFAULT NULL,
  DE_Cotisation_Guso_Du_12E decimal(10,2) DEFAULT NULL,
  DE_Cotisation_Guso_Du_13E decimal(10,2) DEFAULT NULL,
  DE_Cotisation_Guso_Du_14E decimal(10,2) DEFAULT NULL,
  DE_Cotisation_Guso_Du_15E decimal(10,2) DEFAULT NULL,
  DE_Vignette_Urssaf_Du_1Er text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  DE_Vignette_Urssaf_Du_2E text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  DE_Vignette_Urssaf_Du_3E text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  DE_Vignette_Urssaf_Du_4E text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  DE_Vignette_Urssaf_Du_5E text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  DE_Vignette_Urssaf_Du_6E text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  DE_Vignette_Urssaf_Du_7E text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  DE_Vignette_Urssaf_Du_8E text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  DE_Vignette_Urssaf_Du_9E text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  DE_Vignette_Urssaf_Du_10E text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  DE_Vignette_Urssaf_Du_11E text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  DE_Vignette_Urssaf_Du_12E text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  DE_Vignette_Urssaf_Du_13E text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  DE_Vignette_Urssaf_Du_14E text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  DE_Vignette_Urssaf_Du_15E text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  DE_Etiquette_Lieu_Du_Devis text COLLATE utf8_unicode_ci,
  DE_Etiquetteadresoper text COLLATE utf8_unicode_ci,
  DE_Etiquadreopebasdepag text COLLATE utf8_unicode_ci,
  DE_Etiquetteadresseclient text COLLATE utf8_unicode_ci,
  DE_Etiquetteobjetdudevis text COLLATE utf8_unicode_ci,
  DE_Civilite_Du_Client text COLLATE utf8_unicode_ci,
  DE_Civilitetransformee text COLLATE utf8_unicode_ci,
  DE_Voicilacomposition text COLLATE utf8_unicode_ci,
  DE_Compositioncomplete text COLLATE utf8_unicode_ci,
  DE_Repertoiretousstyles text COLLATE utf8_unicode_ci,
  DE_Findedevis text COLLATE utf8_unicode_ci,
  DE_Indemnite_Conges_Spectacles text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table detail_devis_2
--
-- Création :  Sam 24 Juin 2017 à 16:24
--

CREATE TABLE detail_devis_2 (
  D2_Iddetaildevis2 int(10) UNSIGNED NOT NULL,
  D2_Iddevis int(10) DEFAULT NULL,
  D2_Option_Frais_Bruno text COLLATE utf8_unicode_ci,
  D2_Kms_De_Poitiers int(10) DEFAULT NULL,
  D2_Deplacements_De_Bruno decimal(10,2) DEFAULT NULL,
  D2_Option_Frais_Oliv text COLLATE utf8_unicode_ci,
  D2_Kms_Du_Tallud int(10) DEFAULT NULL,
  D2_Deplacements_Doliv decimal(10,2) DEFAULT NULL,
  D2_Frais_Supplementaires_Sans_Charges decimal(10,2) DEFAULT NULL,
  D2_Titulaire_De_La_Licence_Dentrepreneur_De_Spectacles text COLLATE utf8_unicode_ci,
  D2_A_Rajouter_Au_Devis decimal(10,2) DEFAULT NULL,
  D2_Devis_Final_Apres_Part_A_Rajouter decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table devis
--
-- Création :  Sam 24 Juin 2017 à 16:25
--

CREATE TABLE devis (
  DV_Iddevis int(10) UNSIGNED NOT NULL,
  DV_Createur text COLLATE utf8_unicode_ci,
  DV_Date_De_Creation date DEFAULT NULL,
  DV_Modificateur text COLLATE utf8_unicode_ci,
  DV_Date_De_Modification date DEFAULT NULL,
  DV_Idclient int(10) UNSIGNED DEFAULT NULL,
  DV_Idcontactclient int(10) UNSIGNED DEFAULT NULL,
  DV_Sortir_Des_Elements_De_Recherche text COLLATE utf8_unicode_ci,
  DV_Transforme_En_Contrat text COLLATE utf8_unicode_ci,
  DV_Datedudevis date DEFAULT NULL,
  DV_Datedelaprestation text COLLATE utf8_unicode_ci,
  DV_Date_Ferme_De_La_Prestation date DEFAULT NULL,
  DV_Travail_Sur_La_Date_De_Prestation int(8) DEFAULT NULL,
  DV_Reveillon text COLLATE utf8_unicode_ci,
  DV_Lieudelaprestation text COLLATE utf8_unicode_ci,
  DV_Introduction_Du_Devis text COLLATE utf8_unicode_ci,
  DV_Montantdessalaires decimal(10,2) DEFAULT NULL,
  DV_Montantdescotisations decimal(10,2) DEFAULT NULL,
  DV_Montantdesfrais decimal(10,2) DEFAULT NULL,
  DV_Prixtotal decimal(10,2) DEFAULT NULL,
  DV_Statut_Du_Devis text COLLATE utf8_unicode_ci,
  DV_Statut_Du_Devis_Avant_Modification text COLLATE utf8_unicode_ci,
  DV_Nom_Du_Fichier text COLLATE utf8_unicode_ci,
  DV_Ajoute_A_Google_Agenda text COLLATE utf8_unicode_ci,
  DV_Id_Google_Agenda int(10) UNSIGNED DEFAULT NULL,
  DV_Protection_De_La_Fiche tinyint(4) DEFAULT NULL,
  DV_Notes_Sur_Le_Devis text COLLATE utf8_unicode_ci,
  DV_Calcul_En_Cours_Oliv text COLLATE utf8_unicode_ci,
  DV_Calcul_En_Cours_Pat text COLLATE utf8_unicode_ci,
  DV_Calcul_En_Cours_Fabrice text COLLATE utf8_unicode_ci,
  DV_Devis_Envoye_Par_Courrier date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table dpae_imprime
--
-- Création :  Sam 24 Juin 2017 à 16:29
--

CREATE TABLE dpae_imprime (
  DI_Id_Dpae int(10) UNSIGNED NOT NULL,
  DI_Id_Contrat int(10) UNSIGNED DEFAULT NULL,
  DI_Numero_Du_Salarie int(10) UNSIGNED DEFAULT NULL,
  DI_Numero_Ss_Chiffre_1 text COLLATE utf8_unicode_ci,
  DI_Numero_Ss_Chiffre_2 text COLLATE utf8_unicode_ci,
  DI_Numero_Ss_Chiffre_3 text COLLATE utf8_unicode_ci,
  DI_Numero_Ss_Chiffre_4 text COLLATE utf8_unicode_ci,
  DI_Numero_Ss_Chiffre_5 text COLLATE utf8_unicode_ci,
  DI_Numero_Ss_Chiffre_6 text COLLATE utf8_unicode_ci,
  DI_Numero_Ss_Chiffre_7 text COLLATE utf8_unicode_ci,
  DI_Numero_Ss_Chiffre_8 text COLLATE utf8_unicode_ci,
  DI_Numero_Ss_Chiffre_9 text COLLATE utf8_unicode_ci,
  DI_Numero_Ss_Chiffre_10 text COLLATE utf8_unicode_ci,
  DI_Numero_Ss_Chiffre_11 text COLLATE utf8_unicode_ci,
  DI_Numero_Ss_Chiffre_12 text COLLATE utf8_unicode_ci,
  DI_Numero_Ss_Chiffre_13 text COLLATE utf8_unicode_ci,
  DI_Nom_Du_Salarie text COLLATE utf8_unicode_ci,
  DI_Prenom_Du_Salarie text COLLATE utf8_unicode_ci,
  DI_Date_De_Naissance text COLLATE utf8_unicode_ci,
  DI_Lieu_De_Naissance text COLLATE utf8_unicode_ci,
  DI_Nationalite text COLLATE utf8_unicode_ci,
  DI_Sexe text COLLATE utf8_unicode_ci,
  DI_Adresse text COLLATE utf8_unicode_ci,
  DI_Code_Postal text COLLATE utf8_unicode_ci,
  DI_Ville text COLLATE utf8_unicode_ci,
  DI_Jour_Dembauche text COLLATE utf8_unicode_ci,
  DI_Mois_Dembauche text COLLATE utf8_unicode_ci,
  DI_Annee_Dembauche text COLLATE utf8_unicode_ci,
  DI_Heure_Dembauche text COLLATE utf8_unicode_ci,
  DI_Minute_Dembauche text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table essai
--
-- Création :  Sam 24 Juin 2017 à 14:31
--

CREATE TABLE essai (
  ES_Id int(10) UNSIGNED NOT NULL,
  ES_Champ1 text COLLATE utf8_unicode_ci,
  ES_Champ2 text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table feuilles_de_mandat
--
-- Création :  Mer 28 Juin 2017 à 16:10
--

CREATE TABLE feuilles_de_mandat (
  FSM_Idfeuilledemandat int(10) NOT NULL,
  FSM_Id_Contrat int(10) NOT NULL,
  FSM_Mandataire_FeuilleM text COLLATE utf8_unicode_ci,
  FSM_Employeur_FeuilleM text COLLATE utf8_unicode_ci,
  FSM_1Er_Element_FeuilleM text COLLATE utf8_unicode_ci,
  FSM_2E_Element_FeuilleM text COLLATE utf8_unicode_ci,
  FSM_3E_Element_FeuilleM text COLLATE utf8_unicode_ci,
  FSM_4E_Element_FeuilleM text COLLATE utf8_unicode_ci,
  FSM_5E_Element_FeuilleM text COLLATE utf8_unicode_ci,
  FSM_6E_Element_FeuilleM text COLLATE utf8_unicode_ci,
  FSM_7E_Element_FeuilleM text COLLATE utf8_unicode_ci,
  FSM_8E_Element_FeuilleM text COLLATE utf8_unicode_ci,
  FSM_9E_Element_FeuilleM text COLLATE utf8_unicode_ci,
  FSM_10E_Element_FeuilleM text COLLATE utf8_unicode_ci,
  FSM_11E_Element_FeuilleM text COLLATE utf8_unicode_ci,
  FSM_12E_Element_FeuilleM text COLLATE utf8_unicode_ci,
  FSM_13E_Element_FeuilleM text COLLATE utf8_unicode_ci,
  FSM_14E_Element_FeuilleM text COLLATE utf8_unicode_ci,
  FSM_15E_Element_FeuilleM text COLLATE utf8_unicode_ci,
  FSM_Chef_1Er_Mandat text COLLATE utf8_unicode_ci,
  FSM_Emploi_Du_1Er_Chef_Mandat text COLLATE utf8_unicode_ci,
  FSM_Salaire_Brut_Du_1Er_Chef_Mandat decimal(10,2) DEFAULT NULL,
  FSM_Chef_2E_Mandat text COLLATE utf8_unicode_ci,
  FSM_Emploi_Du_2E_Chef_Mandat text COLLATE utf8_unicode_ci,
  FSM_Salaire_Brut_Du_2E_Chef_Mandat decimal(10,2) DEFAULT NULL,
  FSM_1Er_Element_Final_FeuilleM text COLLATE utf8_unicode_ci,
  FSM_2E_Element_Final_FeuilleM text COLLATE utf8_unicode_ci,
  FSM_3E_Element_Final_FeuilleM text COLLATE utf8_unicode_ci,
  FSM_4E_Element_Final_FeuilleM text COLLATE utf8_unicode_ci,
  FSM_5E_Element_Final_FeuilleM text COLLATE utf8_unicode_ci,
  FSM_6E_Element_Final_FeuilleM text COLLATE utf8_unicode_ci,
  FSM_7E_Element_Final_FeuilleM text COLLATE utf8_unicode_ci,
  FSM_8E_Element_Final_FeuilleM text COLLATE utf8_unicode_ci,
  FSM_9E_Element_Final_FeuilleM text COLLATE utf8_unicode_ci,
  FSM_10E_Element_Final_FeuilleM text COLLATE utf8_unicode_ci,
  FSM_11E_Element_Final_FeuilleM text COLLATE utf8_unicode_ci,
  FSM_12E_Element_Final_FeuilleM text COLLATE utf8_unicode_ci,
  FSM_13E_Element_Final_FeuilleM text COLLATE utf8_unicode_ci,
  FSM_14E_Element_Final_FeuilleM text COLLATE utf8_unicode_ci,
  FSM_15E_Element_Final_FeuilleM text COLLATE utf8_unicode_ci,
  FSM_Emploi_Du_1Er_Element_Final_FeuilleM text COLLATE utf8_unicode_ci,
  FSM_Emploi_Du_2E_Element_Final_FeuilleM text COLLATE utf8_unicode_ci,
  FSM_Emploi_Du_3E_Element_Final_FeuilleM text COLLATE utf8_unicode_ci,
  FSM_Emploi_Du_4E_Element_Final_FeuilleM text COLLATE utf8_unicode_ci,
  FSM_Emploi_Du_5E_Element_Final_FeuilleM text COLLATE utf8_unicode_ci,
  FSM_Emploi_Du_6E_Element_Final_FeuilleM text COLLATE utf8_unicode_ci,
  FSM_Emploi_Du_7E_Element_Final_FeuilleM text COLLATE utf8_unicode_ci,
  FSM_Emploi_Du_8E_Element_Final_FeuilleM text COLLATE utf8_unicode_ci,
  FSM_Emploi_Du_9E_Element_Final_FeuilleM text COLLATE utf8_unicode_ci,
  FSM_Emploi_Du_10E_Element_Final_FeuilleM text COLLATE utf8_unicode_ci,
  FSM_Emploi_Du_11E_Element_Final_FeuilleM text COLLATE utf8_unicode_ci,
  FSM_Emploi_Du_12E_Element_Final_FeuilleM text COLLATE utf8_unicode_ci,
  FSM_Emploi_Du_13E_Element_Final_FeuilleM text COLLATE utf8_unicode_ci,
  FSM_Emploi_Du_14E_Element_Final_FeuilleM text COLLATE utf8_unicode_ci,
  FSM_Emploi_Du_15E_Element_Final_FeuilleM text COLLATE utf8_unicode_ci,
  FSM_Salaire_Brut_Du_1Er_Final_FeuilleM decimal(10,0) DEFAULT NULL,
  FSM_Salaire_Brut_Du_2E_Final_FeuilleM decimal(10,0) DEFAULT NULL,
  FSM_Salaire_Brut_Du_3E_Final_FeuilleM decimal(10,0) DEFAULT NULL,
  FSM_Salaire_Brut_Du_4E_Final_FeuilleM decimal(10,0) DEFAULT NULL,
  FSM_Salaire_Brut_Du_5E_Final_FeuilleM decimal(10,0) DEFAULT NULL,
  FSM_Salaire_Brut_Du_6E_Final_FeuilleM decimal(10,0) DEFAULT NULL,
  FSM_Salaire_Brut_Du_7E_Final_FeuilleM decimal(10,2) DEFAULT NULL,
  FSM_Salaire_Brut_Du_8E_Final_FeuilleM decimal(10,2) DEFAULT NULL,
  FSM_Salaire_Brut_Du_9E_Final_FeuilleM decimal(10,2) DEFAULT NULL,
  FSM_Salaire_Brut_Du_10E_Final_FeuilleM decimal(10,2) DEFAULT NULL,
  FSM_Salaire_Brut_Du_11E_Final_FeuilleM decimal(10,2) DEFAULT NULL,
  FSM_Salaire_Brut_Du_12E_Final_FeuilleM decimal(10,2) DEFAULT NULL,
  FSM_Salaire_Brut_Du_13E_Final_FeuilleM decimal(10,2) DEFAULT NULL,
  FSM_Salaire_Brut_Du_14E_Final_FeuilleM decimal(10,2) DEFAULT NULL,
  FSM_Salaire_Brut_Du_15E_Final_FeuilleM decimal(10,2) DEFAULT NULL,
  FSM_Nom_De_Fichier_Pdf_FeuilleM text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table feuilles_de_presence
--
-- Création :  Sam 24 Juin 2017 à 16:33
--

CREATE TABLE feuilles_de_presence (
  FP_Idfeuilledepresence int(10) UNSIGNED NOT NULL,
  FP_Id_Contrat int(10) UNSIGNED NOT NULL,
  FP_Raison_Sociale text COLLATE utf8_unicode_ci,
  FP_Nom_Employeur text COLLATE utf8_unicode_ci,
  FP_Prenom_Employeur text COLLATE utf8_unicode_ci,
  FP_Date_De_Representation date DEFAULT NULL,
  FP_Mandataire_Feuille_De_Presence text COLLATE utf8_unicode_ci,
  FP_1Er_Element_Feuille_De_Presence text COLLATE utf8_unicode_ci,
  FP_2E_Element_Feuille_De_Presence text COLLATE utf8_unicode_ci,
  FP_3E_Element_Feuille_De_Presence text COLLATE utf8_unicode_ci,
  FP_4E_Element_Feuille_De_Presence text COLLATE utf8_unicode_ci,
  FP_5E_Element_Feuille_De_Presence text COLLATE utf8_unicode_ci,
  FP_6E_Element_Feuille_De_Presence text COLLATE utf8_unicode_ci,
  FP_7E_Element_Feuille_De_Presence text COLLATE utf8_unicode_ci,
  FP_8E_Element_Feuille_De_Presence text COLLATE utf8_unicode_ci,
  FP_9E_Element_Feuille_De_Presence text COLLATE utf8_unicode_ci,
  FP_10E_Element_Feuille_De_Presence text COLLATE utf8_unicode_ci,
  FP_11E_Element_Feuille_De_Presence text COLLATE utf8_unicode_ci,
  FP_12E_Element_Feuille_De_Presence text COLLATE utf8_unicode_ci,
  FP_13E_Element_Feuille_De_Presence text COLLATE utf8_unicode_ci,
  FP_14E_Element_Feuille_De_Presence text COLLATE utf8_unicode_ci,
  FP_15E_Element_Feuille_De_Presence text COLLATE utf8_unicode_ci,
  FP_1Er_Element_Final_Feuille_De_Presence text COLLATE utf8_unicode_ci,
  FP_2E_Element_Final_Feuille_De_Presence text COLLATE utf8_unicode_ci,
  FP_3E_Element_Final_Feuille_De_Presence text COLLATE utf8_unicode_ci,
  FP_4E_Element_Final_Feuille_De_Presence text COLLATE utf8_unicode_ci,
  FP_5E_Element_Final_Feuille_De_Presence text COLLATE utf8_unicode_ci,
  FP_6E_Element_Final_Feuille_De_Presence text COLLATE utf8_unicode_ci,
  FP_7E_Element_Final_Feuille_De_Presence text COLLATE utf8_unicode_ci,
  FP_8E_Element_Final_Feuille_De_Presence text COLLATE utf8_unicode_ci,
  FP_9E_Element_Final_Feuille_De_Presence text COLLATE utf8_unicode_ci,
  FP_10E_Element_Final_Feuille_De_Presence text COLLATE utf8_unicode_ci,
  FP_11E_Element_Final_Feuille_De_Presence text COLLATE utf8_unicode_ci,
  FP_12E_Element_Final_Feuille_De_Presence text COLLATE utf8_unicode_ci,
  FP_13E_Element_Final_Feuille_De_Presence text COLLATE utf8_unicode_ci,
  FP_14E_Element_Final_Feuille_De_Presence text COLLATE utf8_unicode_ci,
  FP_15E_Element_Final_Feuille_De_Presence text COLLATE utf8_unicode_ci,
  FP_Emploi_Du_1Er_Element_Final_Feuille_De_Presence text COLLATE utf8_unicode_ci,
  FP_Emploi_Du_2E_Element_Final_Feuille_De_Presence text COLLATE utf8_unicode_ci,
  FP_Emploi_Du_3E_Element_Final_Feuille_De_Presence text COLLATE utf8_unicode_ci,
  FP_Emploi_Du_4E_Element_Final_Feuille_De_Presence text COLLATE utf8_unicode_ci,
  FP_Emploi_Du_5E_Element_Final_Feuille_De_Presence text COLLATE utf8_unicode_ci,
  FP_Emploi_Du_6E_Element_Final_Feuille_De_Presence text COLLATE utf8_unicode_ci,
  FP_Emploi_Du_7E_Element_Final_Feuille_De_Presence text COLLATE utf8_unicode_ci,
  FP_Emploi_Du_8E_Element_Final_Feuille_De_Presence text COLLATE utf8_unicode_ci,
  FP_Emploi_Du_9E_Element_Final_Feuille_De_Presence text COLLATE utf8_unicode_ci,
  FP_Emploi_Du_10E_Element_Final_Feuille_De_Presence text COLLATE utf8_unicode_ci,
  FP_Emploi_Du_11E_Element_Final_Feuille_De_Presence text COLLATE utf8_unicode_ci,
  FP_Emploi_Du_12E_Element_Final_Feuille_De_Presence text COLLATE utf8_unicode_ci,
  FP_Emploi_Du_13E_Element_Final_Feuille_De_Presence text COLLATE utf8_unicode_ci,
  FP_Emploi_Du_14E_Element_Final_Feuille_De_Presence text COLLATE utf8_unicode_ci,
  FP_Emploi_Du_15E_Element_Final_Feuille_De_Presence text COLLATE utf8_unicode_ci,
  FP_Salaire_Brut_Du_1Er_Final_Feuille_De_Presence decimal(10,2) DEFAULT NULL,
  FP_Salaire_Brut_Du_2E_Final_Feuille_De_Presence decimal(10,2) DEFAULT NULL,
  FP_Salaire_Brut_Du_3E_Final_Feuille_De_Presence decimal(10,2) DEFAULT NULL,
  FP_Salaire_Brut_Du_4E_Final_Feuille_De_Presence decimal(10,2) DEFAULT NULL,
  FP_Salaire_Brut_Du_5E_Final_Feuille_De_Presence decimal(10,2) DEFAULT NULL,
  FP_Salaire_Brut_Du_6E_Final_Feuille_De_Presence decimal(10,2) DEFAULT NULL,
  FP_Salaire_Brut_Du_7E_Final_Feuille_De_Presence decimal(10,2) DEFAULT NULL,
  FP_Salaire_Brut_Du_8E_Final_Feuille_De_Presence decimal(10,2) DEFAULT NULL,
  FP_Salaire_Brut_Du_9E_Final_Feuille_De_Presence decimal(10,2) DEFAULT NULL,
  FP_Salaire_Brut_Du_10E_Final_Feuille_De_Presence decimal(10,2) DEFAULT NULL,
  FP_Salaire_Brut_Du_11E_Final_Feuille_De_Presence decimal(10,2) DEFAULT NULL,
  FP_Salaire_Brut_Du_12E_Final_Feuille_De_Presence decimal(10,2) DEFAULT NULL,
  FP_Salaire_Brut_Du_13E_Final_Feuille_De_Presence decimal(10,2) DEFAULT NULL,
  FP_Salaire_Brut_Du_14E_Final_Feuille_De_Presence decimal(10,2) DEFAULT NULL,
  FP_Salaire_Brut_Du_15E_Final_Feuille_De_Presence decimal(10,2) DEFAULT NULL,
  FP_Nom_De_Fichier_Pdf_Feuille_De_Presence text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table feuille_de_mandat
--
-- Création :  Sam 24 Juin 2017 à 16:35
--

CREATE TABLE feuille_de_mandat (
  FM_Id_Feuille_De_Mandat int(10) UNSIGNED NOT NULL,
  FM_Id_Contrat int(10) UNSIGNED NOT NULL,
  FM_Mandataire_Feuille_De_Mandat text COLLATE utf8_unicode_ci,
  FM_Employeur_Feuille_De_Mandat text COLLATE utf8_unicode_ci,
  FM_1Er_Element_Feuille_De_Mandat text COLLATE utf8_unicode_ci,
  FM_2E_Element_Feuille_De_Mandat text COLLATE utf8_unicode_ci,
  FM_3E_Element_Feuille_De_Mandat text COLLATE utf8_unicode_ci,
  FM_4E_Element_Feuille_De_Mandat text COLLATE utf8_unicode_ci,
  FM_5E_Element_Feuille_De_Mandat text COLLATE utf8_unicode_ci,
  FM_6E_Element_Feuille_De_Mandat text COLLATE utf8_unicode_ci,
  FM_7E_Element_Feuille_De_Mandat text COLLATE utf8_unicode_ci,
  FM_8E_Element_Feuille_De_Mandat text COLLATE utf8_unicode_ci,
  FM_9E_Element_Feuille_De_Mandat text COLLATE utf8_unicode_ci,
  FM_10E_Element_Feuille_De_Mandat text COLLATE utf8_unicode_ci,
  FM_11E_Element_Feuille_De_Mandat text COLLATE utf8_unicode_ci,
  FM_12E_Element_Feuille_De_Mandat text COLLATE utf8_unicode_ci,
  FM_13E_Element_Feuille_De_Mandat text COLLATE utf8_unicode_ci,
  FM_14E_Element_Feuille_De_Mandat text COLLATE utf8_unicode_ci,
  FM_15E_Element_Feuille_De_Mandat text COLLATE utf8_unicode_ci,
  FM_Chef_1Er_Mandat text COLLATE utf8_unicode_ci,
  FM_Emploi_Du_1Er_Chef_Mandat text COLLATE utf8_unicode_ci,
  FM_Salaire_Brut_Du_1Er_Chef_Mandat decimal(10,2) DEFAULT NULL,
  FM_Chef_2E_Mandat text COLLATE utf8_unicode_ci,
  FM_Emploi_Du_2E_Chef_Mandat text COLLATE utf8_unicode_ci,
  FM_Salaire_Brut_Du_2E_Chef_Mandat decimal(10,2) DEFAULT NULL,
  FM_1Er_Element_Final_Feuille_De_Mandat text COLLATE utf8_unicode_ci,
  FM_2E_Element_Final_Feuille_De_Mandat text COLLATE utf8_unicode_ci,
  FM_3E_Element_Final_Feuille_De_Mandat text COLLATE utf8_unicode_ci,
  FM_4E_Element_Final_Feuille_De_Mandat text COLLATE utf8_unicode_ci,
  FM_5E_Element_Final_Feuille_De_Mandat text COLLATE utf8_unicode_ci,
  FM_6E_Element_Final_Feuille_De_Mandat text COLLATE utf8_unicode_ci,
  FM_7E_Element_Final_Feuille_De_Mandat text COLLATE utf8_unicode_ci,
  FM_8E_Element_Final_Feuille_De_Mandat text COLLATE utf8_unicode_ci,
  FM_9E_Element_Final_Feuille_De_Mandat text COLLATE utf8_unicode_ci,
  FM_10E_Element_Final_Feuille_De_Mandat text COLLATE utf8_unicode_ci,
  FM_11E_Element_Final_Feuille_De_Mandat text COLLATE utf8_unicode_ci,
  FM_12E_Element_Final_Feuille_De_Mandat text COLLATE utf8_unicode_ci,
  FM_13E_Element_Final_Feuille_De_Mandat text COLLATE utf8_unicode_ci,
  FM_14E_Element_Final_Feuille_De_Mandat text COLLATE utf8_unicode_ci,
  FM_15E_Element_Final_Feuille_De_Mandat text COLLATE utf8_unicode_ci,
  FM_Emploi_Du_1Er_Element_Final_Feuille_De_Mandat text COLLATE utf8_unicode_ci,
  FM_Emploi_Du_2E_Element_Final_Feuille_De_Mandat text COLLATE utf8_unicode_ci,
  FM_Emploi_Du_3E_Element_Final_Feuille_De_Mandat text COLLATE utf8_unicode_ci,
  FM_Emploi_Du_4E_Element_Final_Feuille_De_Mandat text COLLATE utf8_unicode_ci,
  FM_Emploi_Du_5E_Element_Final_Feuille_De_Mandat text COLLATE utf8_unicode_ci,
  FM_Emploi_Du_6E_Element_Final_Feuille_De_Mandat text COLLATE utf8_unicode_ci,
  FM_Emploi_Du_7E_Element_Final_Feuille_De_Mandat text COLLATE utf8_unicode_ci,
  FM_Emploi_Du_8E_Element_Final_Feuille_De_Mandat text COLLATE utf8_unicode_ci,
  FM_Emploi_Du_9E_Element_Final_Feuille_De_Mandat text COLLATE utf8_unicode_ci,
  FM_Emploi_Du_10E_Element_Final_Feuille_De_Mandat text COLLATE utf8_unicode_ci,
  FM_Emploi_Du_11E_Element_Final_Feuille_De_Mandat text COLLATE utf8_unicode_ci,
  FM_Emploi_Du_12E_Element_Final_Feuille_De_Mandat text COLLATE utf8_unicode_ci,
  FM_Emploi_Du_13E_Element_Final_Feuille_De_Mandat text COLLATE utf8_unicode_ci,
  FM_Emploi_Du_14E_Element_Final_Feuille_De_Mandat text COLLATE utf8_unicode_ci,
  FM_Emploi_Du_15E_Element_Final_Feuille_De_Mandat text COLLATE utf8_unicode_ci,
  FM_Salaire_Brut_Du_1Er_Final_Feuille_De_Mandat decimal(10,2) DEFAULT NULL,
  FM_Salaire_Brut_Du_2E_Final_Feuille_De_Mandat decimal(10,2) DEFAULT NULL,
  FM_Salaire_Brut_Du_3E_Final_Feuille_De_Mandat decimal(10,2) DEFAULT NULL,
  FM_Salaire_Brut_Du_4E_Final_Feuille_De_Mandat decimal(10,2) DEFAULT NULL,
  FM_Salaire_Brut_Du_5E_Final_Feuille_De_Mandat decimal(10,2) DEFAULT NULL,
  FM_Salaire_Brut_Du_6E_Final_Feuille_De_Mandat decimal(10,2) DEFAULT NULL,
  FM_Salaire_Brut_Du_7E_Final_Feuille_De_Mandat decimal(10,2) DEFAULT NULL,
  FM_Salaire_Brut_Du_8E_Final_Feuille_De_Mandat decimal(10,2) DEFAULT NULL,
  FM_Salaire_Brut_Du_9E_Final_Feuille_De_Mandat decimal(10,2) DEFAULT NULL,
  FM_Salaire_Brut_Du_10E_Final_Feuille_De_Mandat decimal(10,2) DEFAULT NULL,
  FM_Salaire_Brut_Du_11E_Final_Feuille_De_Mandat decimal(10,2) DEFAULT NULL,
  FM_Salaire_Brut_Du_12E_Final_Feuille_De_Mandat decimal(10,2) DEFAULT NULL,
  FM_Salaire_Brut_Du_13E_Final_Feuille_De_Mandat decimal(10,2) DEFAULT NULL,
  FM_Salaire_Brut_Du_14E_Final_Feuille_De_Mandat decimal(10,2) DEFAULT NULL,
  FM_Salaire_Brut_Du_15E_Final_Feuille_De_Mandat decimal(10,2) DEFAULT NULL,
  FM_Nom_De_Fichier_Pdf_Feuille_De_Mandat text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table guso
--
-- Création :  Sam 24 Juin 2017 à 16:37
--

CREATE TABLE guso (
  GU_Id_Guso int(10) UNSIGNED NOT NULL,
  GU_Total_Part_Salariale_Vignette_Urssaf decimal(10,3) DEFAULT NULL,
  GU_Total_Part_Patronale_Vignette_Urssaf decimal(10,3) DEFAULT NULL,
  GU_Date_De_Creation date DEFAULT NULL,
  GU_Createur text COLLATE utf8_unicode_ci,
  GU_Date_De_Modification date NOT NULL,
  GU_Modificateur text COLLATE utf8_unicode_ci,
  GU_Statut_Juridique text COLLATE utf8_unicode_ci,
  GU_Type_Salarie text COLLATE utf8_unicode_ci,
  GU_Salaire_Net_Simulation decimal(10,2) DEFAULT NULL,
  GU_Taux_Net_Brut_Sans_Forfait_Urssaf decimal(10,9) DEFAULT NULL,
  GU_Salaire_Brut_Sans_Forfait_Urssaf decimal(10,2) DEFAULT NULL,
  GU_Salaire_Brut decimal(10,3) DEFAULT NULL,
  GU_Salaire_Brut_Et_Indemnisation_Conges decimal(10,2) DEFAULT NULL,
  GU_Abattement decimal(10,2) DEFAULT NULL,
  GU_Salaire_Brut_Abattu decimal(10,3) DEFAULT NULL,
  GU_Assiette_Plafonnee decimal(10,2) DEFAULT NULL,
  GU_Assiette_100Pour100 decimal(10,2) DEFAULT NULL,
  GU_Assiette_Brut_Abattu decimal(10,2) DEFAULT NULL,
  GU_Tx_Assiette_Csg_Et_Crds decimal(10,5) DEFAULT NULL,
  GU_Assiette_Csg_Et_Crds decimal(10,2) DEFAULT NULL,
  GU_Tva decimal(10,4) DEFAULT NULL,
  GU_Assiette_Tva decimal(10,2) DEFAULT NULL,
  GU_Date_De_Simulation_Debut date DEFAULT NULL,
  GU_Date_De_Simulation_Fin date DEFAULT NULL,
  GU_Tx_Urssaf_Salariale_Maladie decimal(10,5) DEFAULT NULL,
  GU_Retenue_Urssaf_Salariale_Maladie decimal(10,2) DEFAULT NULL,
  GU_Tx_Urssaf_Salariale_Vieillesse_Plafonnee decimal(10,5) DEFAULT NULL,
  GU_Retenue_Urssaf_Salariale_Vieillesse_Plafonnee decimal(10,2) DEFAULT NULL,
  GU_Tx_Urssaf_Salariale_Vieillesse_Deplafonnee decimal(10,5) DEFAULT NULL,
  GU_Retenue_Urssaf_Salariale_Vieillesse_Deplafonnee decimal(10,2) DEFAULT NULL,
  GU_Tx_Urssaf_Salariale_Csg_Deductible decimal(10,5) DEFAULT NULL,
  GU_Retenue_Urssaf_Salariale_Csg_Deductible decimal(10,2) DEFAULT NULL,
  GU_Tx_Urssaf_Salariale_Csg_Non_Deductible decimal(10,5) DEFAULT NULL,
  GU_Retenue_Urssaf_Salariale_Csg_Non_Deductible decimal(10,2) DEFAULT NULL,
  GU_Tx_Urssaf_Salariale_Crds decimal(10,5) DEFAULT NULL,
  GU_Retenue_Urssaf_Salariale_Crds decimal(10,2) DEFAULT NULL,
  GU_Total_Urssaf_Salariale decimal(10,7) DEFAULT NULL,
  GU_Total_Urssaf_Salariale_Plafonnee decimal(10,8) DEFAULT NULL,
  GU_Total_Urssaf_Patronale_Plafonnee decimal(10,7) DEFAULT NULL,
  GU_Taux_Net_Brut_Avec_Part_Plafonnee decimal(10,9) DEFAULT NULL,
  GU_Salaire_Brut_Avec_Part_Plafonnee decimal(10,2) DEFAULT NULL,
  GU_Part_Salariale_Sans_La_Part_Plafonnee decimal(10,9) DEFAULT NULL,
  GU_Part_Patronale_Sans_La_Part_Plafonnee decimal(10,7) DEFAULT NULL,
  GU_Tx_Urssaf_Patronale_Maladie decimal(10,5) DEFAULT NULL,
  GU_Cotisation_Urssaf_Patronale_Maladie decimal(10,2) DEFAULT NULL,
  GU_Tx_Urssaf_Patronale_Vieillesse_Plafonnee decimal(10,5) DEFAULT NULL,
  GU_Cotisation_Urssaf_Patronale_Vieillesse_Plafonnee decimal(10,2) DEFAULT NULL,
  GU_Tx_Urssaf_Patronale_Vieillesse_Deplafonnee decimal(10,5) DEFAULT NULL,
  GU_Cotisation_Urssaf_Patronale_Vieillesse_Deplafonnee decimal(10,2) DEFAULT NULL,
  GU_Tx_Urssaf_Patronale_Accident_Du_Travail decimal(10,5) DEFAULT NULL,
  GU_Cotisation_Urssaf_Patronale_Accident_Du_Travail decimal(10,2) DEFAULT NULL,
  GU_Tx_Urssaf_Patronale_Allocation_Familiale decimal(10,5) DEFAULT NULL,
  GU_Cotisation_Urssaf_Patronale_Allocation_Familiale decimal(10,2) DEFAULT NULL,
  GU_Tx_Urssaf_Patronale_Aide_Au_Logement decimal(10,5) DEFAULT NULL,
  GU_Cotisation_Urssaf_Patronale_Aide_Au_Logement decimal(10,2) DEFAULT NULL,
  GU_Total_Urssaf_Patronale decimal(10,5) DEFAULT NULL,
  GU_Total_Urssaf decimal(10,3) DEFAULT NULL,
  GU_Vignette_Urssaf_Salariale decimal(10,2) DEFAULT NULL,
  GU_Vignette_Urssaf_Patronale decimal(10,2) DEFAULT NULL,
  GU_Plafond_Ss decimal(10,2) DEFAULT NULL,
  GU_Plafond_Mensuel_Ss decimal(10,2) DEFAULT NULL,
  GU_Plafond_Ss_Journalier decimal(10,2) DEFAULT NULL,
  GU_Plafond_Ss_Horaire decimal(10,2) DEFAULT NULL,
  GU_Tx_Assurance_Chomage_Salariale_Rac_Ta decimal(10,5) DEFAULT NULL,
  GU_Retenue_Assurance_Chomage_Salarial_Rac_Ta decimal(10,2) DEFAULT NULL,
  GU_Total_Assurance_Chomage_Salariale decimal(10,5) DEFAULT NULL,
  GU_Tx_Assurance_Chomage_Patronale_Rac_Ta decimal(10,5) DEFAULT NULL,
  GU_Cotisation_Assurance_Chomage_Patronale_Rac_Ta decimal(10,2) DEFAULT NULL,
  GU_Tx_Assurance_Chomage_Patronale_Rac_Ta_Maj_Cddu decimal(10,5) DEFAULT NULL,
  GU_Cotisation_Assurance_Chomage_Patronale_Rac_Ta_Maj_Cddu decimal(10,2) DEFAULT NULL,
  GU_Tx_Assurance_Chomage_Patronale_Ags decimal(10,5) DEFAULT NULL,
  GU_Cotisation_Assurance_Chomage_Patronale_Ags decimal(10,2) DEFAULT NULL,
  GU_Total_Assurance_Chomage_Patronale decimal(10,5) DEFAULT NULL,
  GU_Tranche_A_Journaliere_Audiens decimal(10,2) DEFAULT NULL,
  GU_Tx_Audiens_Salariale_Arrco decimal(10,5) DEFAULT NULL,
  GU_Tx_Audiens_Salariale_T2_Arrco decimal(10,5) DEFAULT NULL,
  GU_Retenue_Audiens_Salariale_Arrco decimal(10,2) DEFAULT NULL,
  GU_Tx_Audiens_Salariale_Agff decimal(10,5) DEFAULT NULL,
  GU_Tx_Audiens_Salariale_T2_Agff decimal(10,5) DEFAULT NULL,
  GU_Retenue_Audiens_Salariale_Agff decimal(10,2) DEFAULT NULL,
  GU_Total_Audiens_Salariale decimal(10,5) DEFAULT NULL,
  GU_Tx_Audiens_Patronale_Arrco decimal(10,5) DEFAULT NULL,
  GU_Tx_Audiens_Patronale_T2_Arrco decimal(10,5) DEFAULT NULL,
  GU_Cotisation_Audiens_Patronale_Arrco decimal(10,2) DEFAULT NULL,
  GU_Tx_Audiens_Patronale_Agff decimal(10,5) DEFAULT NULL,
  GU_Tx_Audiens_Patronale_T2_Agff decimal(10,5) DEFAULT NULL,
  GU_Cotisation_Audiens_Patronale_Agff decimal(10,2) DEFAULT NULL,
  GU_Assiette_Prevoyance decimal(10,2) DEFAULT NULL,
  GU_Tx_Audiens_Patronale_Prevoyance decimal(10,5) DEFAULT NULL,
  GU_Cotisation_Audiens_Patronale_Prevoyance decimal(10,2) DEFAULT NULL,
  GU_Total_Audiens_Patronale decimal(10,5) DEFAULT NULL,
  GU_Tx_Afdas_Patronale decimal(10,5) DEFAULT NULL,
  GU_Cotisation_Afdas_Patronale_Formation_Continue decimal(10,2) DEFAULT NULL,
  GU_Total_Afdas_Patronale decimal(10,5) DEFAULT NULL,
  GU_Tx_Conges_Spectacle_Patronale decimal(10,5) DEFAULT NULL,
  GU_Cotisation_Conges_Spectacle_Patronale decimal(10,2) DEFAULT NULL,
  GU_Total_Conges_Spectacle_Patronale decimal(10,3) DEFAULT NULL,
  GU_Tx_Cmb_Patronale_Medecine_Du_Travail decimal(10,5) DEFAULT NULL,
  GU_Cotisation_Cmb_Patronale_Medecine_Du_Travail decimal(10,2) DEFAULT NULL,
  GU_Tx_Cmb_Patronale_Tva decimal(10,6) DEFAULT NULL,
  GU_Cotisation_Cmb_Patronale_Tva decimal(10,2) DEFAULT NULL,
  GU_Total_Cmb_Patronale decimal(10,8) DEFAULT NULL,
  GU_Total_Part_Salariale decimal(10,7) DEFAULT NULL,
  GU_Total_Part_Patronale decimal(10,7) DEFAULT NULL,
  GU_Cotisations_Salariales decimal(10,2) DEFAULT NULL,
  GU_Cotisations_Patronales decimal(10,2) DEFAULT NULL,
  GU_Option_Vignette_Urssaf text COLLATE utf8_unicode_ci,
  GU_Option_Indemnisation_Conges_Spectacles text COLLATE utf8_unicode_ci,
  GU_Indemnisation_Conges_10Pourcent decimal(10,2) DEFAULT NULL,
  GU_Option_Total_Taux_Salarial decimal(10,6) DEFAULT NULL,
  GU_Option_Taux_Patronal decimal(10,6) DEFAULT NULL,
  GU_Taux_Net_Brut_Avec_Vignette_Urssaf decimal(10,8) DEFAULT NULL,
  GU_Salaire_Brut_Avec_Vignette_Urssaf decimal(10,2) DEFAULT NULL,
  GU_Brut_Choisi decimal(10,4) DEFAULT NULL,
  GU_Total_Des_Cotisations decimal(10,2) DEFAULT NULL,
  GU_Budget_Global decimal(10,2) DEFAULT NULL,
  GU_Simulation_Date date DEFAULT NULL,
  GU_Simulation_Statut_Juridique text COLLATE utf8_unicode_ci,
  GU_Simulation_Type_Salarie text COLLATE utf8_unicode_ci,
  GU_Simulation_Salaire_Net decimal(10,2) DEFAULT NULL,
  GU_Simulation_Salaire_Brut decimal(10,2) DEFAULT NULL,
  GU_Simulation_Salaire_Global decimal(10,2) DEFAULT NULL,
  GU_Simulation_A_0Pourcent tinyint(4) DEFAULT NULL,
  GU_Forcage_Du_Forfait_Urssaf text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  GU_Budget_Si_Vignette_Urssaf decimal(10,2) DEFAULT NULL,
  GU_Budget_Si_Pas_De_Vignette decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table infos_administratives
--
-- Création :  Sam 24 Juin 2017 à 16:40
--

CREATE TABLE infos_administratives (
  IA_Idinfosadministratives int(10) UNSIGNED NOT NULL,
  IA_Id_Client int(10) UNSIGNED NOT NULL,
  IA_Id_Contact_Client int(10) UNSIGNED NOT NULL,
  IA_Raison_Sociale text COLLATE utf8_unicode_ci,
  IA_Civilite text COLLATE utf8_unicode_ci,
  IA_Prenom text COLLATE utf8_unicode_ci,
  IA_Nom text COLLATE utf8_unicode_ci,
  IA_Adresse_Ligne_1 text COLLATE utf8_unicode_ci,
  IA_Adresse_Ligne_2 text COLLATE utf8_unicode_ci,
  IA_Code_Postal text COLLATE utf8_unicode_ci,
  IA_Ville text COLLATE utf8_unicode_ci,
  IA_Telephone_Fixe text COLLATE utf8_unicode_ci,
  IA_Telephone_Portable text COLLATE utf8_unicode_ci,
  IA_Telephone_Fax text COLLATE utf8_unicode_ci,
  IA_Adresse_Mail text COLLATE utf8_unicode_ci,
  IA_Numero_De_Securite_Sociale text COLLATE utf8_unicode_ci,
  IA_Numero_Siret text COLLATE utf8_unicode_ci,
  IA_Code_Ape_Naf text COLLATE utf8_unicode_ci,
  IA_Date_De_Naissance_Du_Responsable date DEFAULT NULL,
  IA_Lieu_Naissance_Responsable text COLLATE utf8_unicode_ci,
  IA_Code_Postal_Naissance text COLLATE utf8_unicode_ci,
  IA_Numero_Guso text COLLATE utf8_unicode_ci,
  IA_Createur text COLLATE utf8_unicode_ci,
  IA_Date_De_Creation date DEFAULT NULL,
  IA_Modificateur text COLLATE utf8_unicode_ci,
  IA_Date_De_Modification date DEFAULT NULL,
  IA_Etait_Deja_Affilie text COLLATE utf8_unicode_ci,
  IA_Nom_Du_Contact_Denvoi_De_La_Fiche_De_Renseignement text COLLATE utf8_unicode_ci,
  IA_Adresse_Mail_Denvoi_De_La_Fiche_De_Renseignements text COLLATE utf8_unicode_ci,
  IA_Civilite_Envoi_De_La_Fiche_De_Renseignements text COLLATE utf8_unicode_ci,
  IA_Nom_Envoi_De_La_Fiche_De_Renseignements text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table lettre_accompagnement_du_contrat
--
-- Création :  Sam 24 Juin 2017 à 16:41
--

CREATE TABLE lettre_accompagnement_du_contrat (
  LA_Idlettre int(10) UNSIGNED NOT NULL,
  LA_Id_Contrat int(10) UNSIGNED NOT NULL,
  LA_Date_De_La_Lettre text COLLATE utf8_unicode_ci,
  LA_Etiquette_Lieu_Et_Date_De_La_Lettre text COLLATE utf8_unicode_ci,
  LA_Adresse_Operateur text COLLATE utf8_unicode_ci,
  LA_Adresse_Destinataire text COLLATE utf8_unicode_ci,
  LA_Etiquetteobjetducourrier text COLLATE utf8_unicode_ci,
  LA_Civilite_Transformee_Destinataire text COLLATE utf8_unicode_ci,
  LA_Introduction_Lettre text COLLATE utf8_unicode_ci,
  LA_Date_Du_Representation date DEFAULT NULL,
  LA_Lieu_De_Representation text COLLATE utf8_unicode_ci,
  LA_Code_Postal_Representation text COLLATE utf8_unicode_ci,
  LA_Vous_Trouverez_Joint text COLLATE utf8_unicode_ci,
  LA_Afin_De_Realiser text COLLATE utf8_unicode_ci,
  LA_Afin_De_Realiser_2 text COLLATE utf8_unicode_ci,
  LA_Je_Vous_Demanderai text COLLATE utf8_unicode_ci,
  LA_1_Exemplaire_Du_Contrat text COLLATE utf8_unicode_ci,
  LA_Feuillets_Guso_De_Dpae text COLLATE utf8_unicode_ci,
  LA_Feuillets_Guso_De_Declaration_Unique text COLLATE utf8_unicode_ci,
  LA_Fin_De_Lettre text COLLATE utf8_unicode_ci,
  LA_Etiquetteoperateurbasdepage text COLLATE utf8_unicode_ci,
  LA_Nom_Du_Fichier text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table location_u
--
-- Création :  Sam 24 Juin 2017 à 16:43
--

CREATE TABLE location_u (
  LU_Idlocationu int(10) UNSIGNED NOT NULL,
  LU_Idphoto int(10) UNSIGNED NOT NULL,
  LU_Type_Utilitaire text COLLATE utf8_unicode_ci,
  LU_Volume text COLLATE utf8_unicode_ci,
  LU_Nb_De_Jours int(10) UNSIGNED DEFAULT NULL,
  LU_Forfait_Kilometres int(10) UNSIGNED DEFAULT NULL,
  LU_Prix_Du_Kilometre_Supp decimal(10,2) DEFAULT NULL,
  LU_Tarif_De_Base decimal(10,2) DEFAULT NULL,
  LU_Depot_Garantie_Maximum decimal(10,2) DEFAULT NULL,
  LU_Depot_De_Garantie_Reduit decimal(10,2) DEFAULT NULL,
  LU_Depot_De_Garantie_Jour_Supp decimal(10,2) DEFAULT NULL,
  LU_Createur text COLLATE utf8_unicode_ci,
  LU_Date_De_Creation date DEFAULT NULL,
  LU_Modificateur text COLLATE utf8_unicode_ci,
  LU_Date_De_Modification date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table messagerie
--
-- Création :  Sam 24 Juin 2017 à 14:31
--

CREATE TABLE messagerie (
  ME_Id int(10) UNSIGNED NOT NULL,
  ME_Date_Du_Message datetime DEFAULT NULL,
  ME_Raison_Sociale text COLLATE utf8_unicode_ci,
  ME_Statut_Juridique text COLLATE utf8_unicode_ci,
  ME_Licencespectacles text COLLATE utf8_unicode_ci,
  ME_Civilite text COLLATE utf8_unicode_ci,
  ME_Nom text COLLATE utf8_unicode_ci,
  ME_Prenom text COLLATE utf8_unicode_ci,
  ME_Telephone text COLLATE utf8_unicode_ci,
  ME_Adresse_Mail text COLLATE utf8_unicode_ci,
  ME_Message text COLLATE utf8_unicode_ci,
  ME_Formationsouhaitee text COLLATE utf8_unicode_ci,
  ME_Messagearchive text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table messages
--
-- Création :  Sam 24 Juin 2017 à 14:31
--

CREATE TABLE messages (
  MS_Imap_Folder_Name text COLLATE utf8_unicode_ci,
  MS_Show_Folder text COLLATE utf8_unicode_ci,
  MS_From text COLLATE utf8_unicode_ci,
  MS_Messages_Id int(10) UNSIGNED NOT NULL,
  MS_To text COLLATE utf8_unicode_ci,
  MS_Cc text COLLATE utf8_unicode_ci,
  MS_Subject text COLLATE utf8_unicode_ci,
  MS_Body text COLLATE utf8_unicode_ci,
  MS_Date date DEFAULT NULL,
  MS_Time time DEFAULT NULL,
  MS_Priority text COLLATE utf8_unicode_ci,
  MS_Format text COLLATE utf8_unicode_ci,
  MS_Charset text COLLATE utf8_unicode_ci,
  MS_Header text COLLATE utf8_unicode_ci,
  MS_Current_Message_Id text COLLATE utf8_unicode_ci,
  MS_Uid text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table mise_a_jour
--
-- Création :  Sam 24 Juin 2017 à 16:46
--

CREATE TABLE mise_a_jour (
  MJ_Id int(10) UNSIGNED NOT NULL,
  MJ_Vu text COLLATE utf8_unicode_ci,
  MJ_Pat_Vu text COLLATE utf8_unicode_ci,
  MJ_Version_De_Pat text COLLATE utf8_unicode_ci,
  MJ_Fabrice_Vu text COLLATE utf8_unicode_ci,
  MJ_Version_De_Fabrice text COLLATE utf8_unicode_ci,
  MJ_Oliv_Vu text COLLATE utf8_unicode_ci,
  MJ_Version_Doliv text COLLATE utf8_unicode_ci,
  MJ_Pat_Averti_Dune_Mise_A_Jour text COLLATE utf8_unicode_ci,
  MJ_Oliv_Averti_Dune_Mise_A_Jour text COLLATE utf8_unicode_ci,
  MJ_Fabrice_Averti_Dune_Mise_A_Jour text COLLATE utf8_unicode_ci,
  MJ_Date_De_La_Derniere_Version text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table navigation_oliv
--
-- Création :  Sam 24 Juin 2017 à 14:31
--

CREATE TABLE navigation_oliv (
  NA_Id_Navigation_Oliv int(10) UNSIGNED NOT NULL,
  NA_Navigation_Fiches_Client text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table operateur
--
-- Création :  Sam 24 Juin 2017 à 16:47
-- Dernière modification :  Sam 24 Juin 2017 à 16:47
--

CREATE TABLE operateur (
  OP_Idoperateur int(10) UNSIGNED NOT NULL,
  OP_Civilite text COLLATE utf8_unicode_ci,
  OP_Nom text COLLATE utf8_unicode_ci,
  OP_Prenom text COLLATE utf8_unicode_ci,
  OP_Etiquette_Operateur text COLLATE utf8_unicode_ci,
  OP_Adresse_Ligne_1 text COLLATE utf8_unicode_ci,
  OP_Adresse_Ligne_2 text COLLATE utf8_unicode_ci,
  OP_Code_Postal text COLLATE utf8_unicode_ci,
  OP_Ville text COLLATE utf8_unicode_ci,
  OP_Etiquette_Operateur_Complete text COLLATE utf8_unicode_ci,
  OP_Telephone_Fixe text COLLATE utf8_unicode_ci,
  OP_Telephone_Portable text COLLATE utf8_unicode_ci,
  OP_Adresse_Mail text COLLATE utf8_unicode_ci,
  OP_Createur text COLLATE utf8_unicode_ci NOT NULL,
  OP_Date_De_Creation date NOT NULL,
  OP_Modificateur text COLLATE utf8_unicode_ci NOT NULL,
  OP_Date_De_Modification datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Op?rateurs r?alisant des devis ou autres documents administr';

-- --------------------------------------------------------

--
-- Structure de la table rappels
--
-- Création :  Sam 24 Juin 2017 à 14:31
--

CREATE TABLE rappels (
  RA_Idrappel int(10) UNSIGNED NOT NULL,
  RA_Idclient int(10) UNSIGNED DEFAULT NULL,
  RA_Date_De_Rappel date DEFAULT NULL,
  RA_Note_De_Rappel text CHARACTER SET utf8,
  RA_Tache_Effectuee text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table repertoire
--
-- Création :  Sam 24 Juin 2017 à 14:31
--

CREATE TABLE repertoire (
  RE_Id int(10) UNSIGNED NOT NULL,
  RE_Dateajout date DEFAULT NULL,
  RE_Artiste varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  RE_Titre varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  RE_Texte text COLLATE utf8_unicode_ci,
  RE_Tri varchar(13) COLLATE utf8_unicode_ci DEFAULT NULL,
  RE_Dossier text COLLATE utf8_unicode_ci,
  RE_Visibilite text COLLATE utf8_unicode_ci,
  RE_Auteur text COLLATE utf8_unicode_ci,
  RE_Compositeur text COLLATE utf8_unicode_ci,
  RE_Arrangeur text COLLATE utf8_unicode_ci,
  RE_Visibilite_Sacem text COLLATE utf8_unicode_ci,
  RE_Liste_Finale text COLLATE utf8_unicode_ci,
  RE_Date_De_Prestation date DEFAULT NULL,
  RE_Anneedesortie year(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table salaires
--
-- Création :  Sam 24 Juin 2017 à 14:31
--

CREATE TABLE salaires (
  SA_Idsalaire int(10) UNSIGNED NOT NULL,
  SA_Datededebut date DEFAULT NULL,
  SA_Datedefin date DEFAULT NULL,
  SA_Statut_Juridique text COLLATE utf8_unicode_ci,
  SA_Type_Salarie text COLLATE utf8_unicode_ci,
  SA_Salaire_Net decimal(10,2) DEFAULT NULL,
  SA_Salaire_Brut decimal(10,2) DEFAULT NULL,
  SA_Budget_Global decimal(10,2) DEFAULT NULL,
  SA_Cotisations decimal(10,2) DEFAULT NULL,
  SA_Date_De_Creation date DEFAULT NULL,
  SA_Createur text COLLATE utf8_unicode_ci,
  SA_Date_De_Modification date DEFAULT NULL,
  SA_Modificateur text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table simulations_guso
--
-- Création :  Sam 24 Juin 2017 à 14:31
--

CREATE TABLE simulations_guso (
  SI_Id_Simulation_Salaire_Guso int(10) UNSIGNED NOT NULL,
  SI_Verifie text CHARACTER SET utf8,
  SI_Type_Employeur text COLLATE utf8_unicode_ci,
  SI_Date_De_Valeur_Debut date DEFAULT NULL,
  SI_Date_De_Valeur_Fin date DEFAULT NULL,
  SI_Emploi_Du_Salarie text COLLATE utf8_unicode_ci,
  SI_Abattement_Montant decimal(10,4) DEFAULT NULL,
  SI_Abattement_Descriptif text COLLATE utf8_unicode_ci,
  SI_Bulletin_Avec_Forfait_Urssaf text COLLATE utf8_unicode_ci,
  SI_Option_Indemnisation_Conges_Payes text COLLATE utf8_unicode_ci,
  SI_Salaire_Brut decimal(10,2) DEFAULT NULL,
  SI_Indemnite_Pour_Conges_Payes decimal(10,2) DEFAULT NULL,
  SI_Assiette_Brut_Abattu decimal(10,2) DEFAULT NULL,
  SI_Assiette_Plafonnee decimal(10,2) DEFAULT NULL,
  SI_Assiette_Csg_Crds decimal(10,2) DEFAULT NULL,
  SI_Etiquette_Assiette_Csg_Crds text CHARACTER SET latin1 COLLATE latin1_general_ci,
  SI_Assiette_Cmb_Tva decimal(10,2) DEFAULT NULL,
  SI_Assiette_Prevoyance decimal(10,2) DEFAULT NULL,
  SI_Cotisations_Salariales decimal(10,2) DEFAULT NULL,
  SI_Cotisations_Patronales decimal(10,2) DEFAULT NULL,
  SI_Total_Des_Cotisations decimal(10,2) DEFAULT NULL,
  SI_Budget_Global decimal(10,2) DEFAULT NULL,
  SI_Salaire_Net decimal(10,2) DEFAULT NULL,
  SI_Salaire_Net_Imposable decimal(10,6) DEFAULT NULL,
  SI_Taux_Maladie_Salariale decimal(10,5) DEFAULT NULL,
  SI_Cotisation_Maladie_Salariale decimal(10,2) DEFAULT NULL,
  SI_Taux_Vieillesse_Plafonnee_Salariale decimal(10,5) DEFAULT NULL,
  SI_Cotisation_Vieillesse_Plafonnee_Salariale decimal(10,2) DEFAULT NULL,
  SI_Taux_Vieillesse_Deplafonnee_Salariale decimal(10,5) DEFAULT NULL,
  SI_Cotisation_Vieillesse_Deplafonnee_Salariale decimal(10,2) DEFAULT NULL,
  SI_Taux_Csg_Deductible_Salariale decimal(10,5) DEFAULT NULL,
  SI_Cotisation_Csg_Deductible_Salariale decimal(10,2) DEFAULT NULL,
  SI_Taux_Csg_Non_Deductible_Salariale decimal(10,5) DEFAULT NULL,
  SI_Cotisation_Csg_Non_Deductible_Salariale decimal(10,2) DEFAULT NULL,
  SI_Taux_Crds_Salariale decimal(10,5) DEFAULT NULL,
  SI_Cotisation_Crds_Salariale decimal(10,2) DEFAULT NULL,
  SI_Taux_Maladie_Patronale decimal(10,5) DEFAULT NULL,
  SI_Cotisation_Maladie_Patronale decimal(10,2) DEFAULT NULL,
  SI_Taux_Vieillesse_Plafonnee_Patronale decimal(10,5) DEFAULT NULL,
  SI_Cotisation_Vieillesse_Plafonnee_Patronale decimal(10,2) DEFAULT NULL,
  SI_Taux_Vieillesse_Deplafonnee_Patronale decimal(10,5) DEFAULT NULL,
  SI_Cotisation_Vieillesse_Deplafonnee_Patronale decimal(10,2) DEFAULT NULL,
  SI_Taux_Accident_Du_Travail_Patronale decimal(10,5) DEFAULT NULL,
  SI_Cotisation_Accident_Du_Travail_Patronale decimal(10,2) DEFAULT NULL,
  SI_Taux_Allocation_Familiale_Patronale decimal(10,5) DEFAULT NULL,
  SI_Cotisation_Allocation_Familiale_Patronale decimal(10,2) DEFAULT NULL,
  SI_Taux_Aide_Au_Logement_Patronale decimal(10,5) DEFAULT NULL,
  SI_Cotisation_Aide_Au_Logement_Patronale decimal(10,2) DEFAULT NULL,
  SI_Total_Maladie decimal(10,2) DEFAULT NULL,
  SI_Total_Vieillesse_Plafonnee decimal(10,2) DEFAULT NULL,
  SI_Total_Vieillesse_Deplafonnee decimal(10,2) DEFAULT NULL,
  SI_Total_Accident_Du_Travail decimal(10,2) DEFAULT NULL,
  SI_Total_Allocation_Familiale decimal(10,2) DEFAULT NULL,
  SI_Total_Aide_Au_Logement decimal(10,2) DEFAULT NULL,
  SI_Total_Csg_Deductible decimal(10,2) DEFAULT NULL,
  SI_Total_Csg_Non_Deductible decimal(10,2) DEFAULT NULL,
  SI_Total_Crds decimal(10,2) DEFAULT NULL,
  SI_Vignette_Urssaf_Salariale decimal(10,2) DEFAULT NULL,
  SI_Vignette_Urssaf_Patronale decimal(10,2) DEFAULT NULL,
  SI_Total_Urssaf_Salariale decimal(10,2) DEFAULT NULL,
  SI_Total_Urssaf_Patronale decimal(10,2) DEFAULT NULL,
  SI_Total_Urssaf decimal(10,2) DEFAULT NULL,
  SI_Taux_Assurance_Chomage_Salariale decimal(10,5) DEFAULT NULL,
  SI_Cotisation_Salariale_Assurance_Chomage decimal(10,2) DEFAULT NULL,
  SI_Taux_Assurance_Chomage_Patronale decimal(10,5) DEFAULT NULL,
  SI_Cotisation_Patronale_Assurance_Chomage decimal(10,2) DEFAULT NULL,
  SI_Taux_Assurance_Chomage_Maj_Cdd_U decimal(10,5) DEFAULT NULL,
  SI_Cotisation_Patronale_Assurance_Chomage_Maj_Cdd_U decimal(10,2) DEFAULT NULL,
  SI_Taux_Ags_Patronale decimal(10,5) DEFAULT NULL,
  SI_Cotisation_Ags_Patronale decimal(10,2) DEFAULT NULL,
  SI_Total_Assurance_Chomage decimal(10,2) DEFAULT NULL,
  SI_Total_Assurance_Chomage_Maj_Cdd_U decimal(10,2) DEFAULT NULL,
  SI_Total_Ags decimal(10,2) DEFAULT NULL,
  SI_Total_Assedic_Salariale decimal(10,2) DEFAULT NULL,
  SI_Total_Assedic_Patronale decimal(10,2) DEFAULT NULL,
  SI_Total_Assedic decimal(10,2) DEFAULT NULL,
  SI_Taux_Irps_Arrco_T1_Salariale decimal(10,5) DEFAULT NULL,
  SI_Cotisation_Irps_Arrco_T1_Salariale decimal(10,2) DEFAULT NULL,
  SI_Taux_Irps_Arrco_T2_Salariale decimal(10,5) DEFAULT NULL,
  SI_Cotisation_Irps_Arrco_T2_Salariale decimal(10,2) DEFAULT NULL,
  SI_Taux_Agff_T1_Salariale decimal(10,5) DEFAULT NULL,
  SI_Cotisation_Agff_T1_Salariale decimal(10,2) DEFAULT NULL,
  SI_Taux_Agff_T2_Salariale decimal(10,5) DEFAULT NULL,
  SI_Cotisation_Agff_T2_Salariale decimal(10,2) DEFAULT NULL,
  SI_Total_Audiens_Salariale decimal(10,2) DEFAULT NULL,
  SI_Taux_Irps_Arrco_T1_Patronale decimal(10,5) DEFAULT NULL,
  SI_Cotisation_Irps_Arrco_T1_Patronale decimal(10,2) DEFAULT NULL,
  SI_Taux_Irps_Arrco_T2_Patronale decimal(10,5) DEFAULT NULL,
  SI_Cotisation_Irps_Arrco_T2_Patronale decimal(10,2) DEFAULT NULL,
  SI_Taux_Agff_T1_Patronale decimal(10,5) DEFAULT NULL,
  SI_Cotisation_Agff_T1_Patronale decimal(10,2) DEFAULT NULL,
  SI_Taux_Agff_T2_Patronale decimal(10,5) DEFAULT NULL,
  SI_Cotisation_Agff_T2_Patronale decimal(10,2) DEFAULT NULL,
  SI_Taux_Prevoyance_Patronale decimal(10,5) DEFAULT NULL,
  SI_Cotisation_Prevoyance_Patronale decimal(10,2) DEFAULT NULL,
  SI_Total_Audiens_Patronale decimal(10,2) DEFAULT NULL,
  SI_Total_Irps_Arrco_T1 decimal(10,2) DEFAULT NULL,
  SI_Total_Irps_Arrco_T2 decimal(10,2) DEFAULT NULL,
  SI_Total_Agff_T1 decimal(10,2) DEFAULT NULL,
  SI_Total_Agff_T2 decimal(10,2) DEFAULT NULL,
  SI_Total_Prevoyance decimal(10,2) DEFAULT NULL,
  SI_Total_Audiens decimal(10,2) DEFAULT NULL,
  SI_Taux_Formation_Continue decimal(10,5) DEFAULT NULL,
  SI_Cotisation_Formation_Continue_Patronale decimal(10,2) DEFAULT NULL,
  SI_Total_Formation_Continue decimal(10,2) DEFAULT NULL,
  SI_Total_Afdas_Patronale decimal(10,2) DEFAULT NULL,
  SI_Total_Afdas decimal(10,2) DEFAULT NULL,
  SI_Taux_Conges_Spectacles_Patronale decimal(10,5) DEFAULT NULL,
  SI_Cotisation_Conges_Spectacles_Patronale decimal(10,2) DEFAULT NULL,
  SI_Total_Conges_Spectacles decimal(10,2) DEFAULT NULL,
  SI_Taux_Medecine_Du_Travail_Patronale decimal(10,5) DEFAULT NULL,
  SI_Cotisation_Medecine_Du_Travail_Patronale decimal(10,2) DEFAULT NULL,
  SI_Total_Medecine_Du_Travail decimal(10,2) DEFAULT NULL,
  SI_Taux_Tva_Medecine_Du_Travail_Patronale decimal(10,5) DEFAULT NULL,
  SI_Cotisation_Tva_Medecine_Du_Travail_Patronale decimal(10,2) DEFAULT NULL,
  SI_Total_Tva_Medecine_Du_Travail_Patronale decimal(10,2) DEFAULT NULL,
  SI_Total_Cmb_Patronale decimal(10,2) DEFAULT NULL,
  SI_Total_Cmb decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table simulation_guso
--
-- Création :  Sam 24 Juin 2017 à 14:31
--

CREATE TABLE simulation_guso (
  SG_Id_Guso int(10) UNSIGNED NOT NULL,
  SG_Total_Part_Salariale_Vignette_Urssaf decimal(10,3) DEFAULT NULL,
  SG_Total_Part_Patronale_Vignette_Urssaf decimal(10,3) DEFAULT NULL,
  SG_Date_De_Creation date DEFAULT NULL,
  SG_Createur text COLLATE utf8_unicode_ci,
  SG_Date_De_Modification date NOT NULL,
  SG_Modificateur text COLLATE utf8_unicode_ci,
  SG_Statut_Juridique text COLLATE utf8_unicode_ci,
  SG_Type_Salarie text COLLATE utf8_unicode_ci,
  SG_Salaire_Net_Simulation decimal(10,2) DEFAULT NULL,
  SG_Taux_Net_Brut_Simulation decimal(10,5) DEFAULT NULL,
  SG_Salaire_Brut_Simulation decimal(10,2) DEFAULT NULL,
  SG_Salaire_Brut decimal(10,3) DEFAULT NULL,
  SG_Salaire_Brut_Et_Indemnisation_Conges decimal(10,2) DEFAULT NULL,
  SG_Abattement decimal(10,2) DEFAULT NULL,
  SG_Salaire_Brut_Abattu decimal(10,3) DEFAULT NULL,
  SG_Assiette_Csd_Et_Crds decimal(10,3) DEFAULT NULL,
  SG_Tva decimal(10,2) DEFAULT NULL,
  SG_Date_De_Simulation_Debut date DEFAULT NULL,
  SG_Date_De_Simulation_Fin date DEFAULT NULL,
  SG_Urssaf_Salariale_Maladie decimal(10,3) DEFAULT NULL,
  SG_Urssaf_Salariale_Vieillesse_Plafonnee decimal(10,3) DEFAULT NULL,
  SG_Urssaf_Salariale_Vieillesse_Deplafonnee decimal(10,3) DEFAULT NULL,
  SG_Urssaf_Salariale_Csg_Deductible decimal(10,3) DEFAULT NULL,
  SG_Urssaf_Salariale_Csg_Non_Deductible decimal(10,3) DEFAULT NULL,
  SG_Urssaf_Salariale_Crds decimal(10,3) DEFAULT NULL,
  SG_Total_Urssaf_Salariale decimal(10,3) DEFAULT NULL,
  SG_Urssaf_Patronale_Maladie decimal(10,3) DEFAULT NULL,
  SG_Urssaf_Patronale_Vieillesse_Plafonnee decimal(10,3) DEFAULT NULL,
  SG_Urssaf_Patronale_Vieillesse_Deplafonnee decimal(10,3) DEFAULT NULL,
  SG_Urssaf_Patronale_Accident_Du_Travail decimal(10,3) DEFAULT NULL,
  SG_Urssaf_Patronale_Allocation_Familiale decimal(10,3) DEFAULT NULL,
  SG_Urssaf_Patronale_Aide_Au_Logement decimal(10,3) DEFAULT NULL,
  SG_Total_Urssaf_Patronale decimal(10,3) DEFAULT NULL,
  SG_Total_Urssaf decimal(10,3) DEFAULT NULL,
  SG_Vignette_Urssaf_Salariale decimal(10,2) DEFAULT NULL,
  SG_Vignette_Urssaf_Patronale decimal(10,2) DEFAULT NULL,
  SG_Assurance_Chomage_Salariale_Rac_Ta decimal(10,3) DEFAULT NULL,
  SG_Total_Assurance_Chomage_Salariale decimal(10,3) DEFAULT NULL,
  SG_Assurance_Chomage_Patronale_Rac_Ta decimal(10,3) DEFAULT NULL,
  SG_Assurance_Chomage_Patronale_Ags decimal(10,3) DEFAULT NULL,
  SG_Total_Assurance_Chomage_Patronale decimal(10,3) DEFAULT NULL,
  SG_Total_Assurance_Chomage decimal(10,3) DEFAULT NULL,
  SG_Audiens_Salariale_Arrco decimal(10,3) DEFAULT NULL,
  SG_Audiens_Salariale_Agff decimal(10,3) DEFAULT NULL,
  SG_Total_Audiens_Salariale decimal(10,3) DEFAULT NULL,
  SG_Audiens_Patronale_Arrco decimal(10,3) DEFAULT NULL,
  SG_Audiens_Patronale_Agff decimal(10,3) DEFAULT NULL,
  SG_Total_Audiens_Patronale decimal(10,3) DEFAULT NULL,
  SG_Total_Audiens decimal(10,3) DEFAULT NULL,
  SG_Afdas_Patronale decimal(10,3) DEFAULT NULL,
  SG_Total_Afdas_Patronale decimal(10,3) DEFAULT NULL,
  SG_Total_Afdas decimal(10,3) DEFAULT NULL,
  SG_Conges_Spectacle_Patronale decimal(10,3) DEFAULT NULL,
  SG_Total_Conges_Spectacle_Patronale decimal(10,3) DEFAULT NULL,
  SG_Total_Conges_Spectacle decimal(10,3) DEFAULT NULL,
  SG_Cmb_Patronale_Medecine_Du_Travail decimal(10,3) DEFAULT NULL,
  SG_Cmb_Patronale_Tva decimal(10,6) DEFAULT NULL,
  SG_Total_Cmb_Patronale decimal(10,6) DEFAULT NULL,
  SG_Total_Cmb decimal(10,3) DEFAULT NULL,
  SG_Total_Part_Salariale decimal(10,6) DEFAULT NULL,
  SG_Total_Part_Patronale decimal(10,6) DEFAULT NULL,
  SG_Total decimal(10,6) DEFAULT NULL,
  SG_Cotisations_Salariales decimal(10,2) DEFAULT NULL,
  SG_Cotisations_Patronales decimal(10,2) DEFAULT NULL,
  SG_Option_Vignette_Urssaf tinyint(1) DEFAULT NULL,
  SG_Option_Indemnisation_Conges_Spectacles int(10) UNSIGNED DEFAULT NULL,
  SG_Indemnisation_Conges_10Pourcent decimal(10,2) DEFAULT NULL,
  SG_Option_Total_Taux_Salarial decimal(10,6) DEFAULT NULL,
  SG_Option_Taux_Patronal decimal(10,6) DEFAULT NULL,
  SG_Taux_Net_Brut_Avec_Vignette_Urssaf decimal(10,8) DEFAULT NULL,
  SG_Salaire_Brut_Avec_Vignette_Urssaf decimal(10,2) DEFAULT NULL,
  SG_Brut_Choisi decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table suivi_client
--
-- Création :  Sam 24 Juin 2017 à 14:31
--

CREATE TABLE suivi_client (
  SU_Idsuiviclient int(10) UNSIGNED NOT NULL,
  SU_Idclient int(10) UNSIGNED DEFAULT NULL COMMENT 'Stokera la numero de l''entreprise ? laquelle est li?e la fiche de suivi',
  SU_Interlocuteur text COLLATE utf8_unicode_ci,
  SU_Joint_Par text COLLATE utf8_unicode_ci,
  SU_Date_Dappel date DEFAULT NULL,
  SU_Commentaire text COLLATE utf8_unicode_ci,
  SU_Date_De_Modification datetime NOT NULL,
  SU_Modificateur text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table table_utilisateur
--
-- Création :  Sam 24 Juin 2017 à 14:31
--

CREATE TABLE table_utilisateur (
  TA_Id int(10) UNSIGNED NOT NULL,
  TA_User varchar(20) CHARACTER SET utf8 NOT NULL,
  TA_Pass varchar(40) CHARACTER SET utf8 NOT NULL,
  TA_Nbr_Connect int(10) UNSIGNED NOT NULL DEFAULT '0',
  TA_Dates datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table utilisation_du_logiciel
--
-- Création :  Sam 24 Juin 2017 à 14:31
--

CREATE TABLE utilisation_du_logiciel (
  UT_Id_Utilisation int(10) UNSIGNED NOT NULL,
  UT_En_Cours_Dutilisation_Pat text COLLATE utf8_unicode_ci,
  UT_Chemin_Du_Fichier_De_Pat text COLLATE utf8_unicode_ci,
  UT_Nom_Dutilisateur_Pat text COLLATE utf8_unicode_ci,
  UT_Infos_Pat text COLLATE utf8_unicode_ci,
  UT_Plantage_Pat text COLLATE utf8_unicode_ci,
  UT_Historique_Pat text COLLATE utf8_unicode_ci,
  UT_Text_De_Chargement_Pat text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  UT_En_Cours_Dutilisation_Fabrice text COLLATE utf8_unicode_ci,
  UT_Chemin_Du_Fichier_De_Fabrice text COLLATE utf8_unicode_ci,
  UT_Nom_Dutilisateur_Fabrice text COLLATE utf8_unicode_ci,
  UT_Infos_Fabrice text COLLATE utf8_unicode_ci,
  UT_Plantage_Fabrice text COLLATE utf8_unicode_ci,
  UT_Historique_Fabrice text COLLATE utf8_unicode_ci,
  UT_Texte_De_Chargement_Fabrice text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  UT_En_Cours_Dutilisation_Oliv text COLLATE utf8_unicode_ci,
  UT_Chemin_Du_Fichier_Doliv text COLLATE utf8_unicode_ci,
  UT_Nom_Dutilisateur_Oliv text COLLATE utf8_unicode_ci,
  UT_Infos_Oliv text COLLATE utf8_unicode_ci,
  UT_Plantage_Oliv text COLLATE utf8_unicode_ci,
  UT_Historique_Oliv text COLLATE utf8_unicode_ci,
  UT_Texte_De_Chargement_Oliv text COLLATE utf8_unicode_ci,
  UT_Fichier_Audio text CHARACTER SET latin1 COLLATE latin1_general_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table verif_fiches_clients_a_suivre
--
-- Création :  Sam 24 Juin 2017 à 14:31
--

CREATE TABLE verif_fiches_clients_a_suivre (
  VS_Id_Verification int(10) UNSIGNED NOT NULL,
  VS_Date_De_Derniere_Modification date DEFAULT NULL,
  VS_Date_De_Derniere_Verification date DEFAULT NULL,
  VS_Mois_A_Inclure int(10) UNSIGNED DEFAULT NULL,
  VS_Nom_Du_Mois_A_Inclure text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table versions_obsoletes
--
-- Création :  Sam 24 Juin 2017 à 14:31
--

CREATE TABLE versions_obsoletes (
  VO_Idversionobsoletes int(10) UNSIGNED NOT NULL,
  VO_Version text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Index pour les tables exportées
--

--
-- Index pour la table actu
--
ALTER TABLE actu
  ADD PRIMARY KEY (AC_Id),
  ADD UNIQUE KEY AC_Num (AC_Num);

--
-- Index pour la table agenda
--
ALTER TABLE agenda
  ADD PRIMARY KEY (AG_Idagenda),
  ADD KEY AG_Id_Fiche_Concernee (AG_Id_Fiche_Concernee),
  ADD KEY AG_Id_Rappel (AG_Id_Rappel);

--
-- Index pour la table artistes
--
ALTER TABLE artistes
  ADD PRIMARY KEY (AR_Idartiste);

--
-- Index pour la table bloc_notes
--
ALTER TABLE bloc_notes
  ADD PRIMARY KEY (BN_Id_Bloc_Notes),
  ADD KEY BN_Bloc_Notes_UserID (BN_Bloc_Notes_UserID);

--
-- Index pour la table bulletins_de_salaire
--
ALTER TABLE bulletins_de_salaire
  ADD PRIMARY KEY (BS_Idbulletindepaie),
  ADD KEY BS_Idcontrat (BS_Idcontrat);

--
-- Index pour la table clients
--
ALTER TABLE clients
  ADD PRIMARY KEY (CL_Idclient),
  ADD KEY CL_Date_De_Creation (CL_Date_De_Creation),
  ADD KEY CL_Date_De_Creation_2 (CL_Date_De_Creation),
  ADD KEY CL_Date_De_Creation_3 (CL_Date_De_Creation),
  ADD KEY CL_Date_De_Modification (CL_Date_De_Modification),
  ADD KEY CL_Date_De_Modification_2 (CL_Date_De_Modification),
  ADD KEY CL_Date_De_Creation_4 (CL_Date_De_Creation,CL_Date_De_Modification);

--
-- Index pour la table contacts_utiles
--
ALTER TABLE contacts_utiles
  ADD PRIMARY KEY (CU_Idcontactutiles);

--
-- Index pour la table contact_client
--
ALTER TABLE contact_client
  ADD PRIMARY KEY (CC_Idcontactclient),
  ADD KEY CC_Id_Client (CC_Id_Client),
  ADD KEY CC_Id_Client_2 (CC_Id_Client);

--
-- Index pour la table contrats
--
ALTER TABLE contrats
  ADD PRIMARY KEY (CT_Id_Contrat);

--
-- Index pour la table contrats_2
--
ALTER TABLE contrats_2
  ADD PRIMARY KEY (CD_Id_Contrat_2),
  ADD KEY CD_Idcontrat2 (CD_Idcontrat2);

--
-- Index pour la table crdb
--
ALTER TABLE crdb
  ADD PRIMARY KEY (CR_Id_Crdb);

--
-- Index pour la table declarations_guso
--
ALTER TABLE declarations_guso
  ADD PRIMARY KEY (DG_Id_Declaration_Guso);

--
-- Index pour la table declaration_pole_emploi
--
ALTER TABLE declaration_pole_emploi
  ADD PRIMARY KEY (DP_Id_Declaration_Pole_Emploi);

--
-- Index pour la table demande_devis
--
ALTER TABLE demande_devis
  ADD PRIMARY KEY (DD_Iddemandededevis);

--
-- Index pour la table detail_devis
--
ALTER TABLE detail_devis
  ADD KEY DE_Iddetaildudevis (DE_Iddetaildudevis),
  ADD KEY DE_Id_Devis (DE_Id_Devis),
  ADD KEY DE_Id_Operateur (DE_Id_Operateur),
  ADD KEY DE_Id_Client (DE_Id_Client),
  ADD KEY DE_Id_Contactclient (DE_Id_Contactclient);

--
-- Index pour la table detail_devis_2
--
ALTER TABLE detail_devis_2
  ADD KEY D2_Iddetaildevis2 (D2_Iddetaildevis2),
  ADD KEY D2_Iddevis (D2_Iddevis);

--
-- Index pour la table devis
--
ALTER TABLE devis
  ADD PRIMARY KEY (DV_Iddevis);

--
-- Index pour la table dpae_imprime
--
ALTER TABLE dpae_imprime
  ADD KEY DI_Id_Dpae (DI_Id_Dpae),
  ADD KEY DI_Id_Contrat (DI_Id_Contrat),
  ADD KEY DI_Numero_Du_Salarie (DI_Numero_Du_Salarie);

--
-- Index pour la table feuilles_de_mandat
--
ALTER TABLE feuilles_de_mandat
  ADD KEY FSM_Idfeuilledemandat (FSM_Idfeuilledemandat),
  ADD KEY FSM_Id_Contrat (FSM_Id_Contrat);

--
-- Index pour la table feuilles_de_presence
--
ALTER TABLE feuilles_de_presence
  ADD KEY FP_Idfeuilledepresence (FP_Idfeuilledepresence),
  ADD KEY FP_Id_Contrat (FP_Id_Contrat);

--
-- Index pour la table feuille_de_mandat
--
ALTER TABLE feuille_de_mandat
  ADD KEY FM_Id_Feuille_De_Mandat (FM_Id_Feuille_De_Mandat),
  ADD KEY FM_Id_Contrat (FM_Id_Contrat);

--
-- Index pour la table guso
--
ALTER TABLE guso
  ADD KEY GU_Id_Guso (GU_Id_Guso);

--
-- Index pour la table infos_administratives
--
ALTER TABLE infos_administratives
  ADD KEY IA_Idinfosadministratives (IA_Idinfosadministratives),
  ADD KEY IA_Id_Client (IA_Id_Client),
  ADD KEY IA_Id_Contact_Client (IA_Id_Contact_Client);

--
-- Index pour la table lettre_accompagnement_du_contrat
--
ALTER TABLE lettre_accompagnement_du_contrat
  ADD KEY LA_Idlettre (LA_Idlettre),
  ADD KEY LA_Id_Contrat (LA_Id_Contrat);

--
-- Index pour la table messagerie
--
ALTER TABLE messagerie
  ADD PRIMARY KEY (ME_Id);

--
-- Index pour la table mise_a_jour
--
ALTER TABLE mise_a_jour
  ADD KEY MJ_Id (MJ_Id);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table actu
--
ALTER TABLE actu
  MODIFY AC_Id int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table agenda
--
ALTER TABLE agenda
  MODIFY AG_Idagenda int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table artistes
--
ALTER TABLE artistes
  MODIFY AR_Idartiste int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table bloc_notes
--
ALTER TABLE bloc_notes
  MODIFY BN_Id_Bloc_Notes int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table bulletins_de_salaire
--
ALTER TABLE bulletins_de_salaire
  MODIFY BS_Idbulletindepaie int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table contacts_utiles
--
ALTER TABLE contacts_utiles
  MODIFY CU_Idcontactutiles int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table contact_client
--
ALTER TABLE contact_client
  MODIFY CC_Idcontactclient int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table contrats
--
ALTER TABLE contrats
  MODIFY CT_Id_Contrat int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table crdb
--
ALTER TABLE crdb
  MODIFY CR_Id_Crdb int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table declarations_guso
--
ALTER TABLE declarations_guso
  MODIFY DG_Id_Declaration_Guso int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table demande_devis
--
ALTER TABLE demande_devis
  MODIFY DD_Iddemandededevis int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table devis
--
ALTER TABLE devis
  MODIFY DV_Iddevis int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table messagerie
--
ALTER TABLE messagerie
  MODIFY ME_Id int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
