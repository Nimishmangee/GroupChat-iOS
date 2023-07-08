
import UIKit
import FirebaseCore
import FirebaseFirestore
import FirebaseAuth

class RegisterViewController: UIViewController {
    
    let db=Firestore.firestore();

    @IBOutlet weak var emailTextfield: UITextField!
    @IBOutlet weak var passwordTextfield: UITextField!
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBAction func registerPressed(_ sender: UIButton) {
        
        if let email=emailTextfield.text, let password=passwordTextfield.text, let name=nameTextField.text{
            Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
                if let e=error{
                    print(e);
                }else{
                    
                    self.db.collection(K.FStore.userCollectionName).addDocument(data: [
                        K.FStore.senderField:email,
                        K.FStore.nameField: name
                    ]) { error in
                        if let e=error{
                            print("There was an issue, \(e)")
                        }else{
                            print("User created and saved");
                        }
                    }
                    
                    //Navigate to Chat
                    self.performSegue(withIdentifier: K.registerSegue, sender: self)
                }
            }
        }
    }
}
