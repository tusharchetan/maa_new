import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:maa/utils/models.dart';


class Api {
  final String baseURL = "https://www.vervedeveloper.com/GETME/";


  //Future<dynamic> signup(String typ_of_hospiltal,String hospital_name,String registration_num,String address,String city,String pincode,String hospital_superitendent_name,String contact_num,String email_id,String isolationbed_covid_90,String blood_bank,String emergency_service_24_avil,String labour_room,String critical_room,String dep_med,String dep_surgery,String dep_gyn_obs,String dep_prediatricts,String dep_pred_surg,String,icu,String ccu,String hdu,String nicu ,String picu,String pathology,String bioChem,String microb,String radiology,String nabh) async {
Future<dynamic> signup(){
    String link =baseURL+"signupHospital";
    var t ={
      "typ_of_hospiltal"  : Data.typ_of_hospiltal,
      "hospital_name" : Data.hospital_name,
      "registration_num" : Data.registration_num,
      "address" : Data.address,
      "city" : Data.city,
      "pincode" : Data.pincode,
      "hospital_superitendent_name" :Data.hospital_superitendent_name,
      "contact_num" : Data.contact_num,
      "email_id" :Data.email_id,
      "isolationbed_covid_90" : Data.isolationbed_covid_90,
      "blood_bank" : Data.blood_bank,
      "emergency_service_24_avil" : Data.emergency_service_24_avil,
      "labour_room" : Data.labour_room,
      "critical_room" : Data.critical_room,
      "dep_med" : Data.dep_med,
      "dep_surgery" : Data.dep_surgery,
      "dep_gyn_obs" : Data.dep_gyn_obs,
      "dep_pediatricts" : Data.dep_prediatricts,
      "dep_pediatricts_surgery" : Data.dep_pred_surg,
      "dep_icu" : Data.icu,
      "dep_ccu" : Data.ccu,
      "dep_hdu" : Data.hdu,
      "dep_nicu" : Data.nicu,
      "dep_picu" : Data.picu,
      "pathological_test" : Data.pathology,
      "biochemical_test" : Data.bioChem,
      "microbiological_test" : Data.microb,
      "radiological_test" : Data.radiology,
      "nabh_accredited" :Data.nabh
    };
print(json.encode(t));
    return http.post(
        link,headers: {
      "Content-Type": "application/json;charset=utf-8"
    }, body: json.encode(t)).then((dynamic val) {
          print(val.body);
      return json.decode(val.body);
    });
  }

  Future<dynamic> signupVendor(){
    String link =baseURL+"signupVendors";
    var t ={
      "suppylier_name" : Vendor.suppylier_name,
      "reg_num" : Vendor.reg_num,
      "address" : Vendor.address,
      "city" : Vendor.city,
      "pin_code" : Vendor.pin_code,
      "owner_name" : Vendor.owner_name,
      "contact_num" : Vendor.contact_num,
      "email_id" : Vendor.email_id,
      "item1_supply" : Vendor.item1_supply,
      "item2_supply" : Vendor.item2_supply,
      "item3_supply" : Vendor.item3_supply,
      "item4_supply" : Vendor.item4_supply,
      "item5_supply" : Vendor.item5_supply,
      "item6_supply" : Vendor.item6_supply,
      "item7_supply" : Vendor.item7_supply,
      "item8_supply" : Vendor.item8_supply,
      "item9_supply" : Vendor.item9_supply,
      "item10_supply" : Vendor.item10_supply,
      "item11_supply" : Vendor.item11_supply
    };
    print(json.encode(t));
    return http.post(
        link,headers: {
      "Content-Type": "application/json;charset=utf-8"
    }, body: json.encode(t)).then((dynamic val) {
      print(val.body);
      return json.decode(val.body);
    });
  }
  Future<dynamic> signupPatient(){
    String link =baseURL+"signupPatient";
    var t ={
        "name" : Patient.name,
        "email"  : Patient.email,
        "mobile" : Patient.mobile,
        "location" : Patient.location,
        "city"  : Patient.city,
        "pincode"  : Patient.pincode,
        "age" : Patient.age,
        "gender" : Patient.gender,
        "height" : Patient.height,
        "weight" : Patient.weight,
        "blood_group" : Patient.blood_group,
        "medical_condition" : Patient.medical_condition,
        "dibeties_status" : Patient.dibeties_status,
        "fever" : Patient.fever,
        "Sore_throat" : Patient.Sore_throat,
        "dry_cought" : Patient.dry_cought ,
        "difficult_in_breathing" : Patient.difficult_in_breathing,
        "runny_nose" : Patient.runny_nose,
        "family_member_of_any_symptoms" : Patient.family_member_of_any_symptoms,
        "are_you_health_care_worker" : Patient.are_you_health_care_worker,
        "international_travel_last_30_days" : Patient.international_travel_last_30_days,
        "emercy_contact_name" : Patient.emercy_contact_name,
        "emercy_contact_num" : Patient.emercy_contact_num,
        "emercy_contact_address" : Patient.emercy_contact_address

    };
    print(json.encode(t));
    return http.post(
        link,headers: {
      "Content-Type": "application/json;charset=utf-8"
    }, body: json.encode(t)).then((dynamic val) {
      print(val.body);
      return json.decode(val.body);
    });
  }

  Future<dynamic> login(String roleId,String mobile,String password){
String link = baseURL+"login";
    var t ={

        "mobile"  :  mobile,
        "userrole" : roleId,
        "pass" :  password
    };
    print(json.encode(t));
    return http.post(
        link,headers: {
      "Content-Type": "application/json;charset=utf-8"
    }, body: json.encode(t)).then((dynamic val) {
      print(val.body);
      return json.decode(val.body);
    });
  }

  Future<dynamic> getPatient(String mobileNumber) async
  {

  String link=baseURL+"SearchPatientByCn/"+mobileNumber;
  print(link);
  http.Response response = await http.get(link);
  return json.decode(response.body);
  }
  Future<dynamic> getHospital(String mobileNumber) async
  {
    String link=baseURL+"SearchHospitalByCn/"+mobileNumber;
    print(link);
    http.Response response = await http.get(link);
     return json.decode(response.body);
  }
  Future<dynamic> getVendor(String mobileNumber) async
  {
    String link=baseURL+"SearchVendorByCn/"+mobileNumber;

    print(link);

    http.Response response = await http.get(link);
    return json.decode(response.body);
  }
  Future<List<dynamic>> getMessage() async
  {
    String link=baseURL+"newsByRole/1";
    print(link);
    http.Response response = await http.get(link);
    var data =json.decode(response.body);
    print(data);
    return data["NewsData"];
  }

}