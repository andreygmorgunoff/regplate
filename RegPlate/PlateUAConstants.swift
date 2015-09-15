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
        case Tractor_04 = "8..04"
        
        // 9
        case Army_95 = "9..95"
        
        // 9.1
        case Army_Volonter_14 = "9.1.14"
        
        // 10
        case Army_Tractor_95 = "10..95"
        
        // 11
        case Police_04 = "11..04"
        case Police_15 = "11..15"
        
        // 12.1
        case Specific_10 = "12.1.10"
        
        // 12.2
        case Specific_Temporary_10 = "12.2.10"
        
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
}
