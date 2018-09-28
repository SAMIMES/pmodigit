package entity;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

public class registrationForm {
	
	    public static final String  CHAMP_EMAIL = "email";
	    public static final String  CHAMP_PASS  = "password";
	    public static final String  CHAMP_CONF  = "passwordconfirm";
	    public static final String  CHAMP_USERNAME   = "username";
	    public static final String  CHAMP_FULLNAME   = "fullname";
	    
	    
	    private String              resultat;
	    private Map<String, String> erreurs     = new HashMap<String, String>();
	    
	    public User registerUser( HttpServletRequest request ) {
	        String email = getValeurChamp( request, CHAMP_EMAIL );
	        String password = getValeurChamp( request, CHAMP_PASS );
	        String confirmation = getValeurChamp( request, CHAMP_CONF );
	        String username = getValeurChamp( request, CHAMP_USERNAME );
	        String fullname = getValeurChamp( request, CHAMP_FULLNAME );

	        User User = new User();

	        try {
	            validationEmail( email );
	        } catch ( Exception e ) {
	            setErreur( CHAMP_EMAIL, e.getMessage() );
	        }
	        User.setEmail( email );

	        try {
	            validationMotsDePasse( password, confirmation );
	        } catch ( Exception e ) {
	            setErreur( CHAMP_PASS, e.getMessage() );
	            setErreur( CHAMP_CONF, null );
	        }
	        User.setPassword( password );

	        try {
	            validationUsername( username );
	        } catch ( Exception e ) {
	            setErreur( CHAMP_USERNAME, e.getMessage() );
	        }
	        User.setUsername( username );
	        
	        try {
	            validationFullname( fullname );
	        } catch ( Exception e ) {
	            setErreur( CHAMP_FULLNAME, e.getMessage() );
	        }
	        User.setFullname(fullname);

	        if ( erreurs.isEmpty() ) {
	            resultat = "congraluations, you have now successfully created an account.";
	        } else {
	            resultat = "registration failed.";
	        }

	        return User;
	    }
	    
	    private void validationEmail( String email ) throws Exception {
	        if ( email != null ) {
	            if ( !email.matches( "([^.@]+)(\\.[^.@]+)*@([^.@]+\\.)+([^.@]+)" ) ) {
	                throw new Exception( "Merci de saisir une adresse mail valide." );
	            }
	        } else {
	            throw new Exception( "Merci de saisir une adresse mail." );
	        }
	    }
	    
	    private void validationMotsDePasse( String password, String confirmation ) throws Exception {
	        if ( password != null && confirmation != null ) {
	            if ( !password.equals( confirmation ) ) {
	                throw new Exception( "passwords entered are different, please enter them again." );
	            } else if ( password.length() < 3 ) {
	                throw new Exception( "passwords must contain at least 3 characters." );
	            }
	        } else {
	            throw new Exception( "Please enter and confirm your password." );
	        }
	    }
	    
	    private void validationUsername( String username ) throws Exception {
	        if ( username != null && username.length() < 4 ) {
	            throw new Exception( "The username must contain at least 4 characters." );
	        }
	    }
	    
	    private void validationFullname( String fullname ) throws Exception {
	        if ( fullname != null && fullname.length() < 6 ) {
	            throw new Exception( "The fullname must contain at least 6 characters." );
	        }
	    }


	    /*
	     * Ajoute un message correspondant au champ spécifié à la map des erreurs.
	     */
	    private void setErreur( String champ, String message ) {
	        erreurs.put( champ, message );
	    }

	    /*
	     * Méthode utilitaire qui retourne null si un champ est vide, et son contenu
	     * sinon.
	     */
	    private static String getValeurChamp( HttpServletRequest request, String fullnameChamp ) {
	        String valeur = request.getParameter( fullnameChamp );
	        if ( valeur == null || valeur.trim().length() == 0 ) {
	            return null;
	        } else {
	            return valeur.trim();
	        }
	    }

	    public String getResultat() {
	        return resultat;
	    }

	    public Map<String, String> getErreurs() {
	        return erreurs;
	    }
}
