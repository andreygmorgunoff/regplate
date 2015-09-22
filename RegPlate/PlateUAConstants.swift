//
//  PlateUAConstants.swift
//  RegPlate
//
//  Created by Andriy Morgunov on 8/27/15.
//  Copyright (c) 2015 Andriy Morgunov. All rights reserved.
//

import Foundation

class PlateUAConstants
{
    enum PlateMode : Int
    {
        case Regular = 0, Taxi, Temporary
    }
    
    enum PlateOwnType : Int
    {
        case Civil = 0, Milicia, Diplomatic, Army, ArmyVolontier, Mountain, TradeDialer
    }
    
    enum PlateEngineType : Int
    {
        case MoreThen50 = 0, LessThen50
    }
    
    enum PlateCountryType : Int
    {
        case JapanUSA = 0, Other
    }
    
    enum AutoTypes : Int
    {
        case Unknown = 0, Bike, Moto, Car, Track, Bus, Tracktor, Trailer
    }
   
    enum PlateTypes : String
    {
        case Unknown = ""
        
        //1.1
        case Auto_04 = "1.1.04"
        case Auto_15 = "1.1.15"
        
        // 1.2
        case Auto_Taxi_04 = "1.2.04"
        case Auto_Taxi_15 = "1.2.15"
        
        // 2.1
        case Auto_Temporary_04 = "2.1.06"
        case Auto_Temporary_15 = "2.1.15"
        
        // 2.2
        case Auto_Trade_Temporary_04 = "2.2.06"
        case Auto_Trade_Temporary_15 = "2.2.15"
        
        // 3.1
        case Motorbike_04 = "3.1.04"
        case Motorbike_15 = "3.1.15"
        
        // 3.2
        case Motorbike_Temporary_04 = "3.2.06"
        case Motorbike_Temporary_15 = "3.2.15"
        
        // 3.3
        case Motorbike_Trade_Temporary_04 = "3.3.06"
        case Motorbike_Trade_Temporary_15 = "3.3.15"
        
        // 4
        case Diplomatic = "4..04"
        
        // 5
        case Motorcycle_04 = "5..04"
        case Motorcycle_15 = "5..15"
        
        // 6.1
        case Motorcycle_Temporary_04 = "6.1.04"
        case Motorcycle_Temporary_15 = "6.1.15"
        
        // 6.2
        case Motorcycle_Trade_Temporary_04 = "6.2.04"
        case Motorcycle_Trade_Temporary_15 = "6.2.15"
        
        // 7.1
        case Auto_Individual_04 = "7.1.04"
        case Auto_Individual_04_2 = "7.1.04.2"
        
        // 7.2
        case Motorcycle_Individual_04 = "7.2.04"
        case Motorcycle_Individual_04_2 = "7.2.04.2"
        
        // 7.3
        case USA_Japan_04 = "7.3.04"
        case USA_Japan_15 = "7.3.15"
        
        // 7.4
        case USA_Japan_Individual_04 = "7.4.04"
        
        // 8
        case Tractor_95 = "8.1.95"
        case Tractor_Temporary_13 = "8.2.13"
        
        // 9
        case Army_95 = "9..95"
        case Army_Head_07 = "9..07"
        
        // 9.1
        case Army_Volonter_14 = "9.1.14"
        
        // 10
        case Army_Moto_95 = "10..95"
        
        // 11
        case Police_04 = "11..04"
        case Police_15 = "11..15"
        case Police_Head_15 = "11.."
        
        // 12.1
        case Specific_10 = "12.1.10"
        
        // 12.2
        case Specific_Temporary_15 = "12.2.15"
        
        init()
        {
            self = .Unknown
        }
    }
    
    enum PlateRegions : String, Printable
    {
        case Unknown = ""
        
        case AA = "AA"
        case AB = "AB"
        case AC = "AC"
        case AE = "AE"
        case AH = "AH"
        case AI = "AI"
        case AK = "AK"
        case AM = "AM"
        case AO = "AO"
        case AP = "AP"
        case AT = "AT"
        case AX = "AX"
        
        case BA = "BA"
        case BB = "BB"
        case BC = "BC"
        case BE = "BE"
        case BH = "BH"
        case BI = "BI"
        case BK = "BK"
        case BM = "BM"
        case BO = "BO"
        case BT = "BT"
        case BX = "BX"
        
        case CA = "CA"
        case CB = "CB"
        case CE = "CE"
        case CH = "CH"
        
        case HA = "HA"
        case HB = "HB"
        case HC = "HC"
        case HE = "HE"
        case HH = "HH"
        case HI = "HI"
        case HK = "HK"
        case HM = "HM"
        case HO = "HO"
        case HT = "HT"
        case HX = "HX"
        
        case IA = "IA"
        case IB = "IB"
        case IE = "IE"
        case IH = "IH"
        
        case II = "II"
        
        case KA = "KA"
        case KB = "KB"
        case KC = "KC"
        case KE = "KE"
        case KH = "KH"
        case KI = "KI"
        case KK = "KK"
        case KM = "KM"
        case KO = "KO"
        case KP = "KP"
        case KT = "KT"
        case KX = "KX"
        
        var description: String
        {
            return self.rawValue
        }
        
        var region: String?
        {
            var result : String?
            
            switch (self)
            {
                case .AK, .KK :
                    result = NSLocalizedString("Krym", comment: "Krym")
                case .AA, .KA :
                    result = NSLocalizedString("Kyiv", comment: "Kyiv")
                case .AB, .KB :
                    result = NSLocalizedString("Vinnitska", comment: "Vinnitska")
                case .AC, .KC :
                    result = NSLocalizedString("Volynska", comment: "Volynska")
                case .AE, .KE :
                    result = NSLocalizedString("Dniprovska", comment: "Dniprovska")
                case .AH, .KH :
                    result = NSLocalizedString("Donetska", comment: "Donetska")
                case .AI, .KI :
                    result = NSLocalizedString("Kyivska", comment: "Kyivska")
                case .AM, .KM :
                    result = NSLocalizedString("Zhitomirska", comment: "Zhitomirska")
                case .AO, .KO :
                    result = NSLocalizedString("Zakarpatska", comment: "Zakarpatska")
                case .AP, .KP :
                    result = NSLocalizedString("Zaporizhska", comment: "Zaporizhska")
                case .AT, .KT :
                    result = NSLocalizedString("IvanoFrankivska", comment: "IvanoFrankivska")
                case .AX, .KX :
                    result = NSLocalizedString("Kharkivska", comment: "Kharkivska")
                case .BA, .HA :
                    result = NSLocalizedString("Kirovogradska", comment: "Kirovogradska")
                case .BB, .HB :
                    result = NSLocalizedString("Luganska", comment: "Luganska")
                case .BC, .HC :
                    result = NSLocalizedString("Lvivska", comment: "Lvivska")
                case .BE, .HE :
                    result = NSLocalizedString("Mykolaivska", comment: "Mykolaivska")
                case .BH, .HH :
                    result = NSLocalizedString("Odeska", comment: "Odeska")
                case .BI, .HI :
                    result = NSLocalizedString("Poltavska", comment: "Poltavska")
                case .BK, .HK :
                    result = NSLocalizedString("Rivnenska", comment: "Rivnenska")
                case .BM, .HM :
                    result = NSLocalizedString("Sumska", comment: "Sumska")
                case .BO, .HO :
                    result = NSLocalizedString("Ternopilska", comment: "Ternopilska")
                case .BT, .HT :
                    result = NSLocalizedString("Khersonska", comment: "Khersonska")
                case .BX, .HX :
                    result = NSLocalizedString("Khmelnitska", comment: "Khmelnitska")
                case .CA, .IA :
                    result = NSLocalizedString("Cherkaska", comment: "Cherkaska")
                case .CB, .IB :
                    result = NSLocalizedString("Chernigivska", comment: "Chernigivska")
                case .CE, .IE :
                    result = NSLocalizedString("Charnivetska", comment: "Charnivetska")
                case .CH, .IH :
                    result = NSLocalizedString("Sevastopol", comment: "Sevastopol")
                case .II :
                    result = NSLocalizedString("General", comment: "General")
                default :
                    result = nil
            }
            
            return result
        }
        
        var year: Int?
        {
                var result : Int?
                
                switch (self)
                {
                    case .AK,.AA,.AB,.AC,.AE,.AH,.AI,.AM,.AO,.AP,.AT,.AX,.BA,.BB,.BC,.BE,.BH,.BI,.BK,.BM,.BO,.BT,.BX,.CA,.CB,.CE,.CH,.II :
                        result = 2004
                    case .KK,.KA,.KB,.KC,.KE,.KH,.KI,.KM,.KO,.KP,.KT,.KX,.HA,.HB,.HC,.HE,.HH,.HI,.HK,.HM,.HO,.HT,.HX,.IA,.IB,.IE,.IH,.II :
                        result = 2013
                    default :
                        result = nil
                }
                
                return result
        }
        
    }
    
    enum PlateRegions04 : String, Printable
    {
        case Unknown = "00"
        case o1 = "01"
        case o2 = "02"
        case o3 = "03"
        case o4 = "04"
        case o5 = "05"
        case o6 = "06"
        case o7 = "07"
        case o8 = "08"
        case o9 = "09"
        case o10 = "10"
        case o11 = "11"
        case o12 = "12"
        case o13 = "13"
        case o14 = "14"
        case o15 = "15"
        case o16 = "16"
        case o17 = "17"
        case o18 = "18"
        case o19 = "19"
        case o20 = "20"
        case o21 = "21"
        case o22 = "22"
        case o23 = "23"
        case o24 = "24"
        case o25 = "25"
        case o26 = "26"
        case o27 = "27"
        case o28 = "28"
        
        var description: String
        {
            return self.rawValue
        }
        
        var region: String?
        {
            var result : String?
            
            switch (self)
            {
            case .o1 :
                result = NSLocalizedString("Krym", comment: "Krym")
            case .o2 :
                result = NSLocalizedString("Vinnitska", comment: "Vinnitska")
            case .o3 :
                result = NSLocalizedString("Volynska", comment: "Volynska")
            case .o4 :
                result = NSLocalizedString("Dniprovska", comment: "Dniprovska")
            case .o5 :
                result = NSLocalizedString("Donetska", comment: "Donetska")
            case .o6 :
                result = NSLocalizedString("Zhitomirska", comment: "Zhitomirska")
            case .o7 :
                result = NSLocalizedString("Zakarpatska", comment: "Zakarpatska")
            case .o8 :
                result = NSLocalizedString("Zaporizhska", comment: "Zaporizhska")
            case .o9 :
                result = NSLocalizedString("IvanoFrankivska", comment: "IvanoFrankivska")
            case .o10 :
                result = NSLocalizedString("Kyivska", comment: "Kyivska")
            case .o11 :
                result = NSLocalizedString("Kyiv", comment: "Kyiv")
            case .o12 :
                result = NSLocalizedString("Kirovogradska", comment: "Kirovogradska")
            case .o13 :
                result = NSLocalizedString("Luganska", comment: "Luganska")
            case .o14 :
                result = NSLocalizedString("Lvivska", comment: "Lvivska")
            case .o15 :
                result = NSLocalizedString("Mykolaivska", comment: "Mykolaivska")
            case .o16 :
                result = NSLocalizedString("Odeska", comment: "Odeska")
            case .o17 :
                result = NSLocalizedString("Poltavska", comment: "Poltavska")
            case .o18 :
                result = NSLocalizedString("Rivnenska", comment: "Rivnenska")
            case .o19 :
                result = NSLocalizedString("Sumska", comment: "Sumska")
            case .o20 :
                result = NSLocalizedString("Ternopilska", comment: "Ternopilska")
            case .o21 :
                result = NSLocalizedString("Kharkivska", comment: "Kharkivska")
            case .o22 :
                result = NSLocalizedString("Khersonska", comment: "Khersonska")
            case .o23 :
                result = NSLocalizedString("Khmelnitska", comment: "Khmelnitska")
            case .o24 :
                result = NSLocalizedString("Cherkaska", comment: "Cherkaska")
            case .o25 :
                result = NSLocalizedString("Chernigivska", comment: "Chernigivska")
            case .o26 :
                result = NSLocalizedString("Charnivetska", comment: "Charnivetska")
            case .o27 :
                result = NSLocalizedString("Sevastopol", comment: "Sevastopol")
            case .o28 :
                result = NSLocalizedString("General", comment: "General")
            default :
                result = nil
            }
            
            return result
        }
    }

    enum PlateDiplomaticArea : Int, Printable
    {
        case Unknown = 0,
        Russia = 1,
        USA,
        China,
        UnitedKingdom,
        France,
        Germany,
        Hungary,
        Lithuania,
        Bulgaria,
        Armenia,
        Australia,
        Israel,
        Belarus,
        Poland,
        Estonia,
        Reserve,
        Sweden,
        Mexico,
        Greece,
        India,
        Iran,
        Mongolia,
        Vietnam,
        Austria,
        Egypt,
        Argentina,
        Japan,
        Canada,
        Portugal,
        Chile,
        Italy,
        Spain,
        Slovakia,
        Romania,
        Turkey,
        Norway,
        Algeria,
        Switzerland,
        Niger,
        Vatican,
        Azerbaijan,
        RepublicOfKorea,
        Brazil,
        Denmark,
        Latvia,
        Croatia,
        Cyprus,
        CzechRepublic,
        Finland,
        Seychelles,
        UN,
        CAR,
        Slovenia,
        Belgium,
        Moldova,
        Cuba,
        Philippines,
        SouthAfrica,
        Pakistan,
        Libya,
        IBRD,
        IFC,
        Syria,
        Singapore,
        Ireland,
        Netherlands,
        Kazakhstan,
        Georgia,
        Iraq,
        Kyrgyzstan,
        Tajikistan,
        Uzbekistan,
        Turkmenistan,
        Thailand,
        Tunisia,
        Ghana,
        Serbia,
        Liechtenstein,
        Indonesia,
        Morocco,
        Jordan,
        BackupCode,
        Luxembourg,
        OSCE,
        Uruguay,
        Peru,
        RedCross,
        Afghanistan,
        STCU,
        Yugoslavia,
        Albania,
        Macedonia,
        NATO,
        NATOInformationCenter,
        IMF,
        NewZealand,
        Bangladesh,
        EU,
        EBRD,
        GDIPServiceSet,
        OldOSCE
        
        var description: String
        {
            return String(format: "%03d", self.rawValue)
        }
        
        var region: String?
            {
                var result : String?
                
                switch (self)
                {
                case Russia :
                    result = NSLocalizedString("Russia", comment: "Russia")
                case USA :
                    result = NSLocalizedString("USA", comment: "USA")
                case China :
                    result = NSLocalizedString("China", comment: "China")
                case UnitedKingdom:
                    result = NSLocalizedString("UnitedKingdom", comment: "UnitedKingdom")
                case France:
                    result = NSLocalizedString("France", comment: "France")
                case Germany:
                    result = NSLocalizedString("Germany", comment: "Germany")
                case Hungary:
                    result = NSLocalizedString("Hungary", comment: "Hungary")
                case Lithuania:
                    result = NSLocalizedString("Lithuania", comment: "Lithuania")
                case Bulgaria:
                    result = NSLocalizedString("Bulgaria", comment: "Bulgaria")
                case Armenia:
                    result = NSLocalizedString("Armenia", comment: "Armenia")
                case Australia:
                    result = NSLocalizedString("Australia", comment: "Australia")
                case Israel:
                    result = NSLocalizedString("Israel", comment: "Israel")
                case Belarus:
                    result = NSLocalizedString("Belarus", comment: "Belarus")
                case Poland:
                    result = NSLocalizedString("Poland", comment: "Poland")
                case Estonia:
                    result = NSLocalizedString("Estonia", comment: "Estonia")
                case Reserve:
                    result = NSLocalizedString("Reserve", comment: "Reserve")
                case Sweden:
                    result = NSLocalizedString("Sweden", comment: "Sweden")
                case Mexico:
                    result = NSLocalizedString("Mexico", comment: "Mexico")
                case Greece:
                    result = NSLocalizedString("Greece", comment: "Greece")
                case India:
                    result = NSLocalizedString("India", comment: "India")
                case Iran:
                    result = NSLocalizedString("Iran", comment: "Iran")
                case Mongolia:
                    result = NSLocalizedString("Mongolia", comment: "Mongolia")
                case Vietnam:
                    result = NSLocalizedString("Vietnam", comment: "Vietnam")
                case Austria:
                    result = NSLocalizedString("Austria", comment: "Austria")
                case Egypt:
                    result = NSLocalizedString("Egypt", comment: "Egypt")
                case Argentina:
                    result = NSLocalizedString("Argentina", comment: "Argentina")
                case Japan:
                    result = NSLocalizedString("Japan", comment: "Japan")
                case Canada:
                    result = NSLocalizedString("Canada", comment: "Canada")
                case Portugal:
                    result = NSLocalizedString("Portugal", comment: "Portugal")
                case Chile:
                    result = NSLocalizedString("Chile", comment: "Chile")
                case Italy:
                    result = NSLocalizedString("Italy", comment: "Italy")
                case Spain:
                    result = NSLocalizedString("Spain", comment: "Spain")
                case Slovakia:
                    result = NSLocalizedString("Slovakia", comment: "Slovakia")
                case Romania:
                    result = NSLocalizedString("Romania", comment: "Romania")
                case Turkey:
                    result = NSLocalizedString("Turkey", comment: "Turkey")
                case Norway:
                    result = NSLocalizedString("Norway", comment: "Norway")
                case Algeria:
                    result = NSLocalizedString("Algeria", comment: "Algeria")
                case Switzerland:
                    result = NSLocalizedString("Switzerland", comment: "Switzerland")
                case Niger:
                    result = NSLocalizedString("Niger", comment: "Niger")
                case Vatican:
                    result = NSLocalizedString("Vatican", comment: "Vatican")
                case Azerbaijan:
                    result = NSLocalizedString("Azerbaijan", comment: "Azerbaijan")
                case RepublicOfKorea:
                    result = NSLocalizedString("RepublicOfKorea", comment: "RepublicOfKorea")
                case Brazil:
                    result = NSLocalizedString("Brazil", comment: "Brazil")
                case Denmark:
                    result = NSLocalizedString("Denmark", comment: "Denmark")
                case Latvia:
                    result = NSLocalizedString("Latvia", comment: "Latvia")
                case Croatia:
                    result = NSLocalizedString("Croatia", comment: "Croatia")
                case Cyprus:
                    result = NSLocalizedString("Cyprus", comment: "Cyprus")
                case CzechRepublic:
                    result = NSLocalizedString("CzechRepublic", comment: "CzechRepublic")
                case Finland:
                    result = NSLocalizedString("Finland", comment: "Finland")
                case Seychelles:
                    result = NSLocalizedString("Seychelles", comment: "Seychelles")
                case UN:
                    result = NSLocalizedString("UN", comment: "UN")
                case CAR:
                    result = NSLocalizedString("CAR", comment: "CAR")
                case Slovenia:
                    result = NSLocalizedString("Slovenia", comment: "Slovenia")
                case Belgium:
                    result = NSLocalizedString("Belgium", comment: "Belgium")
                case Moldova:
                    result = NSLocalizedString("Moldova", comment: "Moldova")
                case Cuba:
                    result = NSLocalizedString("Cuba", comment: "Cuba")
                case Philippines:
                    result = NSLocalizedString("Philippines", comment: "Philippines")
                case SouthAfrica:
                    result = NSLocalizedString("SouthAfrica", comment: "SouthAfrica")
                case Pakistan:
                    result = NSLocalizedString("Pakistan", comment: "Pakistan")
                case Libya:
                    result = NSLocalizedString("Libya", comment: "Libya")
                case IBRD:
                    result = NSLocalizedString("IBRD", comment: "IBRD")
                case IFC:
                    result = NSLocalizedString("IFC", comment: "IFC")
                case Syria:
                    result = NSLocalizedString("Syria", comment: "Syria")
                case Singapore:
                    result = NSLocalizedString("Singapore", comment: "Singapore")
                case Ireland:
                    result = NSLocalizedString("Ireland", comment: "Ireland")
                case Netherlands:
                    result = NSLocalizedString("Netherlands", comment: "Netherlands")
                case Kazakhstan:
                    result = NSLocalizedString("Kazakhstan", comment: "Kazakhstan")
                case Georgia:
                    result = NSLocalizedString("Georgia", comment: "Georgia")
                case Iraq:
                    result = NSLocalizedString("Iraq", comment: "Iraq")
                case Kyrgyzstan:
                    result = NSLocalizedString("Kyrgyzstan", comment: "Kyrgyzstan")
                case Tajikistan:
                    result = NSLocalizedString("Tajikistan", comment: "Tajikistan")
                case Uzbekistan:
                    result = NSLocalizedString("Uzbekistan", comment: "Uzbekistan")
                case Turkmenistan:
                    result = NSLocalizedString("Turkmenistan", comment: "Turkmenistan")
                case Thailand:
                    result = NSLocalizedString("Thailand", comment: "Thailand")
                case Tunisia:
                    result = NSLocalizedString("Tunisia", comment: "Tunisia")
                case Ghana:
                    result = NSLocalizedString("Ghana", comment: "Ghana")
                case Serbia:
                    result = NSLocalizedString("Serbia", comment: "Serbia")
                case Liechtenstein:
                    result = NSLocalizedString("Liechtenstein", comment: "Liechtenstein")
                case Indonesia:
                    result = NSLocalizedString("Indonesia", comment: "Indonesia")
                case Morocco:
                    result = NSLocalizedString("Morocco", comment: "Morocco")
                case Jordan:
                    result = NSLocalizedString("Jordan", comment: "Jordan")
                case BackupCode:
                    result = NSLocalizedString("BackupCode", comment: "BackupCode")
                case Luxembourg:
                    result = NSLocalizedString("Luxembourg", comment: "Luxembourg")
                case OSCE:
                    result = NSLocalizedString("OSCE", comment: "OSCE")
                case Uruguay:
                    result = NSLocalizedString("Uruguay", comment: "Uruguay")
                case Peru:
                    result = NSLocalizedString("Peru", comment: "Peru")
                case RedCross:
                    result = NSLocalizedString("RedCross", comment: "RedCross")
                case Afghanistan:
                    result = NSLocalizedString("Afghanistan", comment: "Afghanistan")
                case STCU:
                    result = NSLocalizedString("STCU", comment: "STCU")
                case Yugoslavia:
                    result = NSLocalizedString("Yugoslavia", comment: "Yugoslavia")
                case Albania:
                    result = NSLocalizedString("Albania", comment: "Albania")
                case Macedonia:
                    result = NSLocalizedString("Macedonia", comment: "Macedonia")
                case NATO:
                    result = NSLocalizedString("NATO", comment: "NATO")
                case NATOInformationCenter:
                    result = NSLocalizedString("NATOInformationCenter", comment: "NATOInformationCenter")
                case IMF:
                    result = NSLocalizedString("IMF", comment: "IMF")
                case NewZealand:
                    result = NSLocalizedString("NewZealand", comment: "NewZealand")
                case Bangladesh:
                    result = NSLocalizedString("Bangladesh", comment: "Bangladesh")
                case EU:
                    result = NSLocalizedString("EU", comment: "EU")
                case EBRD:
                    result = NSLocalizedString("EBRD", comment: "EBRD")
                case GDIPServiceSet:
                    result = NSLocalizedString("GDIPServiceSet", comment: "GDIPServiceSet")
                case OldOSCE:
                    result = NSLocalizedString("OBCE", comment: "OBCE")
                default :
                    result = nil
                }
                
                return result
        }
    }
}
