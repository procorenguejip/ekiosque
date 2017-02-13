/**
 * 
 */
package com.ekiosquemanager.place.admin;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * @author jnjikonga
 *
 */

@Controller
public class AdminController {
	
	
	@RequestMapping(value={"/admin/login.html","/admin/","/admin"}, method=RequestMethod.GET)
	public String displayLogin(Model model) throws Exception {
		return "login";
	}

}
