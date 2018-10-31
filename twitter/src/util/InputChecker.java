package util;

public class InputChecker {

	public String doLoginCheck(String loginId,String password){
		String result;
		if((loginId.length()>0 && loginId.length()<16)&&(password.length()>0 && password.length()<16)){
			result = null;
		}else{
			result = "文字数制限エラー：ログインIdとパスワードは0字以上16字以下で記入してください";
		}
		return result;
	}

	public String doCreateUserCheck(String loginId,String password,String userName){
		String result;
		if((loginId.length()>0 && loginId.length()<16)&&(password.length()>0 && password.length()<16)&&(userName.length()>0 && userName.length()<16)){
			result = null;
		}else{
			result = "文字数制限エラー：ログインId、パスワード、ユーザー名は0字以上16字以下で記入してください";
		}
		return result;
	}

	public String doTweetCheck(String title,String text){

		String titleErrorMassage="";
		String textErrorMassage="";
		String ErrorMassage = "";
		System.out.println(title.length());
		System.out.println(text.length());

		//エラーチェック
		if(title.length()==0 && text.length()==0){
			titleErrorMassage += "タイトルと本文が記入されていません";
		}else if(title.length()<1){
			titleErrorMassage += "タイトルが記入されていません";
		}else if(text.length() <1){
			titleErrorMassage += "本文が記入されていません";
		}

		if(title.length()>16 && text.length() >140){
			textErrorMassage += "タイトルを16文字以内、本文を140字以内で書き込んでください";
		}else if(title.length()>16){
			textErrorMassage += "タイトルを16文字以内で書き込んでください";
		}else if(text.length() >140){
			textErrorMassage += "本文は140字以内で書き込んでください";
		}
		ErrorMassage += titleErrorMassage +textErrorMassage ;

		return ErrorMassage;
	}
}
