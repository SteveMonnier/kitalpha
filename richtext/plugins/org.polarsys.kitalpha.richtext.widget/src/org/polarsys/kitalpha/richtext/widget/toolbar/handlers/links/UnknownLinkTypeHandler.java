/*******************************************************************************
 * Copyright (c) 2017 Thales Global Services S.A.S.
 *  All rights reserved. This program and the accompanying materials
 *  are made available under the terms of the Eclipse Public License v1.0
 *  which accompanies this distribution, and is available at
 *  http://www.eclipse.org/legal/epl-v10.html
 * 
 * Contributors:
 *  Thales Global Services S.A.S - initial API and implementation
 ******************************************************************************/
package org.polarsys.kitalpha.richtext.widget.toolbar.handlers.links;

import org.polarsys.kitalpha.richtext.widget.messages.Messages;
import org.polarsys.kitalpha.richtext.widget.toolbar.handlers.utils.Tuple;

/**
 * 
 * @author Faycal Abka
 *
 */
public class UnknownLinkTypeHandler extends AbstractLinkTypeHandler {

	@Override
	public String resolveType(String link) {
		return LinkManager.UNKNOWN;
	}

	@Override
	public String encode(String url, String displayText) {
		throw new UnsupportedOperationException(Messages.bind(Messages.RichTextWidget_Exception_Error_Unknown_encode,url));
	}

	@Override
	public String decode(String link, String basePath) {
		throw new UnsupportedOperationException(Messages.bind(Messages.RichTextWidget_Exception_Error_Unknown_decode,link));
	}
	
	@Override
	public void openLink(String link) {
		throw new UnsupportedOperationException(Messages.bind(Messages.RichTextWidget_Exception_Error_Unknown_openlink,link));
	}

	@Override
	public Tuple<String, String> getPath(Object object) {
		throw new UnsupportedOperationException(Messages.RichTextWidget_Exception_Error_Unknown_getPath);
	}
}