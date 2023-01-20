unit JsonConverter;

interface

uses
  Classes, typinfo, uJSON;

type TJSONConverter = class
private
  class procedure AddPropToJson(json: TJSONObject; obj: TObject; propList: TPropList; I: Integer);
public
  class function ObjToJson(const obj: TObject): TJSONObject;
  class function ObjToJsonString(const obj: TObject): string;
end;

implementation

{ TJSONConverter }

class function TJSONConverter.ObjToJson(const obj: TObject): TJSONObject;
var
  propList: TPropList;
  num: Integer;
  I: Integer;
  json: TJSONObject;
begin
  json := TJSONObject.create();
  try
    num := GetPropList(PTypeInfo(obj.ClassInfo), tkProperties, @propList);
    for I := 0 to Pred(num) do
    begin
      AddPropToJson(json, obj, propList, I);
    end;

    Result := json
  finally
    json := nil;
  end;
end;

class function TJSONConverter.ObjToJsonString(const obj: TObject): string;
begin
  Result := ObjToJson(obj).toString;
end;

class procedure TJSONConverter.AddPropToJson(json: TJSONObject; obj: TObject; propList: TPropList; I: Integer);
var
  propName: string;
  propObj: TObject;
begin
  propName := string(propList[i].Name);
  //Convert name to camelCase or snake_case as needed
  case propList[i].PropType^.Kind of
    tkInteger, tkEnumeration, tkInt64:
        json.put(propName, GetInt64Prop(obj, propList[i]));

    tkFloat:
        json.put(propName, GetFloatProp(obj, propList[i]));

    tkChar, tkString, tkWChar, tkLString, tkWString, tkUString:
        json.put(propName, GetStrProp(obj, propList[i]));

    tkClass: //here you need to decide how to handle TCollections and JsonArrays
    begin
      propObj := GetObjectProp(obj, propList[i]);
      if Assigned(propObj) then
        json.put(propName, ObjToJson(propObj))
    end;
  end;
  // Still need to thread this cases
  { tkSet, tkClass, tkMethod,
        tkVariant, tkArray, tkRecord, tkInterface,  tkDynArray, ,
        tkClassRef, tkPointer, tkProcedure, tkMRecord}
end;

end.
